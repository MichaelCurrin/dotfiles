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
