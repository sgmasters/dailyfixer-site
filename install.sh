#!/bin/bash
# Installs or updates DailyFixer for Mac in ~/Applications (no admin password):
#   curl -fsSL https://sgmasters.github.io/dailyfixer-site/install.sh | bash
# Reads the current version from the site's appcast (apple/appcast.xml), so this
# script and the app always agree. Files downloaded with curl aren't quarantined,
# so the app opens without a Gatekeeper prompt. Run it again to update; your data
# (in the app's container) stays. ADR-0020.
# Messages stay ASCII and variables use ${braces}: macOS bash 3.2 in a UTF-8 locale
# reads a non-ASCII byte after $name as part of the name (set -u then fails).
set -euo pipefail
FEED="${DAILYFIXER_FEED:-https://sgmasters.github.io/dailyfixer-site/apple/appcast.xml}"
DEST="${DAILYFIXER_DEST:-$HOME/Applications}"
BUNDLE_ID=app.dailyfixer.dailyfixer
REPLACES=app.dailyfixer.native   # the retired SwiftUI preview (same app name)
APP="${DEST}/DailyFixer.app"

fail() { echo "DailyFixer install: $*" >&2; exit 1; }
[ "$(uname -s)" = Darwin ] || fail "this installer is for macOS."
[ "$(sw_vers -productVersion | cut -d. -f1)" -ge 14 ] || fail "DailyFixer needs macOS 14 or newer."

feed=$(curl -fsSL "$FEED") || fail "can't reach ${FEED}"
url=$(printf '%s' "$feed" | sed -n 's/.*<enclosure[^>]* url="\([^"]*\)".*/\1/p' | head -1)
length=$(printf '%s' "$feed" | sed -n 's/.*<enclosure[^>]* length="\([0-9]*\)".*/\1/p' | head -1)
version=$(printf '%s' "$feed" | sed -n 's/.*<sparkle:shortVersionString>\([^<]*\)<.*/\1/p' | head -1)
[ -n "$url" ] || fail "no download in the feed."

if [ -d "$APP" ]; then
  existing=$(/usr/libexec/PlistBuddy -c 'Print :CFBundleIdentifier' "${APP}/Contents/Info.plist" 2> /dev/null || true)
  [ "$existing" = "$BUNDLE_ID" ] || [ "$existing" = "$REPLACES" ] ||
    fail "${APP} is another app (${existing}); move it away first."
fi

tmp=$(mktemp -d); trap 'rm -rf "$tmp"' EXIT
echo "Downloading DailyFixer ${version}..."
curl -fL --progress-bar "$url" -o "${tmp}/DailyFixer.zip" || fail "download failed."
[ -z "$length" ] || [ "$(stat -f%z "${tmp}/DailyFixer.zip")" = "$length" ] || fail "download is incomplete."
ditto -x -k "${tmp}/DailyFixer.zip" "${tmp}/x"
[ -d "${tmp}/x/DailyFixer.app" ] || fail "the download has no DailyFixer.app."

for id in "$BUNDLE_ID" "$REPLACES"; do
  if pgrep -f "${APP}/Contents/MacOS/" > /dev/null; then
    echo "Closing DailyFixer..."
    osascript -e "tell application id \"${id}\" to quit" > /dev/null 2>&1 || true
    sleep 2
  fi
done
mkdir -p "$DEST"
rm -rf "$APP"
mv "${tmp}/x/DailyFixer.app" "$APP"
echo "Installed DailyFixer ${version} in ${DEST}. To update later, run the same command again."
if [ -d /Applications/DailyFixer.app ]; then
  echo "Note: there is another DailyFixer in /Applications (an older build). Remove it so only this one opens."
fi
[ -n "${DAILYFIXER_NO_OPEN:-}" ] || open "$APP"
