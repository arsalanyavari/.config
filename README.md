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
&& tmux source ~/.tmux.conf &> /dev/null; wget https://github.com/arsalanyavari/.config/blob/main/.tmux.conf && mv .tmux.conf ~/.tmux.conf
```

# follow these commands if you use vim

```bash
git clone https://github.com/arsalanyavari/vimrc.git /tmp/.vim \
&& mv /tmp/.vim/.vimrc ~/.vimrc \
&& git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim \
&& vim '+PluginInstall'
```
then press `:qa!`
