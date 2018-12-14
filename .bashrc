# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions
alias ..='cd ..'
alias la='ls -al'
alias l='ls'

alias lf='ls | sed "s:^:`pwd`/:"'

export TERM=xterm-256color

source ~/.git-prompt.sh
CPwd="\[\033[38;5;33m\]"
CWho="\[\033[38;5;202m\]"
CGit="\[\033[38;5;3m\]"
CBG="\[\033[48;5;236m\]"
NOC="\[\033[0m\]"

#PS1="${CBG}[${CWho}\u${NOC}${CBG}] ${CPwd}\w${CGit}\$(__git_ps1 ' (%s)')${NOC}${CBG}\n->${NOC} "
#┌└ ╒╘ ╭╰ ╓╙ ╚ ╔
PS1="╭[${CWho}\h${NOC}] ${CPwd}\w${CGit}\$(__git_ps1 ' (%s)')${NOC}\n╰>${NOC} "
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"

if command -v pyenv 1>/dev/null 2>&1; then
  eval "$(pyenv init -)"
fi
