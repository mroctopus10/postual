#!/bin/bash
cd "/Users/fabioluz/Claude Main/Postual"

# Check if there are any changes
if [ -n "$(git status --porcelain)" ]; then
  git add -A
  git commit -m "auto-sync: $(date '+%Y-%m-%d %H:%M')"
  git push origin main
fi
