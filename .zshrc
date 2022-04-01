# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# homebrew env
export PATH=$PATH:/opt/homebrew/bin

# go env
export PATH=$PATH:$HOME/.go/bin:$HOME/.go/current/bin

# flutter env
export PATH=$PATH:$HOME/Desktop/environment/flutter/bin

# rust env
export PATH=$PATH:$HOME/.cargo/bin

# oh-my-zsh
export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="powerlevel10k/powerlevel10k"
plugins=(git zsh-autosuggestions zsh-syntax-highlighting zsh-completions)
source $ZSH/oh-my-zsh.sh

# proxy
alias proxy='export all_proxy=http://127.0.0.1:7890'
alias unproxy='unset all_proxy'

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
