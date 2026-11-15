#!/usr/bin/env bash
# Copies malakHelmy/Neurithm (with full history) into Dr-hossam1/Neurithm
# and adds LICENSE, requirements.txt, README.md and .zenodo.json.
# Run from inside the unzipped neurithm_additions folder. Needs git and a
# GitHub login that can push to Dr-hossam1/Neurithm.
set -euo pipefail
HERE="$(cd "$(dirname "$0")" && pwd)"
WORK="$(mktemp -d)"
git clone https://github.com/malakHelmy/Neurithm.git "$WORK/Neurithm"
cd "$WORK/Neurithm"
cp "$HERE/LICENSE" "$HERE/requirements.txt" "$HERE/README.md" "$HERE/.zenodo.json" .
git add LICENSE requirements.txt README.md .zenodo.json
git commit -m "Add MIT licence, requirements, README and Zenodo metadata"
git remote set-url origin https://github.com/Dr-hossam1/Neurithm.git
git push -u origin main
echo "Done: https://github.com/Dr-hossam1/Neurithm"
