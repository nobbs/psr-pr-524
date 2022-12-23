#!/usr/bin/bash

install() {
  : ${repo_source:="python-semantic-release"}
  : ${branch:="master"}
  echo "using $repo_source/python-semantic-release@$branch"
  : setup virtual environment
  python3 -m venv .venv && source .venv/bin/activate
  py="$(pwd)/.venv/bin/python"

  : clone PSR fork
  git clone git@github.com:$repo_source/python-semantic-release.git psr-test
  pushd psr-test
  git checkout $branch


  $py -m pip install -U pip setuptools wheel
  $py -m pip install --force-reinstall -e .
  popd
}

install
