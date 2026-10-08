# Troubleshooting DiffFind Desktop

**The app does not open on macOS ("developer cannot be verified" / "damaged").**
The build is not notarized. Check the download against `SHA256SUMS.txt`, then right-click the app → Open. If the file is genuinely corrupt, download it again.

**Windows SmartScreen blocks the installer.**
The installer is not code-signed. Verify the checksum, then More info → Run anyway.

**"PDF, Word and spreadsheet files requires DiffFind Pro".**
Your trial has ended and no license is active. Basic text comparison is still available; activate a license under Settings → License.

**Semantic Find is slow the first time.**
It downloads a small embedding model (once) into the app's data folder. After that it works offline.

**Semantic Find does not work on an Intel Mac.**
Known limitation of the current build.

**My license key is rejected.**
Copy the whole key with no spaces or line breaks. "Not valid yet" means your computer's clock is set well in the past; "expired" means a time-limited key has lapsed.

**The trial shows fewer days than expected / says my clock was set back.**
DiffFind never lets the date go backwards past the latest it has seen, so setting the clock back does not extend a trial.

**Where are my API keys?**
Settings → Provider Credentials. They are stored encrypted with your system keychain.
