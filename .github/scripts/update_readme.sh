#!/bin/bash

FREQ_RESULT=$1
GITHUB_USER=$2

TIMESTAMP=$(date)

echo -e "\n## Analysis Result" >> README.md
echo "User: $GITHUB_USER" >> README.md
echo "Time: $TIMESTAMP" >> README.md
echo "Vowel Frequency: $FREQ_RESULT" >> README.md

git config --global user.name "github-actions"
git config --global user.email "github-actions@users.noreply.github.com"
