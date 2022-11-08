# 2021-05-29 Edward Smith Updated vcs_info styles

ZSH="/usr/share/zsh/custom"
fpath=("$ZSH" "$fpath[@]")
autoload -Uz compinit promptinit; compinit; promptinit
autoload -Uz check_invoice

# You may need to manually set your language environment
export LANG=en_US.UTF-8
export LS_COLORS='rs=0:di=01;34:ln=01;36:mh=00:pi=40;33:so=01;35:do=01;35:bd=40;33;01:cd=40;33;01:or=40;31;01:mi=00:su=37;41:sg=30;43:ca=30;41:tw=30;42:ow=1;35:st=37;44:ex=01;32:'

# Compilation flags
# export ARCHFLAGS="-arch x86_64"
export MAKEFLAGS="-j$(nproc)"

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"

export BC_ENV_ARGS=$HOME/.bcrc
export EDITOR=vim
export PATH="/usr/lib/ccache/bin/:$PATH"
export HOSTNAME=$(print -P %m)
export USERNAME
export RIPGREP_CONFIG_PATH=$HOME/.ripgreprc
export EXA_COLORS='uu=35'
export MANPAGER="sh -c 'col -bx | bat -l man -p'"

# Load custom configurations
for config_file ($ZSH/*.zsh(N)) { source $config_file }
unset config_file

# history search plugin
source /usr/share/zsh/plugins/zsh-history-substring-search/zsh-history-substring-search.zsh
HISTORY_IGNORE="(ls*|ll*|cd*|cls|exit|poweroff|reboot)"

# Set keys for searching history - widgets are defined in zsh-history-substring-search.zsh,
# so need to bind keys after sourcing the file.
# Arrow Up = "^[OA", Arrow Down = "^[OB"
bindkey -M vicmd "^[OA" history-substring-search-up
bindkey -M viins "^[OA" history-substring-search-up
bindkey -M vicmd "^[OB" history-substring-search-down
bindkey -M viins "^[OB" history-substring-search-down

# bindkey "^[[1~" beginning-of-line
# bindkey "^[[4~" end-of-line

# highlighting plugin -- must be sourced last
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
ZSH_HIGHLIGHT_HIGHLIGHTERS=(main brackets cursor)
ZSH_HIGHLIGHT_STYLES[cursor]='fg=226'

# vi mode
# Set cursor style (DECSCUSR), VT520.
# 0  ⇒  blinking block.
# 1  ⇒  blinking block (default).
# 2  ⇒  steady block.
# 3  ⇒  blinking underline.
# 4  ⇒  steady underline.
# 5  ⇒  blinking bar, xterm.
# 6  ⇒  steady bar, xterm.

# bindkey -v
# export KEYTIMEOUT=5

prompt edward yellow
echo -ne '\e[4 q' # Use underline shape cursor on startup.

HISTORY_IGNORE="(ls*|ll*|cd*|cls|exit|poweroff|reboot)"

# ad-hoc aliases
alias cal='cal --week'
alias cfg='git --git-dir=$HOME/.cfg/ --work-tree=$HOME'
# add push-line-or-edit function
# bindkey '^B' push-line-or-edit
cd
pfetch
fortune
