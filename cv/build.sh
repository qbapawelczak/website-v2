#!/bin/bash
# Compile CV. Output filename is derived from MM-YYYY arg or defaults to current month.
# Usage:
#   ./build.sh              # uses current month, e.g. 04-2026.pdf
#   ./build.sh 04-2026      # uses 04-2026.pdf
set -e
cd "$(dirname "$0")"

NAME="${1:-$(date +%m-%Y)}"

pdflatex -interaction=nonstopmode -jobname="$NAME" cv.tex > /dev/null
pdflatex -interaction=nonstopmode -jobname="$NAME" cv.tex > /dev/null

rm -f "$NAME.aux" "$NAME.log" "$NAME.out"
echo "Built $NAME.pdf"
