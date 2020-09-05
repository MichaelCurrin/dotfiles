# Content for ~/.zshrc or ~/.bashrc files.
# On macOS and Linux.

####
# OS checks
####

IS_MAC=false
IS_LINUX=false

#   -s Print the kernel name (Linux) | print the operating system name. (macOS)
case "$(uname -s)" in
Darwin*)
  IS_MAC=true
  ;;
Linux*)
  IS_LINUX=true
  ;;
esac

####
# Aliases and functions
####

if [ -f ~/.aliases ]; then
  source ~/.aliases
fi

####
# Env variables
####

export VISUAL=nano

# Smart prepend to PATH - only if given path exists in the home directory.
prepend_path() {
  if [ -d "$HOME/$1" ]; then
    export PATH="$HOME/$1:$PATH"
  fi
}
# Same as above but for absolute paths.
prepend_abs_path() {
  if [ -d "$1" ]; then
    export PATH="$1:$PATH"
  fi
}
# Ignore the check on terminal setup - always add.
# This works well for paths that are relative to the current directory.
prepend_path_always() {
  export PATH="$1:$PATH"
}

# JAVASCRIPT - NODE
#
# Global installs of Node packages. This path is non-standard - this is configured
# to be in the home directory, not a directory owned by root.
prepend_path 'npm/bin'
# Allow execution of local project modules.
prepend_path_always './node_modules/.bin'

# JAVASCRIPT - DENO
#
prepend_path '.deno/bin'

# JAVASCRIPT - NODE VERSION MANAGER
#
# Note "bash_completion" works fine in ZSH.
setup_nvm() {
  # Coped from typical NVM setup.
  # Note -s check size is non-zero.
  # Added --no-use to delay NVM until `nvm use`, since it otherwise blocks my terminal setup by a second or two.
  export NVM_DIR="$HOME/.nvm"
  [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" --no-use
  [ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"
}
setup_nvm

# GO
#
# Traditional path is '/usr/local/go/bin' or '/usr/bin'.
prepend_path '.local/go/bin'
# Note this can't be ~/go as that is used for packages.

# PYTHON
#
# Prevent accidental global installs with pip.
export PIP_REQUIRE_VIRTUALENV=true

# RUBY
#
# For macOS Catalina - make custom brew Ruby (not the system one) and its gems available.
if [[ "$IS_MAC" == 'true' ]]; then
  prepend_abs_path '/usr/local/opt/ruby/bin'
fi

# The section above will always run but skip the dir not present.
# This check means Ruby setup is only done if Ruby is installed/available.
if which ruby >/dev/null && which gem >/dev/null; then
  # Full path to user-level gems like ~/.gem/ruby/X.X.X/bin .
  GEM_PATH="$(ruby -r rubygems -e 'puts Gem.user_dir')/bin"
  prepend_abs_path "$GEM_PATH"
fi

# Clean-up
unset -f prepend_path prepend_abs_path prepend_path_always
