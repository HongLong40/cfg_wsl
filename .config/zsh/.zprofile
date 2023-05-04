
# History
export HISTFILE="${ZDOTDIR}/.zhistory"    # History filepath
export HISTSIZE=50000
export SAVEHIST=10000

# disable LESSHISTFILE
export LESSHISTFILE=-

# hostname
export HOSTNAME=$(</etc/hostname)

# default editor
export EDITOR=vim
export VISUAL=vim

# Set language environment if it is not set
export LANG=${LANG:-en_US.UTF-8}

# set colors for ls command
export LS_COLORS='rs=0:di=01;34:ln=01;36:mh=00:pi=40;33:so=01;35:do=01;35:bd=40;33;01:cd=40;33;01:or=40;31;01:mi=00:su=37;41:sg=30;43:ca=30;41:tw=30;42:ow=1;35:st=37;44:ex=01;32:'
export EXA_COLORS='uu=35'

# Set misc. variables
export BC_ENV_ARGS=${HOME}/.config/bc/bcrc
export PATH="/usr/lib/ccache/bin/:$PATH"
export USERNAME
export MANPAGER="sh -c 'col -bx | bat -l man -p'"
export RIPGREP_CONFIG_PATH=$HOME/.ripgreprc

