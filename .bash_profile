source ~/.git-completion.sh

if [ -f /usr/local/git/contrib/completion/git-completion.bash ]; then 
  . /usr/local/git/contrib/completion/git-completion.bash 
fi

GIT_PS1_SHOWDIRTYSTATE=true

if [ -f /opt/local/etc/bash_completion ]; then 
  . /opt/local/etc/bash_completion 
fi 
# PS1='[\033[32m]\u@\h[\033[00m]:[\033[34m]\w[\033[31m]$(__git_ps1)[\033[00m]$ '

# export PS1="\W \u\[\e[1;36m\]\$(parse_git_branch)\[\e\e[30;1m\w\e[0m\n\$ " 

export PS1="\[\e]0;\w\a\]\n\[\e[32m\]\u@\h: \[\e[33m\]\w\[\e[0m\]\n\[\e[1;36m\]\$(parse_git_branch)\[\e\e[30;1m\e[0m\n\$ "

parse_git_branch() {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
}
