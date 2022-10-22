#if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
#  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
#fi

export ZSH="/home/arya/.oh-my-zsh"

#ZSH_THEME="powerlevel10k/powerlevel10k"
ZSH_THEME="bubblified"
POWERLEVEL10K_MODE=''

plugins=(git
    zsh-autosuggestions
    docker
    docker-compose
    copyfile
    zsh-proxy
    zsh-syntax-highlighting
    )

source $ZSH/oh-my-zsh.sh


# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
#[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
#typeset -g POWERLEVEL9K_INSTANT_PROMPT=quiet


PATH=$PATH:/home/arya/Documents/kind

#alias ls="exa"
alias ls="logo-ls -D"
alias cat="bat --style=changes --theme=Dracula --paging=never"
alias glav='glava --desktop --force-mod=bars &>/dev/null &'
alias f='pactl move-source-output $(pactl list source-outputs short | grep $(pactl list short clients | grep glava | cut -f 1) | cut -f 1) @DEFAULT_MONITOR@'
alias n='pacmd set-source-volume 1 10000 && pactl set-sink-volume @DEFAULT_SINK@ 65500'
alias neofetch='neofetch --ascii_distro GNU --disable distro --disable packages --cpu_display Bar | lolcat'
alias screenfetch='screenfetch -A GNU -D LINUX'

alias ctool='wine ~/.wine/drive_c/Program\ Files\ \(x86\)/CrypTool/CrypTool.exe'
alias hibernate="systemctl hibernate"

alias sck="screenkey --no-systray -s small --opacity 0 --timeout 0.7 --no-whitespace --font-color cyan --opacity 1.0"
alias todo="vim /home/arya/Documents/todo.txt"
alias مس="ls"
alias grep="GREP_COLOR='93;100' grep --color=always"

#neofetch
cat /home/arya/Documents/logo

alias weather="curl wttr.in/tehran"
alias public_ip="curl icanhazip.com"
alias timer=' date1=`date +%s`; while true; do
   echo -ne "$(date -u --date @$((`date +%s` - $date1)) +%H:%M:%S)\r";
done '
___MY_VMOPTIONS_SHELL_FILE="${HOME}/.jetbrains.vmoptions.sh"; if [ -f "${___MY_VMOPTIONS_SHELL_FILE}" ]; then . "${___MY_VMOPTIONS_SHELL_FILE}"; fi
export EDITOR=vim

#if [ "$TMUX" = "" ]; then tmux; fi

function run_tmux() {
  BUFFER="tmux $BUFFER"
  zle accept-line
}
zle -N run_tmux
bindkey "^b" run_tmux

function run_ranger() {
  BUFFER="ranger $BUFFER"
  zle accept-line
}
zle -N run_ranger
bindkey "^x" run_ranger
