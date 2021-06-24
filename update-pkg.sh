#!/bin/sh

REPOS_ROOT="$HOME/repos"
PACKAGES_ROOT="engstrand/packages"

for repo in engstrand-dwm engstrand-dmenu engstrand-st
do
    git_hash=$(git -C $REPOS_ROOT/$repo log -n 1 --format=format:"%H")
    guix_hash=$(guix hash --hash=sha256 --format=nix-base32 -rx $REPOS_ROOT/$repo)
    echo $repo $git_hash $guix_hash
    sed -i "s/(commit \"[0-9a-f]\{40\}\")/(commit \"$git_hash\")/g" $PACKAGES_ROOT/$repo.scm
    sed -i "s/(base32 \".\+\")/(base32 \"$guix_hash\")/g" $PACKAGES_ROOT/$repo.scm
done
