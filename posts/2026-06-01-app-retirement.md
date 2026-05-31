# On the retirement of the *myGov Code Generator* app

In early March 2026, Services Australia retired the *myGov Code
Generator app*.  The source code of which is the subject of my FOI
proceeding at the Administrative Review Tribunal.  Since the
retirement, which was concurrent with the arrival of generic
authenticator app support on myGov, I sought further information
about these developments throught the FOI process.  In this post I
share my thoughts about the app, its retirement, and how that FOI
request is going.

## Why did *myGov Code Generator* even exist?

The fact that the *myGov Code Generator* app ever existed in the
first place is a sad joke.  Upon its debut 7 or so years ago, the
current best practice for 2FA user experience was to use a QR code
or `otpauth://` URI to convey the TOTP seed secret to a generic
authenticator app (Google Authenticator, FreeOTP, etc).  Show the
user a QR code, scan it with the app, validate the token once, and
you're done.  For TOTP this is still the proper way to do it, though
passkeys are a good option today (and myGov supports them!)

Why did Services Australia ever think it was necessary or
appropriate to roll their own authenticator app with a bespoke
enrolment workflow?  I have heard a theory on this—unconfirmed, but
very cringe if true.  The actual code generation algorithm is TOTP
with unremarkable parameters; it's only the enrollment workflow that
is a bit *special*.

## This is Good Actually

In March 2026 myGov rolled out support for generic TOTP
authenticator apps, using QR code enrolment.  This is very nice.
They are finally doing it the way they should have done it from the
very beginning.  And they retired the *myGov Code Generator* app at
the same time, because there is no need for it any more.  Goodbye.
You will not be missed.

One less government app (one less app overall!) is a Good Thing.
These days every bank, retail chain, service business and government
agency wants you to install their proprietary app.  I don't use them
at all.  So it is nice to see an Agency turn away from custom
systems that lack transparency, toward open standards and industry
best practice.  Credit where credit is due.

## Why now?

I am not so conceited as to think that my FOI matter somehow nudged
Services Australia to change direction or re-examine the myGov
authentication landscape.  But the timing is *interesting*.  Because
this is a significant change and the development of the myGov system
is a matter of public interest, it would be great to find out more
about how this improvement came to be, what were the timelines and
costs, and so on.

On 9 March 2026 I [made a FOI request][req]{target=_blank} to find
out more.  The scope of this request was:

[req]: https://www.righttoknow.org.au/request/mygov_authenticators_and_code_ge

> Any business case, policy document, project brief or proposal,
> schedule or roadmap, technical requirements, ticket or issue in a
> ticket/issue/bug tracking system, or internal or external
> correspondence relating to:
> 
> a) The adoption of support for third party authenticators (TOTP)
> for myGov login, which went live in early March 2026 and is
> described at [Use an authenticator][]{target=_blank}; or
> 
> b) The retirement of the myGov Code Generator app

[Use an authenticator]: https://my.gov.au/en/about/help/mygov-website/sign-in-to-mygov/use-an-authenticator

On 1 April 2026 the Agency requested a 14 day extension of time, to
which I agreed.

On 22 April 2026 the Agency made an *access refusal decision*, and
boy, was it a doozy.  The [full decision letter]{target=_blank} is
hosted at Right To Know.  Here's the critical part:

[full decision letter]: https://www.righttoknow.org.au/request/14443/response/46730/attach/4/LEX%2090521%20Decision%20Letter.pdf

> ### Section 25 of the FOI Act – neither confirm nor deny
> 
> Section 25 of the FOI Act allows an agency to refuse to confirm or
> deny the existence of a document if acknowledging it existed (or
> did not) would make the information exempt.
> 
> I am satisfied that, if documents of the kind you have requested
> did exist, they would be exempt under section 37(2)(a) of the FOI
> Act.
>
> ### Section 37(2)(a) of the FOI Act – prejudice to a fair hearing
>
> Section 37(2)(a) provides that a document is exempt if its
> disclosure would, or could reasonably be expected to, prejudice
> the fair trial of a person or the impartial adjudication of a
> particular case.
>
> I understand there are current proceedings before the
> Administrative Review Tribunal that relate to the subject matter
> of your request.
>
> If such documents existed, their release under the FOI Act would
> occur outside of the Tribunal’s usual processes for sharing and
> testing evidence. This could affect how information is considered
> in these proceedings, including by giving one party access to
> material outside those processes.
> 
> …
>
> In this case, I am satisfied there is a clear link between
> disclosure and the potential impact on the proceedings. If such
> documents existed, their release outside the Tribunal’s processes
> could affect the fairness of the proceedings.
>
> …
> 
> Given the nature of the Tribunal proceedings and the connection
> between those proceedings and the documents you have requested, I
> am satisfied that, if such documents existed, their disclosure
> would, or could reasonably be expected to, affect the fairness of
> the proceedings.

There's a lot to unpack here.  The section 25 *neither confirm nor
deny* response is extraordinary.  First, there is no question that
the information does exist.  It is inconceivable that the
agency would launch a significant new feature or retire the app
without planning, roadmaps, tickets, discussion, and so on.

Second, the provisions of section 25 are not even available in
relation to information that would be exempt under s 37(2)(a).  As a
matter of statutory construction, the agency must acknowledge the
existence of the documents sought and properly evaluate them for
release.

Finally, the claim that such information would be exempt under s
37(2)(a)—*would, or could reasonably be expected to prejudice the
fair trial of a person or the impartial adjudication of a particular
case*—is a long bow to draw.  It is a safe bet that the unnamed
Tribunal proceeding referred to in the Reasons is mine.  The idea
that the release of this information would somehow prejudice the
proceedings lacks justification.  Paragraph 5.123 of the FOI
Guidelines states (emphasis mine):

> For example, the AAT refused to accept a claim under this section
> where, on the facts, disclosure of the documents to the FOI
> applicant could have actually facilitated the impartial
> adjudication of the matter.  The fact that documents are relevant
> to a case is not of itself sufficient to justify the exemption.
> Some causal link between the disclosure and the prejudice **must be
> demonstrated**.

The decision letter even quotes this—and completely fails to abide
it.  Since the *"neither confirm nor deny"* response is denied by
statute, the new decision maker for the Internal Review will have to
wrestle with actual substance of the information and *how* it would
prejudice the Tribunal proceeding—or not.  Or whether it could
actually *assist*, as the AAT found in the case mentioned above, *Re
O’Grady v Australian Federal Police* [[1983] AATA
390](https://www.austlii.edu.au/cgi-bin/viewdoc/au/cases/cth/AATA/1983/390.html){target=_blank}.

You can [read my full Internal Review application
letter][ir-appl]{target=_blank}
at Right To Know.

[ir-appl]: https://www.righttoknow.org.au/request/mygov_authenticators_and_code_ge#outgoing-30819

## What happens now?

A fresh decision on the FOI request is due by late June.  It seems
they are reluctant to release the information, but let's see.  At
the very least, we should expect a more detailed and better
justified decision with fewer fundamental errors of law.

If they do release some information, it will hopefully shed more
light on the proposal, roadmap and development of the generic
authenticator support and the *myGov Code Generator* app retirement.
Both of which are, I reiterate, Very Good things!

You would think an agency would be happy to share information about
Good Things that they did.  That they are not speaks volumes about
the culture of avoiding transparency and accountability that exists
within Services Australia (and many other agencies).

We must use our rights—while we still have them—to collectively
resist this rot and force accountability.  Or at least try.  Do your
part by making an FOI request today!
