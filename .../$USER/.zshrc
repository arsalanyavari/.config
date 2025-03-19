#if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
#  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
#fi

export ZSH="$HOME/.oh-my-zsh"

##ZSH_THEME="bubblified"
#ZSH_THEME="powerlevel10k/powerlevel10k"
##ZSH_THEME="robbyrussell"

plugins=(
    git
    zsh-syntax-highlighting
    zsh-autosuggestions
    web-search
    copypath
    copyfile
    copybuffer
    fzf-zsh-plugin
)

source $ZSH/oh-my-zsh.sh

#[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

eval "$(/opt/homebrew/bin/brew shellenv)"


if [ "$TERM_PROGRAM" != "Apple_Terminal" ]; then
  eval "$(oh-my-posh init zsh)"
fi


alias ls='colorls -h --group-directories-first'
alias l='colorls --group-directories-first --almost-all'
alias ll='colorls -h -lr'
alias cat='bat -pp'
alias neofetch="neofetch --ascii_distro BSD"
alias مس="ls"
alias updatedb="/usr/libexec/locate.updatedb"

export PATH="$PATH:/Users/adrian/.local/bin"

#if [ -z "$TMUX" ]; then
#    if [[ $( tmux ls 2>/dev/null | grep "Terminal:" ) ]]; then
#        tmux attach-session -t Terminal
#    else
#        tmux new-session -s Terminal
#    fi
#fi

source "$HOME/.cargo/env"