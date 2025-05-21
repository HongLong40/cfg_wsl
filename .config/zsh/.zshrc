# 2021-05-29 Edward Smith Updated vcs_info styles

ZSH="/usr/share/zsh/custom"
fpath=("${ZSH}/autoload.d" "$fpath[@]")
zmodload zsh/complist
autoload -Uz compinit && compinit
autoload -Uz promptinit && promptinit
autoload -Uz add-zsh-hook

# autoload custom functions
source  ${ZSH}/autoload.zsh

# Load completions - must be loaded before other custom configurations
source ${ZSH}/completion.zsh

source ${ZSH}/aliases.zsh
source ${ZSH}/directories.zsh
source ${ZSH}/history.zsh
source ${ZSH}/key-bindings.zsh

# autosuggestions plugin
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh

# additional options (main options defined in their respective *.zsh files)
setopt interactive_comments     # allows comments in shell, useful when pasting commented snippets
setopt nobeep                   # turn off beeping in the terminal

# misc. variables
export BC_ENV_ARGS=${XDG_CONFIG_HOME}/bc/bcrc
export RIPGREP_CONFIG_PATH=${XDG_CONFIG_HOME}/rg/ripgreprc

prompt edward yellow
echo -ne '\e[4 q' # Use underline shape cursor on startup.

# source key bindings and completion for fzf
source <(fzf --zsh)

# highlighting plugin -- must be sourced last
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
ZSH_HIGHLIGHT_HIGHLIGHTERS=(main brackets cursor)
ZSH_HIGHLIGHT_STYLES[cursor]='fg=226'

# disable highlighting for pasted strings
zle_highlight+=('paste:none')

# change to user's home directory on startup
# show welcome message
cd $HOME
pfetch
fortune
