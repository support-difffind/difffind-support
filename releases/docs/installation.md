# Installing DiffFind Desktop

DiffFind Desktop runs entirely on your computer. Your documents are never uploaded for comparison, and no account is needed.

## macOS

1. Download the file for your Mac: **`DiffFind-mac-arm64.dmg`** for Apple Silicon (M1 and later) or **`DiffFind-mac-x64.dmg`** for Intel Macs. (Apple menu → About This Mac shows which you have.)
2. Open the `.dmg` and drag **DiffFind** into **Applications**.
3. Start DiffFind from Applications.

If macOS says the app "cannot be opened because the developer cannot be verified", that build is not notarized yet. Only open builds you downloaded from the official DiffFind release page and whose checksum matches (below); then right-click the app → **Open**.

## Windows

1. Download **`DiffFind-windows-x64.exe`**.
2. Run it. DiffFind installs for your user only and does not need administrator rights; you can pick the install folder.
3. Start DiffFind from the Start menu.

If Windows SmartScreen warns about an unknown publisher, that build is not code-signed yet. Verify the checksum, then choose **More info → Run anyway**.

## Verify your download (recommended)

Each release has a `SHA256SUMS.txt`.

- macOS / Linux: `shasum -a 256 -c SHA256SUMS.txt` (from the folder containing the download)
- Windows (PowerShell): `Get-FileHash .\DiffFind-windows-x64.exe -Algorithm SHA256` and compare with the matching line.

## Where your data lives

DiffFind keeps history, settings, API keys (encrypted with your system keychain) and licensing information in its application data folder (`~/Library/Application Support/DiffFind` on macOS, `%APPDATA%\DiffFind` on Windows). Uninstalling the app does not delete it.

## First launch

Your 90-day Pro trial starts automatically. See [licensing](licensing.md).
