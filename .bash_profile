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
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion


# Aliases

export CDPATH=/Users/Jtakiguchi/documents:/Users/Jtakiguchi/documents/code
