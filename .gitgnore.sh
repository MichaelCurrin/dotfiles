# Content for ~/.gitignore file.
#
# This is a user-level ignore file which applies even if a repo does not have a .gitgnore file.
#
# Make sure to setup excludesfile in your gitconfig file so that this ignore file is referenced.

### Global git ignore file ###

# Python virtual environment.
# Note: This is useful for 2U. But maybe take out so I remember to add to ignore file of my own projects.
venv

### Temporary metadata files

# Linux folder attributes (Dolphin) and PyCharm metadata.
.idea/
.directory/
# macOS folder attributes
.DS_Store
# Vim swap file.
.swp

### Project files

# Ignore by default here, but you add these use `git add -f FILE` if you do want them to be tracked.
# The force flag is necessary override the warning given when the file matches against these.

# Lockfiles - ignore by default unless I explicitly add to git.
# This can help where the stakes are low and I don't to get messaged
# about security vulnerabities of subdependencies.
# This risk is that I'll get less predictable installs locally or remotely
# without knowing previous locked version. This is okay where I match GitHub Pages as the constant environment, or it is a simple NPM app where I can check the React quickstart for example to see what others use.
package-lock.json
yarn.lock
Gemfile.lock

### Notes

# Temporary or private notes, as files or directories.
#
# Use **underscores** to prevent files from being used in Jekyll builds.
# Alternatively make these dot files, but those hard to view in the folder browser.

# Note this is NOT case sensitive but uppercase here by convention.
TODO
_TODO

NOTES
_NOTES

# Avoid just 'TEST' as sometimes 'test' is a valid directory.
_TEST
_TESTS

### Git

COMMIT_MESSAGE
_COMMIT_MESSAGE
