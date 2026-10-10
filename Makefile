# DiffFind Desktop release helpers.
VERSION ?= v0.1.0
REPO    ?= support-difffind/difffind-support
DL_DIR  := releases/downloads/$(VERSION)
NOTES   := releases/release-notes/$(VERSION).md
ASSETS  := $(DL_DIR)/DiffFind-mac-arm64.dmg $(DL_DIR)/DiffFind-windows-x64.exe $(DL_DIR)/SHA256SUMS.txt

.PHONY: help verify release releases release-status

help:
	@echo "verify          Check installers against SHA256SUMS.txt"
	@echo "release         Verify, then create GitHub pre-release $(VERSION) (asks to confirm)"
	@echo "release-status  List releases on $(REPO)"
	@echo "Override: VERSION=v0.1.1 REPO=owner/repo"

verify:
	cd $(DL_DIR) && shasum -a 256 -c SHA256SUMS.txt

# Pre-release: the v0.1.0 notes say the builds are unsigned. Afterwards, in
# difffind-site, set available: true (and tag: '$(VERSION)') in DESKTOP_RELEASE in script.js.
release: verify
	@printf "Publish $(VERSION) to github.com/$(REPO)? [y/N] " && read a && [ "$$a" = y ]
	gh release create $(VERSION) $(ASSETS) --repo $(REPO) --title "DiffFind Desktop $(VERSION)" --notes-file $(NOTES) --prerelease

release-status:
	gh release list --repo $(REPO)

releases: release
