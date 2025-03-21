# follow these commands if you use bash shell
1. Install ***powerline*** using your package manager

Debian based:
```sudo apt install -y powerline```

Arch based:
```sudo pacman -Sy powerline```

Redhat based:
```sudo yum install -y powerline```

2. Run this command:
```bash
mkdir ~/.fonts || true && cd ~/.fonts && wget https://github.com/arsalanyavari/.config/blob/main/Mononoki/mononoki-Regular%20Nerd%20Font%20Complete.ttf && fc-cache -vf ~/.fonts \
&& echo -e "if [ -f `which powerline-daemon` ]; then\n\tpowerline-daemon -q\n\tPOWERLINE_BASH_CONTINUATION=1\n\tPOWERLINE_BASH_SELECT=1\n\t. $(find -L /usr/share/powerline -name "powerline.sh" | grep bash)\nfi" >> ~/.bashrc && source ~/.bashrc
```
***

# follow these commands if you use Tmux

```bash
git clone https://github.com/jimeh/tmux-themepack.git ~/.tmux-themepack \
&& tmux source ~/.tmux.conf &> /dev/null; wget -O $HOME/.tmux.conf https://raw.githubusercontent.com/arsalanyavari/.config/refs/heads/main/.tmux.conf
```
***

# follow these commands if you use vim

```bash
git clone https://github.com/arsalanyavari/vimrc.git /tmp/.vim \
&& mv /tmp/.vim/.vimrc ~/.vimrc \
&& git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim \
&& vim '+PluginInstall'
```
then press `:qa!`
***

# install mononoki font
```bash
cd /tmp && mkdir mononoki && cd mononoki && wget \
https://github.com/arsalanyavari/.config/blob/main/Mononoki/mononoki%20Bold%20Italic%20Nerd%20Font%20Complete%20Mono%20Windows%20Compatible.ttf \
https://github.com/arsalanyavari/.config/blob/main/Mononoki/mononoki%20Bold%20Italic%20Nerd%20Font%20Complete%20Mono.ttf \
https://github.com/arsalanyavari/.config/blob/main/Mononoki/mononoki%20Bold%20Italic%20Nerd%20Font%20Complete%20Windows%20Compatible.ttf \
https://github.com/arsalanyavari/.config/blob/main/Mononoki/mononoki%20Bold%20Italic%20Nerd%20Font%20Complete.ttf \
https://github.com/arsalanyavari/.config/blob/main/Mononoki/mononoki%20Bold%20Nerd%20Font%20Complete%20Mono%20Windows%20Compatible.ttf \
https://github.com/arsalanyavari/.config/blob/main/Mononoki/mononoki%20Bold%20Nerd%20Font%20Complete%20Mono.ttf \
https://github.com/arsalanyavari/.config/blob/main/Mononoki/mononoki%20Bold%20Nerd%20Font%20Complete%20Windows%20Compatible.ttf \
https://github.com/arsalanyavari/.config/blob/main/Mononoki/mononoki%20Bold%20Nerd%20Font%20Complete.ttf \
https://github.com/arsalanyavari/.config/blob/main/Mononoki/mononoki%20Italic%20Nerd%20Font%20Complete%20Mono%20Windows%20Compatible.ttf \
https://github.com/arsalanyavari/.config/blob/main/Mononoki/mononoki%20Italic%20Nerd%20Font%20Complete%20Mono.ttf \
https://github.com/arsalanyavari/.config/blob/main/Mononoki/mononoki%20Italic%20Nerd%20Font%20Complete%20Windows%20Compatible.ttf \
https://github.com/arsalanyavari/.config/blob/main/Mononoki/mononoki%20Italic%20Nerd%20Font%20Complete.ttf \
https://github.com/arsalanyavari/.config/blob/main/Mononoki/mononoki-Regular%20Nerd%20Font%20Complete%20Mono%20Windows%20Compatible.ttf \
https://github.com/arsalanyavari/.config/blob/main/Mononoki/mononoki-Regular%20Nerd%20Font%20Complete%20Mono.ttf \
https://github.com/arsalanyavari/.config/blob/main/Mononoki/mononoki-Regular%20Nerd%20Font%20Complete%20Windows%20Compatible.ttf \
https://github.com/arsalanyavari/.config/blob/main/Mononoki/mononoki-Regular%20Nerd%20Font%20Complete.ttf &&\
mv /tmp/mononoki ~/.fonts && fc-cache -vf ~/.fonts
```
