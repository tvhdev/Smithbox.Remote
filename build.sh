#!/usr/bin/env bash
# Builds the Docker image smithbox-remote (Linux, CPU rendering) and a Windows build of Smithbox with the extension in out/win-x64.
# Smithbox is fetched at the ref in SMITHBOX_REF (commit, tag or branch).
set -euo pipefail
cd "$(dirname "$0")"
docker build --target runtime -t smithbox-remote .
rm -rf out/win-x64
docker build --target win -o out/win-x64 .
echo "Done: image smithbox-remote, Windows build in $(pwd)/out/win-x64"
