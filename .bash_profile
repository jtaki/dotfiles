# ----- JTAKI BASH PROFILE
export BASH_CONF="bash_profile"
[[ -s "$HOME/.profile" ]] && source "$HOME/.profile" # Load the default .profile

# Environment Configuration
# ----------------------------
  export PS1="________________________________________________________________________________\n| \w @ \h (\u) \n| => "
  export PS2="| => "
    # paths 
    export PATH="/usr/local/bin:$PATH"
    export PATH="/usr/bin:$PATH"

# Development
# ----------------------------
# ------QT
export PATH="/usr/local/opt/qt@5.5/bin:$PATH"
# ------Ruby
export PATH=$PATH:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/opt/X11/bin:/Users/jtakiguchi/.rbenv:.

export PATH="$PATH:`yarn global bin`"
eval "$(rbenv init -)"

# ------ Node 

# Defer initialization of nvm until nvm, node or a node-dependent command is
# run. Ensure this block is only run once if .bashrc gets sourced multiple times
# by checking whether __init_nvm is a function.
if [ -s "$HOME/.nvm/nvm.sh" ] && [ ! "$(whence -w __init_nvm)" = function ]; then
  export NVM_DIR="$HOME/.nvm"
  [ -s "$NVM_DIR/bash_completion" ] && . "$NVM_DIR/bash_completion"
  declare -a __node_commands=('nvm' 'node' 'npm' 'yarn' 'gulp' 'grunt' 'webpack')
  function __init_nvm() {
    for i in "${__node_commands[@]}"; do unalias $i; done
    . "$NVM_DIR"/nvm.sh
    unset __node_commands
    unset -f __init_nvm
  }
  for i in "${__node_commands[@]}"; do alias $i='__init_nvm && '$i; done
fi


# Aliases

export CDPATH=/Users/Jtakiguchi/documents:/Users/Jtakiguchi/documents/code
