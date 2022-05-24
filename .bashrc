#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

#alias ls='ls --color=auto'
#alias la='ls -a'
#alias l='ls --color=auto'
alias ls='ls-icons --color=auto'
alias l='ls-icons --color=auto'
alias la='ls-icons -a'
alias grep='grep --color=auto'

# https://unix.stackexchange.com/questions/85352/how-can-i-alias-sudo
#alias please='sudo $(history -p !!)' # other one ig
alias please='sudo $(fc -ln -1)'
alias pls='sudo $(fc -ln -1)'
alias fuck='echo muck'
alias neat='echo quite neat indeed' # agree with me when i type neat
alias sexit='echo do NOT sex it.'
alias jit='echo do NOT say jit.'
alias listpkg='pacman -Qq | fzf --multi --reverse --preview '\''pacman -Qi {1}'\' # https://discord.com/channels/399812551963049995/848349994082893884/968215645500108810
alias edit='$EDITOR'
alias ?='man'

#PS1='[\u@\h \W]\$ ' # Default
#PS1='\[\033[01;37m\]┌─[\[\033[38;5;8m\]\u\[\033[01;37m\]]-[\[\033[01;36m\]\h\[\033[01;37m\]]-[\[\033[01;33m\]\w\[\033[00;37m\]\[\033[01;37m\]]
#\[\033[01;37m\]└─[\[\033[05;33m\]$\[\033[00;37m\]\[\033[01;37m\]]\[\033[00;37m\] '

# within an SSH-session, ${SSH_TTY} will be set
# checking this to fix ssh from my phone because my default PS1 causes it to break
if [ "x${SSH_TTY}" = "x" ]; then
  PS1='\[\033[01;37m\]┌─[\[\033[38;5;8m\]\u\[\033[01;37m\]]-[\[\033[01;36m\]\h\[\033[01;37m\]]-[\[\033[01;33m\]\w\[\033[00;37m\]\[\033[01;37m\]]
\[\033[01;37m\]└─[\[\033[05;33m\]$\[\033[00;37m\]\[\033[01;37m\]]\[\033[00;37m\] '
else
  PS1='[\u@\h \W]\$ '
  export PF_COLOR=0
fi

#TERM=$(ps -o comm= -p "$(($(ps -o ppid= -p "$(($(ps -o sid= -p "$$")))")))")
#if [ "${TERM}" = "alacritty" ]; then
#  alias ls="ls-icons --color=auto"
#fi

#pfetch
pfetch-git # supports no color mode via PF_COLOR=0 env variable

[ -r /home/userbyte/.byobu/prompt ] && . /home/userbyte/.byobu/prompt   #byobu-prompt#
. "$HOME/.cargo/env"
