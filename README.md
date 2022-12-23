# Testing <https://github.com/python-semantic-release/python-semantic-release/pull/524>

## Setup

Clone the repo, then remove the `.git` folder for a clean Git history.
To test the behaviour using `python-semantic-release/python-semantic-release`'s `master`
branch, run the following scripts in your terminal:

```bash
# Install Python Semantic Release's master branch
# source this to make sure the virtual environment is active
source ./install.sh

# setup a mock git history
./setup.sh

# test the output of the two different commands
./test.sh

# clean up the .git folder and the cloned PSR
./clean.sh
```

To test the behaviour using the fork at `mrjk/python-semantic-release`'s `fix-inconsistant-version`
branch, the process is very similar but you must set a couple of variables for the `install.sh` script.
Run the following scripts in your terminal:

```bash
# Install the forked version of Python Semantic Release
# source this to make sure the virtual environment is active
repo_source="mrjk" branch="fix-inconsistant-version" source ./install.sh

# setup a mock git history
./setup.sh

# test the output of the two different commands
./test.sh

# clean up the .git folder and the cloned PSR
./clean.sh
```
