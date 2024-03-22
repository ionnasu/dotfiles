[ -n "$PS1" ] && source ~/.bash_profile;

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

source /Users/nasuion/.docker/init-bash.sh || true # Added by Docker Desktop
export PATH=$PATH:/usr/local/bin


# Load Angular CLI autocompletion.
source <(ng completion script)
