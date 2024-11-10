# PowerLevel10k Configuration
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
    source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# PATH Variables MacOS
export PATH="/opt/homebrew/bin:$PATH"
export PATH="/opt/homebrew/opt/openjdk/bin:$PATH"
export PATH="/opt/homebrew/sbin:$PATH"
export PATH="/opt/homebrew/opt/bison/bin:$PATH"
export PATH="/Users/santiagopineda/go/bin/:$PATH"
export PATH="/Users/santiagopineda/.local/bin/:$PATH"
export PATH="/usr/local/texlive/2024/bin/universal-darwin:$PATH"

# Environment Variables
export EDITOR="nvim"

# Bun
# export BUN_INSTALL="$HOME/.bun"
# export PATH="$BUN_INSTALL/bin:$PATH"

# Bun completions
# [ -s "/Users/santiagopineda/.dotfiles/.bun/_bun" ] && source "/Users/santiagopineda/.dotfiles/.bun/_bun"

# Pyenv
export PYENV_VIRTUALENV_DISABLE_PROMPT=1
if command -v pyenv 1>/dev/null 2>&1; then
    eval "$(pyenv init --path)"
    eval "$(pyenv init -)"
    eval "$(pyenv virtualenv-init -)"
fi

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


# Aliases
alias db="psql -h saveware-postgresql.postgres.database.azure.com -p 5432 -U postgres_father postgres"
alias test-db="psql -h saveware-postgresql-test.postgres.database.azure.com -p 5432 -U postgres_father postgres"
alias zshc="nvim ~/.zshrc && source ~/.zshrc"
alias nvimc="~/Scripts/nvim_access.sh ~/.config/nvim/"
alias tmuxc="nvim ~/.config/tmux/tmux.conf"
alias ohmyzsh="nvim ~/.oh-my-zsh source ~/.zshrc"
alias termc="nvim ~/.config/alacritty/alacritty.toml source ~/.zshrc"

alias reindex="sudo mdutil -E /"
alias gcc="gcc-14"

alias restart="sudo shutdown -r now"
alias trash="send2trash"
alias sleepy="sudo shutdown -s now"
alias ip="ipconfig getifaddr en0"
alias rmsymlinks="find ~ -maxdepth 1 -type l -exec test ! -e {} \; -delete"
alias cmpsc="ssh sbp5827@e5-cse-goliath.cse.psu.edu"

spush() {
    pushd ..
    git commit -a -m 'udpate: submodules'
    git push origin main
    popd
}

c() {
    clang "$1" -o test
    ./test
    rm ./test
}

# p10k
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# dune
export PATH="/Users/santiagopineda/.dune/bin:$PATH"
