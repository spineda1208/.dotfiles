# PowerLevel10k Configuration
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
    source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# PATH Variables MacOS
export PATH="/opt/homebrew/bin:$PATH"
export PATH="/opt/homebrew/opt/openjdk/bin:$PATH"
export PATH="/opt/homebrew/sbin:$PATH"
export PATH="/opt/homebrew/opt/bison/bin:$PATH"
export PATH="/opt/homebrew/opi/bison/bin:$PATH"
export PATH="/Users/santiagopineda/go/bin/:$PATH"

# Bun
# export BUN_INSTALL="$HOME/.bun"
# export PATH="$BUN_INSTALL/bin:$PATH"

# Bun completions
[ -s "/Users/santiagopineda/.dotfiles/.bun/_bun" ] && source "/Users/santiagopineda/.dotfiles/.bun/_bun"

# Pyenv
export PYENV_VIRTUALENV_DISABLE_PROMPT=1
if command -v pyenv 1>/dev/null 2>&1; then
    eval "$(pyenv init --path)"
    eval "$(pyenv init -)"
    eval "$(pyenv virtualenv-init -)"
fi

# OPAM Configuration
# This is useful if you're using opam as it adds:
#   - the correct directories to the PATH
#   - auto-completion for the opam binary
# This section can be safely removed at any time if needed.
[[ ! -r '/Users/santiagopineda/.opam/opam-init/init.zsh' ]] || source '/Users/santiagopineda/.opam/opam-init/init.zsh' >/dev/null 2>/dev/null

# Zoxide
eval "$(zoxide init zsh)"
alias cd="z"

# Tetris
export PATH="/Users/santiagopineda/Personal//termtris/target/debug/:$PATH"
alias tetris="termtris"

# Oh-My-Zsh Configurations
export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="powerlevel10k/powerlevel10k"
plugins=(git zsh-syntax-highlighting zsh-autosuggestions)
source $ZSH/oh-my-zsh.sh

# Starship Configuration
# eval "$(starship init zsh)"

# Vim keybindings
# bindkey -v
bindkey -s '^n' '^unvim .\n'
bindkey -s '^t' '^utmux a\n'
bindkey -s '^s' '^usource ~/.zshrc\n'

# Aliases
alias zshc="nvim ~/.zshrc && source ~/.zshrc"
alias nvimc="~/Scripts/nvim_access.sh ~/.config/nvim/"
alias tmuxc="nvim ~/.config/tmux/tmux.conf"
alias ohmyzsh="nvim ~/.oh-my-zsh source ~/.zshrc"
alias termc="nvim ~/.config/alacritty/alacritty.toml source ~/.zshrc"

alias reindex="sudo mdutil -E /"

alias restart="sudo shutdown -r now"
alias trash="send2trash"
alias sleepy="sudo shutdown -s now"
alias ip="ipconfig getifaddr en0"
alias rmsymlinks="find ~ -maxdepth 1 -type l -exec test ! -e {} \; -delete"

# Tmux session alias
# "
#   if tmux has-session -t $SESSION_NAME 2>/dev/null; then
#     tmux attach-session -t $SESSION_NAME
#   else
#     tmux new-session -s $SESSION_NAME -c /path/to/project
#   fi
# "

# p10k
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

