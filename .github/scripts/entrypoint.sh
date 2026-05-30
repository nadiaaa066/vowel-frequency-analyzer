#!/bin/bash

echo "Starting analyzer..."

RESULT=$(python .github/scripts/frequency.py data.txt)

bash .github/scripts/update_readme.sh "$RESULT" "$GITHUB_USER"

echo "Analysis completed."
