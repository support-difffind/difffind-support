# DiffFind Support

The support/help center site for [DiffFind](https://app.diffind.com/) (marketing site:
[difffind.com](https://difffind.com)), covering how to compare documents, use AI semantic
analysis, manage your account, and use the API.

This is a plain static site — no build step, no framework, matching DiffFind's own philosophy of
small, dependency-free pages.

## Structure

```
index.html                  Support home (with client-side topic search)
getting-started.html
comparing-documents.html
ai-semantic-analysis.html
account-and-settings.html
privacy-and-security.html
api-for-developers.html
faq.html
contact.html
404.html
assets/style.css            Shared stylesheet (light/dark, matches the app's palette)
assets/favicon.png          Shared icon, extracted from the app's own favicon
```

Every page is self-contained HTML with a shared header/footer copy-pasted in (no templating), so
edits to nav links need to be made per-file.

## Keeping this in sync with the app

Content here reflects the behavior of the `mydiffchecker` app (README, API routes, and services)
as of the last update. When product behavior changes — new formats, new AI providers, new
account/settings behavior — the relevant page(s) here should be updated to match.
