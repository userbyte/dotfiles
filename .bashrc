#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'

#PS1='[\u@\h \W]\$ ' # Default
PS1='\[\033[01;37m\]┌─[\[\033[38;5;8m\]\u\[\033[01;37m\]]-[\[\033[01;36m\]\h\[\033[01;37m\]]-[\>
\[\033[01;37m\]└─[\[\033[05;33m\]$\[\033[00;37m\]\[\033[01;37m\]]\[\033[00;37m\] '

pfetch

[ -r /home/userbyte/.byobu/prompt ] && . /home/userbyte/.byobu/prompt   #byobu-prompt#
