# ~/.bashrc: executed by bash(1) for non-login shells.

# Note: PS1 and umask are already set in /etc/profile. You should not
# need this unless you want different defaults for root.
# PS1='${debian_chroot:+($debian_chroot)}\h:\w\$ '
# umask 022

# You may uncomment the following lines if you want `ls' to be colorized:
# export LS_OPTIONS='--color=auto'
# eval "`dircolors`"
# alias ls='ls $LS_OPTIONS'
# alias ll='ls $LS_OPTIONS -l'
# alias l='ls $LS_OPTIONS -lA'
#
# Some more alias to avoid making mistakes:
# alias rm='rm -i'
# alias cp='cp -i'
# alias mv='mv -i'
alias gg='git grep'
alias gp='git push weisheng HEAD'
alias mg='grep -E -r --color=always '
alias gs='git status'
alias bom='cd /home/git/regentmarkets/bom'
alias feed='cd /home/git/regentmarkets/bom-feed'
alias market='cd /home/git/regentmarkets/bom-market'
alias platform='cd /home/git/regentmarkets/bom-platform'
alias rpc='cd /home/git/regentmarkets/bom-rpc'
alias ws='cd /home/git/regentmarkets/binary-websocket-api'
alias qf='cd /home/git/regentmarkets/perl-Quant-Framework'
alias bo='cd /home/git/regentmarkets/bom-backoffice'
alias tidy='perltidy -pro=/home/git/regentmarkets/cpan/rc/.perltidyrc --backup-and-modify-in-place -bext=tidyup'
alias python=python3.7
