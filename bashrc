#
# $HOME/.bashrc
#

# If not running interactively, don't do anything.
[[ $- != *i* ]] && return


# Change terminal title.
PS1='[\u@\h \W]\$ '

# My alias
alias ls='ls --color=auto'
alias lla='ls -a --color=auto'

# TMUX color
export TERM="tmux-256color"

# .NET Core telemetry feature disable.
export DOTNET_CLI_TELEMETRY_OPTOUT=1


# Color man pages
man() {
    env \
        LESS_TERMCAP_mb=$(printf "\e[1;31m") \
        LESS_TERMCAP_md=$(printf "\e[1;31m") \
        LESS_TERMCAP_me=$(printf "\e[0m") \
        LESS_TERMCAP_se=$(printf "\e[0m") \
        LESS_TERMCAP_so=$(printf "\e[1;44;33m") \
        LESS_TERMCAP_ue=$(printf "\e[0m") \
        LESS_TERMCAP_us=$(printf "\e[1;32m") \
        man "$@"
}
