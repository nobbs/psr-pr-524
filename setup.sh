#!/usr/bin/bash

set -euxo pipefail

main() {

  git init

  : set a dummy origin url so PSR does not complain
  git remote add origin git@github.com:foo/bar.git

  : do a commit for an initial release
  git add . && git commit -m "bump: version v0.1.2"
  git tag v0.1.2 -m "v0.1.2"

  : commit a breaking change and tag a new prerelease
  touch file0.txt
  git add file0.txt && git commit -F - <<< """
feat: test

BREAKING CHANGE: test
"""
  python3 -m semantic_release -v DEBUG version --prerelease

  : replicate git history from PR
  for i in "1" "2" "3"; do
    touch "file$i.txt"
    git add "file$i.txt" && git commit -m "patch: change $i"
  done

}

main
