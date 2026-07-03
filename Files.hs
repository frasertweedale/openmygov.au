module Files where

import Hakyll

data File = File
  { fileDate :: String
  , fileName :: Maybe FilePath
  , fileDesc :: String
  }

fileContext :: Context File
fileContext =
  field "filename"
    (maybe (noResult "unavailable") (pure . toUrl . ("files/" <>)) . fileName . itemBody)
  <> field "date" (pure . fileDate . itemBody)
  <> field "desc" (pure . fileDesc . itemBody)

fileListART :: [File]
fileListART =
  [ File "2026-06-22" Nothing
      "Services Australia's reply submissions in relation to \
      \confidentiality order application"
  , File "2026-06-17" Nothing
      "Re-filing of my submissions of 2026-06-10 with minor corrections"
  , File "2026-06-10" Nothing
      "My submissions opposing the confidentiality order application \
      \(re-filed on 2026-06-17 with minor corrections"
  , File "2026-05-29" Nothing
      "ART listing notice for resumed confidentiality order hearing, \
      \Thursday 9 July, 09:00"
  , File "2026-05-28" Nothing
      "Services Australia's submissions in support of their confidentiality \
      \order application"
  , File "2026-05-26" Nothing
      "Services Australia's Statement of Facts, Issues and Contentions (SFIC)"
  , File "2026-05-25" Nothing
      "Services Australia filed some evidence"
  , File "2026-04-21" Nothing
      "ART lists substantive hearing for 2–4 September"
  , File "2026-04-14" (Just "2026-04-14-ART-updated-listing-confidentiality-order-hearing.pdf")
      "ART moves confidentiality order hearing to Friday 2026-05-29, 09:00"
  , File "2026-04-13" (Just "2026-04-13-ART-directions-updated-timeline.pdf")
      "ART varies the timeline: SA's SOFIC and evidence now due 25 May, \
      \mine due 17 July"
  , File "2026-04-08" (Just "2026-04-08-ART-updated-listing-confidentiality-order-hearing.pdf")
      "ART moves confidentiality order hearing to Friday 2026-04-17"
  , File "2026-04-01" (Just "2026-04-01-confidentiality-order-hearing-listing.pdf")
      "Listing notice—interlocutory hearing, Monday 2026-04-13—contested \
      \confidentiality order application."
  , File "2026-03-04" (Just "2026-03-04-case-conference-request.pdf")
      "Letter to AGS (solicitor for Respondent) proposing case conference \
      \to try to narrow the issues for determination by the Tribunal \
      \(Respondent declined)."
  , File "2026-03-03" (Just "2026-03-03-ART-consent-order-doc-scope.pdf")
      "Consent order limiting scope of review to the Android source code."
  , File "2026-02-24" (Just "2026-02-24-scope-reduction-agreement.pdf")
      "Agreement and request for consent order to limit scope of review \
      \to the Android source code."
  , File "2026-02-04" (Just "2026-02-04-ART-registry-transfer-confirmation.pdf")
      "Confirmation of transfer to the ART Melbourne registry \
      \pursuant to my request (unopposed by respondent)"
  , File "2026-01-23" (Just "2026-01-23-ART-ISJA-decision-reasons.pdf")
      "Decision granting respondent's request for Tribunal's \
      \power to be exercised in the Intelligence and Security \
      \Jurisdictional Area (ISJA), and reasons"
  , File "2026-01-23" (Just "2026-01-23-ART-ISJA-decision.pdf")
      "Letter advising ISJA decision"
  , File "2026-01-15" (Just "2026-01-15-FT-ISJA-application-reply.pdf")
      "My submissions opposing the ISJA application"
  , File "2025-12-23" Nothing -- "2025-12-23-SA-ISJA-application.pdf"
      "Respondent's Intelligence and Security Jurisdictional Area \
      \application"
  , File "2025-12-17" (Just "2025-12-17-ART-directions.pdf")
      "Directions made at 17 December directions hearing, setting \
      \out the timeline for the proceeding"
  , File "2025-12-10" Nothing -- "2025-12-10-ft-to-sa-letter-draft.pdf"
      "Letter to Ms Kendall Mutton of King & Wood Mallesons (then \
      \acting for Services Australia) stating intention to oppose the \
      \proposed confidentiality order sought by respondent over parts of the \
      \T-documents. The respondent changed their representation to the \
      \Australian Government Solicitor soon after receiving this."
  , File "2025-10-29" Nothing -- "2025-10-29-T-documents-redacted.pdf"
      "T-documents - the initial bundle of documents given to ART by \
      \respondent outlining the full history of the matter - with \
      \some redactions in line with proposed confidentiality order."
  , File "2025-10-29" Nothing -- "2025-10-29-sa-proposed-confidentiality-order.pdf"
      "Proposed confidentiality order sought by respondent over part \
      \of the T-documents, covering some personal information of \
      \employees (not opposed) and other material (opposed)"
  , File "2025-10-01" (Just "2025-10-01-ART-directions-listing.pdf")
      "Notice of directions hearing listing"
  , File "2025-10-01" (Just "2025-10-01-ART-application-received.pdf")
      "ART application acknowledgement"
  , File "2025-10-01" (Just "2025-10-01-ART-receipt.pdf")
      "Application fee payment receipt"
  , File "2025-09-15" (Just "2025-09-15-ART-application-fee-due.pdf")
      "Letter from ART advising payment of the $1148 application \
      \fee is due"
  ]

fileListOAIC :: [File]
fileListOAIC =
  [ File "2025-06-06" (Just "2025-06-06_OAIC - MR22 00021 - 54W(b) Decision not to continue to undertake an Information Commissioner review.pdf")
      "Notice of s 54W(b) decision"
  , File "2025-05-20" (Just "2025-05-20_OAIC - MR22 00021 - 54W(b) Recommendation not to continue to undertake an Information Commissioner review.pdf")
      "Notice of intention to recommend that an IC review not to be \
      \undertaken under s 54W(b) of the FOI Act"
  , File "2022-01-10" (Just "2022-01-10-IC-review-application.pdf")
      "Information Commissioner review application letter"
  ]

fileListIR :: [File]
fileListIR =
  [ File "2021-11-11" (Just "2021-11-11_LEX 64833 Decision Internal Review Decision Letter.pdf")
      "Internal Review decision affirming the original decision"
  , File "2021-10-12" (Just "2021-10-12_LEX_63435_IR_application.pdf")
      "Internal Review application letter"
  ]

fileListOrig :: [File]
fileListOrig =
  [ File "2021-09-13" (Just "2021-09-13_LEX 63435 Decision Decision letter final.pdf")
      "Access refusal decision letter - relying on s 47E(d)"
  ]
