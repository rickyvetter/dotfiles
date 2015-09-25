# added paths
PATH=$PATH:/Users/rickyvetter/bin
PATH=$PATH:node_modules/.bin
export PATH

GIT_PS1_SHOWCOLORHINTS="true"
GIT_PS1_SHOWDIRTYSTATE="true"
GIT_PS1_SHOWUPSTREAM="auto"

# git
source ~/.git-completion.sh
source ~/.git-prompt.sh
export PS1="\[\033[01;34m\]\w\[\033[00m\]\[\033[0;35m\]$(__git_ps1 " (%s)")\[\033[00m\]\$ "
# use extra PROMPT_COMMAND of PS1 to change colors dynamically
DEFAULT_PROMPT_COMMAND='__git_ps1 "\[\033[01;34m\]\w\[\033[00m\]" "\\\$ "'
# add iterm tab names
# see: stackoverflow.com/questions/1371261/get-current-directory-name-without-full-path-in-bash-script
if [ $ITERM_SESSION_ID ]; then
  export PROMPT_COMMAND='echo -ne "\033];${PWD##*/}\007";'$DEFAULT_PROMPT_COMMAND
else
  export PROMPT_COMMAND=DEFAULT_PROMPT_COMMAND
fi

alias ls='ls -GFh'

if [ -f `brew --prefix`/etc/bash_completion ]; then
 . `brew --prefix`/etc/bash_completion
fi

# lets nail this node version
[[ -s "$HOME/.nvm/nvm.sh" ]] && source "$HOME/.nvm/nvm.sh"
[[ -s "$HOME/.avn/bin/avn.sh" ]] && source "$HOME/.avn/bin/avn.sh" # load avn
