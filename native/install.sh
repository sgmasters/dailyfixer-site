#!/bin/bash
# Installs or updates DailyFixer for Mac in ~/Applications (no admin password).
#   curl -fsSL https://sgmasters.github.io/dailyfixer-site/native/install.sh | bash
# Finds the current version in the update feed (the same appcast Sparkle reads), so
# installs and in-app updates always agree. Files downloaded with curl aren't
# quarantined, so the app opens without a Gatekeeper prompt.
# Messages stay ASCII and variables use ${braces}: macOS bash 3.2 in a UTF-8 locale reads a
# non-ASCII byte after $name as part of the name (set -u then fails).
set -euo pipefail
FEED="${DAILYFIXER_FEED:-https://sgmasters.github.io/dailyfixer-site/native/appcast.xml}"
DEST="${DAILYFIXER_DEST:-$HOME/Applications}"
BUNDLE_ID=app.dailyfixer.native
APP="$DEST/DailyFixer.app"

fail() { echo "DailyFixer install: $*" >&2; exit 1; }
[ "$(uname -s)" = Darwin ] || fail "this installer is for macOS."
[ "$(sw_vers -productVersion | cut -d. -f1)" -ge 14 ] || fail "DailyFixer needs macOS 14 or newer."

feed=$(curl -fsSL "$FEED") || fail "can't reach $FEED"
url=$(printf '%s' "$feed" | sed -n 's/.*<enclosure[^>]* url="\([^"]*\)".*/\1/p' | head -1)
length=$(printf '%s' "$feed" | sed -n 's/.*<enclosure[^>]* length="\([0-9]*\)".*/\1/p' | head -1)
version=$(printf '%s' "$feed" | sed -n 's/.*<sparkle:shortVersionString>\([^<]*\)<.*/\1/p' | head -1)
[ -n "$url" ] || fail "no download in the feed."

if [ -d "$APP" ]; then
  existing=$(/usr/libexec/PlistBuddy -c 'Print :CFBundleIdentifier' "$APP/Contents/Info.plist" 2> /dev/null || true)
  [ "$existing" = "$BUNDLE_ID" ] || fail "$APP is another app ($existing); move it away first."
fi

tmp=$(mktemp -d); trap 'rm -rf "$tmp"' EXIT
echo "Downloading DailyFixer ${version}..."
curl -fL --progress-bar "$url" -o "$tmp/DailyFixer.zip" || fail "download failed."
[ -z "$length" ] || [ "$(stat -f%z "$tmp/DailyFixer.zip")" = "$length" ] || fail "download is incomplete."
ditto -x -k "$tmp/DailyFixer.zip" "$tmp/x"
[ -d "$tmp/x/DailyFixer.app" ] || fail "the download has no DailyFixer.app."

if pgrep -f "$APP/Contents/MacOS/DailyFixer" > /dev/null; then
  echo "Closing DailyFixer..."
  osascript -e "tell application id \"$BUNDLE_ID\" to quit" > /dev/null 2>&1 || true
  sleep 2
fi
mkdir -p "$DEST"
rm -rf "$APP"
mv "$tmp/x/DailyFixer.app" "$APP"
echo "Installed DailyFixer ${version} in ${DEST}. Updates arrive inside the app (DailyFixer > Check for Updates)."
[ -n "${DAILYFIXER_NO_OPEN:-}" ] || open "$APP"
