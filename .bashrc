#
# ~/.bashrc
#

#start screenfetch
#screenfetch -D arch


# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias vi='vim'
alias tree='tree -C'
alias ls='ls --color=auto'
alias rm='rm -i'
alias grep='grep --color=auto'

#PS1='\[\e[38;5;46m\][\u@\h \W]\$: \[\e[0m\]'
PS1='\[\e[38;5;46m\]\u (\W)>\$: \[\e[0m\]'

export HISTTIMEFORMAT="%d/%m/%y %T "

#For tmux
export TERM=screen-256color

#For git
if [ -f ~/.git-completion.bash ]; then
    source ~/.git-completion.bash
fi

#for Sublime Text and others
export LANG=en_US.UTF-8 
export LC_CTYPE=en_US.UTF-8

# >>>>BEGIN ADDED BY CNCHI INSTALLER<<<< #
BROWSER=/usr/bin/chromium
EDITOR=/usr/bin/nano
# >>>>>END ADDED BY CNCHI INSTALLER<<<<< #

export PATH=/usr/local/sbin:/usr/local/bin:/usr/bin:/usr/lib/jvm/default/bin:/usr/bin/site_perl:/usr/bin/vendor_perl:/usr/bin/core_perl:/home/angshuman/.vimpkg/bin

man(){
    env LESS_TERMCAP_mb=$(printf "\e[1;31m") \
        LESS_TERMCAP_md=$(printf "\e[1;31m") \
        LESS_TERMCAP_me=$(printf "\e[0m") \
        LESS_TERMCAP_se=$(printf "\e[0m") \
        LESS_TERMCAP_so=$(printf "\e[1;44;33m") \
        LESS_TERMCAP_ue=$(printf "\e[0m") \
        LESS_TERMCAP_us=$(printf "\e[1;32m") \
    man "$@"
}
