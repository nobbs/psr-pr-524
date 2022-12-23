#!/usr/bin/bash

set -euo pipefail

test_commands() {

  source .venv/bin/activate
  py="$(pwd)/.venv/bin/python"

  echo "+++++ testing print-version +++++"
  echo "command: python3 -m semantic_release -v DEBUG print-version --noop --prerelease"
  python3 -m semantic_release -v DEBUG print-version --noop --prerelease 

  echo
  echo
  echo "+++++ +++++ +++++ +++++"
  echo

  echo "+++++ testing publish +++++"
  echo "command: python3 -m semantic_release -v DEBUG publish --noop --prerelease"
  python3 -m semantic_release -v DEBUG publish --noop --prerelease 

}

test_commands
