# .zshrc for WSL

# 2025-05-22
#   - disable autosuggestions. Nice to have, but not really necessary as we have fzf + history
#   - use the $prompt_cursor_mode variable to set the cursor shape

ZSH="/usr/share/zsh/custom"
fpath=("${ZSH}/autoload.d" "$fpath[@]")

# Load completion system early
autoload -Uz compinit && compinit -C
zmodload zsh/complist
source ${ZSH}/completion.zsh    # zstyle rules

# Prompt and hooks
autoload -Uz promptinit && promptinit
autoload -Uz add-zsh-hook

# Load prompt and cursor
prompt edward yellow
echo -ne "\e[${prompt_cursor_mode[viins]} q"    # Use underline shape cursor on startup.

# Autoload custom functions
source  ${ZSH}/autoload.zsh

# Other modular settings
source ${ZSH}/aliases.zsh
source ${ZSH}/directories.zsh
source ${ZSH}/history.zsh
source ${ZSH}/key-bindings.zsh

# Additional options (main options defined in their respective *.zsh files)
setopt interactive_comments     # allows comments in shell, useful when pasting commented snippets
setopt nobeep                   # turn off beeping in the terminal

# Misc. variables
export BC_ENV_ARGS=${XDG_CONFIG_HOME}/bc/bcrc
export RIPGREP_CONFIG_PATH=${XDG_CONFIG_HOME}/rg/ripgreprc

# Source key bindings and completion for fzf
source <(fzf --zsh)

# Autosuggestions plugin
#source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh

# Highlighting plugin -- must be sourced last per author's instructions
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
ZSH_HIGHLIGHT_HIGHLIGHTERS=(main brackets cursor)
ZSH_HIGHLIGHT_STYLES[cursor]='fg=226'

# Disable highlighting for pasted strings
zle_highlight+=('paste:none')

# change to user's home directory on startup
# show welcome message
#cd $HOME
pfetch
fortune
