export EDITOR="vim"
export LC_CTYPE=en_US.UTF-8
export LC_ALL=en_US.UTF-8
#export JAVA_HOME="/Library/Java/JavaVirtualMachines/zulu-8.jdk/Contents/Home/"
#export JAVA_HOME="/Users/nasuion/Library/Java/JavaVirtualMachines/temurin-17.0.9/Contents/Home"
export JAVA_HOME="/Library/Java/JavaVirtualMachines/openjdk-21.0.1/Contents/Home"
export PATH="/usr/local/bin:$PATH"
export PATH="/opt/homebrew/bin:$PATH"

export CLICOLOR=1
export LSCOLORS=GxBxCxDxexegedabagaced

parse_git_branch() {
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}
export PS1="\e[0;35m->> \e[1;34m\W\e[0;32m\$(parse_git_branch)\e[0;37m $ "

stty -ixon

#Add each completion script in the bash_completion.d directory

for file in ~/.bash_completion.d/*
do
  echo $file
  if [ \( -f $file -o -h $file \) -a -r $file ]; then
    # The file is a regular file or a symbolic link, and it is readable
    # by this script (for the user running the script).
    # That is good enough for us - source the file
    echo $file
    . $file
  fi
done

#Add bash aliases
if [ -f ~/.bash_aliases ]; then
    source ~/.bash_aliases
fi
#Add system specific customizations
if [ -f ~/.bash_profile_local ] ; then
    . ~/.bash_profile_local
fi

if [ -f ~/.bash_completion.d/.git-completion.bash ]; then
  . ~/.bash_completion.d/.git-completion.bash
fi
if [ -f ~/.bash_completion.d/.ssh-completion.bash ]; then
  . ~/.bash_completion.d/.ssh-completion.bash
fi


#Enable tab completion for "g" by marking it as an alias for "git"
if type __git_complete &> /dev/null; then
  __git_complete g __git_main
fi;

test -e "${HOME}/.iterm2_shell_integration.bash" && source "${HOME}/.iterm2_shell_integration.bash"
#export PATH="/opt/homebrew/opt/node@16/bin:$PATH"
export PATH="/opt/homebrew/opt/libpq/bin:$PATH"
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"

source /Users/nasuion/.docker/init-bash.sh || true # Added by Docker Desktop
