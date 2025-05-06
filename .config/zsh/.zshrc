# 2021-05-29 Edward Smith Updated vcs_info styles

ZSH="/usr/share/zsh/custom"
fpath=("$ZSH" "$fpath[@]")
autoload -Uz promptinit; promptinit

# autoload custom functions
local -a aufn=( $(<${ZSH}/autoload) )
autoload -Uz ${aufn}
unset aufn

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

# change to user's home directory on startup
# show welcome message
cd $HOME
pfetch
fortune