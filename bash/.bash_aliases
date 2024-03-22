#NAVIGATION
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."
alias ......="cd ../../../../.."
alias ~="cd ~"
alias -- -="cd -"

#SHORTCUTS
alias d="docker"
alias f="vifm"
alias g="git"
alias o="open"
alias t="tmux"
alias v="vim"
alias dc="docker-compose"
alias dcl="docker-compose -f docker-compose.local.*"
alias dca="docker-compose -f docker-compose.arm.*"
alias dcta="docker-compose -f docker-compose-test.arm.*"
alias sa="sencha"
alias yt="youtube-dl"
alias ytmp3="youtube-dl --extract-audio --audio-format mp3"
alias essentra-ftp-tunnel="sudo ssh -F ~/.ssh/config -i ~/.ssh/essentra-uat.pem essentra-server"
alias essentra-kubectl-dev="kubectl --kubeconfig='/Users/nasuion/.kube/tremend/dev'"

#FILE LISTING
#Long form no user group, color
alias l="ls -oG"
#Order by last modified, long form no user group, color
alias lt="ls -toG"
#List all except . and ..., color, mark file types, long form no user group, file size
alias la="ls -AGFoh"
#List all except . and ..., color, mark file types, long form no use group, order by last modified, file size
alias lat="ls -AGFoth"

alias proxy-dev-db="/Users/nasuion/k8s/proxy-dev-db.sh"
alias aws-login-dev="aws-azure-login --profile dev-cluster"
alias aws-dev="aws --profile dev-cluster"
alias aws-prod="aws --profile prod-cluster"
alias curltime="curl -o /dev/null -s -w 'Establish Connection: %{time_connect}s\nTTFB: %{time_starttransfer}s\nTotal: %{time_total}s\n'"
alias switch-prod-cluster="kubectl config use-context arn:aws:eks:eu-central-1:953763577936:cluster/prod-muume-cluster"
alias switch-dev-cluster="kubectl config use-context arn:aws:eks:eu-central-1:247635813899:cluster/dev-muume-cluster"
alias mvnt="mvn -s ~/.m2/tremend/settings.xml "

#TRICKS
#Hide/show all desktop icons (useful when presenting)
alias showdeskicons="defaults write com.apple.finder CreateDesktop -bool true && killall Finder"
alias hidedeskicons="defaults write com.apple.finder CreateDesktop -bool false && killall Finder"
#Simulate macOS's "open", "pbcopy", and "pbpaste" commands on other platforms
if [ ! $(uname -s) = "Darwin" ]; then
    alias open='xdg-open &>/dev/null'
    alias pbcopy='xclip -selection clipboard'
    alias pbpaste='xclip -selection clipboard -o'
fi

#Add system specific aliases
if [ -f ~/.bash_aliases_local ] ; then
    . ~/.bash_aliases_local
fi
