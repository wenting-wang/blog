#!/bin/sh

# If a command fails then the deploy stops
set -e

# Print out commands before executing them
set -x

printf "Sync blog data to GitHub..."

# Add changes to git.
git add .

# Commit changes.
msg="rebuilding site $(date)"
if [ -n "$*" ]; then
	msg="$*"
fi
git commit -m "$msg"

# Push source and build repos.
git push
