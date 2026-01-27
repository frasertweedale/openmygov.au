{-# LANGUAGE OverloadedStrings #-}

import Text.Pandoc.Definition
  ( Pandoc(..), Block(Header, Plain), Inline(..) )
import Text.Pandoc.Walk (query, walk)
import Hakyll

import Files


siteTitle :: String
siteTitle = "END SECURITY BY OBSCURITY"


main :: IO ()
main = hakyll $ do

  match "CNAME" $ do  -- GitHub Pages boilerplate
    route idRoute
    compile copyFileCompiler

  {-
  match "images/**" $ do
    route idRoute
    compile copyFileCompiler
  -}

  match "css/*" $ do
    route idRoute
    compile compressCssCompiler

  match "js/*" $ do
    route idRoute
    compile copyFileCompiler

  match "intro.md" $ do
    route $ constRoute "index.html"
    compile $ do
      posts <- take 3 <$> loadRecentPosts
      let homeContext =
            listField "posts" context (pure posts)
            <> constField "title" "Home"
            <> context
      pandocCompiler
        >>= loadAndApplyTemplate "templates/post.html" homeContext
        >>= loadAndApplyTemplate "templates/landing.html" homeContext
        >>= loadAndApplyTemplate "templates/default.html" homeContext
        >>= relativizeUrls

  match "posts/*" $ version "recent" $ do
    compile $
      pandocCompilerWithTransformM
        defaultHakyllReaderOptions
        defaultHakyllWriterOptions
        (\pandoc -> do
          let
            h1 = maybe [Str "no title"] id . firstHeader $ pandoc
            render f = fmap writePandoc . makeItem . Pandoc mempty . pure . Plain . f
          _ <- render removeFormatting h1 >>= saveSnapshot "title"
          _ <- render id h1 >>= saveSnapshot "fancyTitle"
          pure $ addSectionLinks pandoc
        )

  match "posts/*" $ do
    route $ setExtension "html"
    compile $ do
      ident <- getUnderlying
      loadBody (setVersion (Just "recent") ident)
        >>= makeItem
        >>= loadAndApplyTemplate "templates/post.html" context
        >>= loadAndApplyTemplate "templates/default.html" context
        >>= relativizeUrls

  create ["archive.html"] $ do
    route idRoute
    compile $ do
      posts <- recentFirst =<< loadAll ("posts/*" .&&. hasNoVersion)
      _ <- load "Files.hs" :: Compiler (Item ()) -- recompile on change

      let
        archiveContext =
          listField "posts" context (pure posts)
          <> listField "filesART" fileContext (traverse makeItem fileListART)
          <> listField "filesOAIC" fileContext (traverse makeItem fileListOAIC)
          <> listField "filesIR" fileContext (traverse makeItem fileListIR)
          <> listField "filesOrig" fileContext (traverse makeItem fileListOrig)
          <> constField "title" "Archive"
          <> context

      makeItem ""
        >>= loadAndApplyTemplate "templates/archive.html" archiveContext
        >>= loadAndApplyTemplate "templates/default.html" archiveContext
        >>= relativizeUrls

  match "Files.hs" $ do
    -- make a dependency on Files.hs to trigger reloads of
    -- dependent pages
    compile $ makeItem ()

  match "files/*" $ do
    route idRoute
    compile copyFileCompiler

  match "templates/*" $ compile templateCompiler


loadRecentPosts :: Compiler [Item String]
loadRecentPosts = recentFirst =<< loadAll ("posts/*" .&&. hasVersion "recent")

context :: Context String
context =
  dateField "date" "%Y-%m-%d"
  <> snapshotField "title" "title"
  <> snapshotField "fancyTitle" "fancyTitle"
  <> constField "siteTitle" siteTitle
  <> urlFieldNoVersion "url0"
  <> defaultContext


-- | Get field content from snapshot (at item version "recent")
snapshotField
  :: String           -- ^ Key to use
  -> Snapshot         -- ^ Snapshot to load
  -> Context String   -- ^ Resulting context
snapshotField key snap = field key $ \item ->
  loadSnapshotBody (setVersion (Just "recent") (itemIdentifier item)) snap


-- | Set a url field that looks for url of non-versioned identifier
urlFieldNoVersion :: String -> Context a
urlFieldNoVersion key = field key $ \i -> do
  let ident = setVersion Nothing (itemIdentifier i)
      empty' = fail $ "No route url found for item " <> show ident
  fmap (maybe empty' toUrl) $ getRoute ident


firstHeader :: Pandoc -> Maybe [Inline]
firstHeader (Pandoc _ xs) = go xs
  where
  go [] = Nothing
  go (Header _ _ ys : _) = Just ys
  go (_ : t) = go t


-- yield "plain" terminal inline content; discard formatting
removeFormatting :: [Inline] -> [Inline]
removeFormatting = query f
  where
  f inl = case inl of
    Str s -> [Str s]
    Code _ s -> [Str s]
    Space -> [Space]
    SoftBreak -> [Space]
    LineBreak -> [LineBreak]
    Math _ s -> [Str s]
    RawInline _ s -> [Str s]
    _ -> []


addSectionLinks :: Pandoc -> Pandoc
addSectionLinks = walk f where
  f (Header n attr@(idAttr, _, _) inlines) | n > 1 =
      let link = Link ("", ["section"], []) [Str "§"] ("#" <> idAttr, "")
      in Header n attr (inlines <> [Space, link])
  f x = x
