# Import path from brew donwloads
export PATH="/home/linuxbrew/.linuxbrew/bin:$PATH"
export PATH="$HOME/.cargo/bin:$PATH"

# Starship
eval "$(starship init zsh)"

# Activate syntax highlighting
source $(brew --prefix)/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh 

# Disable underline
(( ${+ZSH_HIGHLIGHT_STYLES} )) || typeset -A ZSH_HIGHLIGHT_STYLES
ZSH_HIGHLIGHT_STYLES[path]=none
ZSH_HIGHLIGHT_STYLES[path_prefix]=none

# Activate autosuggestions
source $(brew --prefix)/share/zsh-autosuggestions/zsh-autosuggestions.zsh


#  Alias
alias cl="clear"
alias la="ls -a"
alias mkdir="mkdir -p"

alias notes="nvim ~/work/notes/"

# Inicializar Zellij
eval "$(zellij setup --generate-auto-start zsh)"

# bun completions
[ -s "/home/pogosg/.bun/_bun" ] && source "/home/pogosg/.bun/_bun"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"
