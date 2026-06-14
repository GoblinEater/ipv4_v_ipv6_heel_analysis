#!/bin/bash
cd ~/ubritsa
echo "Syncing from Notion..."
node notion-sync.js
echo "Pushing to GitHub..."
git add .
git commit -m "Notion sync $(date '+%Y-%m-%d %H:%M:%S')"
git push
echo "Done! Site will update in ~60 seconds."
