#!/bin/bash


echo "Checking out 'dev' branch..."
git checkout dev || git checkout -b dev

echo "Adding code..."
git add git-pr-script.sh


echo "Committing changes..."
git commit -m "updating code" || echo "No changes to commit."

echo "Pushing 'dev' branch..."
git push origin dev

echo "Creating pull request: dev -> stage..."
gh pr create --base stage --head dev --title "dev to stage" --body "merging dev into stage"

# Wait for user to press Enter
read -p "Press Enter to continue to stage -> main..."

echo "Checking out 'stage' branch..."
git checkout stage || git checkout -b stage

echo "Pushing 'stage' branch..."
git push origin stage

echo "Creating pull request: stage -> main..."
gh pr create --base main --head stage --title "stage to main" --body "merging stage into main"
