# 2021-05-29 Edward Smith Updated vcs_info styles

ZSH="/usr/share/zsh/custom"
fpath=("$ZSH" "$fpath[@]")
autoload -Uz promptinit; promptinit

# autoload custom functions
local -a aufn=( $(<${ZSH}/autoload) )
autoload -Uz ${aufn}
unset aufn

## You may need to manually set your language environment
#export LANG=en_US.UTF-8
#
## History
#export HISTFILE="${ZDOTDIR}/.zhistory"    # History filepath
#export HISTSIZE=50000
#export SAVEHIST=10000
#
#export LS_COLORS='rs=0:di=01;34:ln=01;36:mh=00:pi=40;33:so=01;35:do=01;35:bd=40;33;01:cd=40;33;01:or=40;31;01:mi=00:su=37;41:sg=30;43:ca=30;41:tw=30;42:ow=1;35:st=37;44:ex=01;32:'
#export EXA_COLORS='uu=35'
#
# Compilation flags
#export MAKEFLAGS="-j$(nproc)"

#export BC_ENV_ARGS=$HOME/.bcrc
#export EDITOR=vim
#export PATH="/usr/lib/ccache/bin/:$PATH"
#export HOSTNAME=$(print -P %m)
#export USERNAME
#export RIPGREP_CONFIG_PATH=$HOME/.ripgreprc
#export MANPAGER="sh -c 'col -bx | bat -l man -p'"

# Load completions - must be loaded before other custom configurations
source ${ZSH}/completion.zsh

source ${ZSH}/aliases.zsh
source ${ZSH}/directories.zsh
source ${ZSH}/history.zsh
source ${ZSH}/functions.zsh

# history search plugin
source /usr/share/zsh/plugins/zsh-history-substring-search/zsh-history-substring-search.zsh
HISTORY_IGNORE="(ls*|ll*|cd*|cls|exit|poweroff|reboot)"

# Keys for searching history-widgets are defined in zsh-history-substring-search.zsh,
# so need to bind keys after sourcing the file.
source ${ZSH}/key-bindings.zsh

# highlighting plugin -- must be sourced last
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
ZSH_HIGHLIGHT_HIGHLIGHTERS=(main brackets cursor)
ZSH_HIGHLIGHT_STYLES[cursor]='fg=226'

# disable highlighting for pasted strings
zle_highlight+=('paste:none')

prompt edward yellow
echo -ne '\e[4 q' # Use underline shape cursor on startup.

# source key bindings and completion for fzf
source /usr/share/fzf/key-bindings.zsh
source /usr/share/fzf/completion.zsh

cd
pfetch
fortune
ln -sf /mnt/wslg/runtime-dir/wayland-0* /run/user/1000/
