# Tribunal grants confidentiality order over critical evidence

More than a month after the hearing, the Tribunal has finally
decided on Services Australia's confidentiality orders application.
It was the expected result, and not a good one for us.  The
Respondent's arguments are strange, but the Tribunal was
nevertheless pursuaded to deprive me of knowledge about the case I
have to meet.  I break it down in this post.

You can [read the decision][decision]{target=_blank}, which the
Tribunal delivered on Monday 3 August, 2026.

[decision]: ../files/2026-08-03-ART-confidentiality-order-decision.pdf

## What did Services Australia want to hide?

Services Australia have filed an "open affidavit" and a
corresponding "closed affidavit" of Garrett McDonald, who is the
agency's General Manager, Cyber Security.  Substantial parts of the
Respondent's case are detailed in the closed affidavit.

The open affidavit makes various general claims about how or why the
disclosure of the *myGov Code Generator* app source code would harm
national security or burden the agency.  It then points to the
closed affidavit for details relied upon to substantiate those
claims.  That makes the closed affidavit critical evidence that is
essential to their case.


## Is it "national security information"?

Probably?  The Tribunal found that it is.  The relevant definition
for the purposes of ART proceedings is from the *National Security
Information (Criminal and Civil Proceedings) Act 2004*:

> **national security** information means information:
>
>  \(a) that relates to national security; or \
>  \(b) the disclosure of which may affect national security.

Clause (a) is exceptionally broad.  It could capture things like
general descriptions of offensive techniques threat actors might use
to try to attack Australian digital infrastructure.  That definitely
"relates to" national security, so it could meet the definition.
But it would be drawing a long bow to claim that such information
could "affect" national security.

## …which is exactly what they argued

Services Australia argued that revealing the "how" would cause *"the
very harm"* that disclosing the source code itself would.  Where to
begin with this?

First, the harm claimed has not been established.  That is indeed
what this whole case is about.  The Tribunal's decision acknowledges
this at \[6\]:

> Whether the disclosure of the source code has the asserted effect
> will be one of the issues for the Tribunal to determine at the
> hearing of the substantive review application which is listed on 2
> to 4 September 2026.

Here is a paradox.  To decide the confidentiality orders fairly
requires a resolution on the substantive issue.  But how can the
substantive matter be decided fairly if a party does not know the
case it has to meet because critical evidence has been kept secret?
This paradox is not the fault of the Tribunal, and I don't see a way
to resolve it.

The more foundational problem, however, is the "very harm" claim.
As someone working in cybersecurity, it makes little sense to me.
But it needs some unpacking.

If I tell you the route to Top Secret Facility X, you could then
drive there (assuming you have a vehicle).  But if I tell you that
telling you the route to Top Secret Facility X could enable you to
drive there, that does not help you one bit!  It is saying no more
than: *"People with cars can drive places, if they know where
they're going."*

Services Australia's argument is similar.  Even if you accept the
premise (I do not) that disclosure of source code would lead to
cyber attacks, explaining in general terms *how* a threat actor
might attempt to do that, without also disclosing the source code,
does not beget that outcome.

It is possible the closed affidavit names threat actors, makes
attributions, or contains details of actual vulnerabilities that are
not resolved, or cyber attacks that have happened or are currently
happening.  To the extent that the closed affidavit contains
information of this character, confidentiality orders are
appropriate.  Based on what we do know about the closed affidavit
(from the open affidavit), that extent is likely limited or nil.

## The Tribunal's decision

Despite acknowledging the paradox, the Tribunal agreed with the
Services Australia's "very harm" argument:

> In my view it is appropriate for the national security information
> in the closed affidavit to be restricted from publication pursuant
> to s 70(2) of the ART Act.  Disclosure of the national security
> information in the closed affidavit would result in the very harm
> that is asserted by the Respondent in the substantive application
> for review.

The *"very harm"*…which is merely asserted; an issue yet to be
determined.  OK then.

Whether this reasoning is sound or not probably doesn't matter much
to the final outcome.  The Tribunal found that the closed affidavit
contains national security information ([3]).  Given the overbroad
definition of "national security information", that is probably
correct.

For proceedings in the *Intelligence and Security Jurisdictional
Area* (as mine is) the Tribunal must have regard to the "necessity
of avoiding the disclosure of national security information" (ART
Act s 157(2)(a)) when considering whether to make orders under
section 70 to restrict disclosure of information.  It was open to
them to make the order.  It may have been closed to them *not* to
make it, although some attention to our submissions and evidence
that particular information in the closed affidavit is likely to
already be in the public domain would have been appreciated.


## A silver lining

Although the decision didn't go the way we hoped, Jason eked out a
small but important win for open justice.  Counsel for Services
Australia argued that a confidentiality order should be made over
the entire closed affidavit, because the only information that would
be left was stuff already in the open affidavit.  Jason argued that
the "strict necessity" test means that even if a *redacted* closed
affidavit would be of no utility, a blanket order could not be made;
any parts of the affidavit which do not contain national security
information must be disclosed.

The Tribunal was with us on that.  As a result, we now have 15 of
57+ paragraphs of the closed affidavit.  Most of it is a rehash of
stuff in the open affidavit.  Some of it is new and interesting.
There are huge amounts redacted, but what we got is not of *no
utility*, contrary to the Respondent's assertions.


## What's next?

The skirmish over confidentiality orders is done.  The outcome puts
me at a disadvantage.  How can I fight the main battle when I am not
even permitted to know the details of the arguments and evidence the
Respondent relies upon?

I will fight secrecy with transparency.  I will fight vauge
arguments and appeals to "national security" with clear evidence and
cogent reasoning.  With the experience of my solicitor Jason Bosland
and the expert evidence of Vanessa Teague and Peter Serwylo, I am
ready to face Services Australia at the hearing next month and do my
utmost to pursuade the Tribunal to END SECURITY BY OBSCURITY.
