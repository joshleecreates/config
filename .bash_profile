export EDITOR=/usr/bin/vim

function ref(){
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/\1/' || return
}

function sha(){
    git rev-parse --short HEAD 2> /dev/null | sed -e 's/\(.*\)/\[\1\]/' || return
}

function dateOut() {
    date +%H:%M || return
}

function cdc() {
    cd ~/code/$1
}

_cdc() {
    local cur opts
    cur="${COMP_WORDS[COMP_CWORD]}"
    opts=$(cd ~/code ; ls -d *)
    COMPREPLY=($(compgen -W "${opts}" -- ${cur}))
}

complete -F _cdc cdc

RED="\[\e[0;31m\]"
YELLOW="\[\e[0;33m\]"
GREEN="\[\e[0;32m\]"
WHITE="\[\e[0;37m\]"

PS1="$GREEN[\$(dateOut)]$YELLOW[\$(ref)]\$(sha)\[\e[0m\][\w]\$ "

#git autocompletion
if [ -f ~/.git-completion.bash ]; then
  source ~/.git-completion.bash
fi

eval "$(thefuck --alias)"
alias drun="docker-compose run web"
alias dash="docker-compose run web /bin/bash"
alias dkill="docker kill \$(docker ps -q)"

test -e "${HOME}/.iterm2_shell_integration.bash" && source "${HOME}/.iterm2_shell_integration.bash"

export MIX_ENV=dev
