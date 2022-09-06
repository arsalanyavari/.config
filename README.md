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
echo -e "if [ -f `which powerline-daemon` ]; then\n\tpowerline-daemon -q\n\tPOWERLINE_BASH_CONTINUATION=1\n\tPOWERLINE_BASH_SELECT=1\n\t. $(find -L /usr/share/powerline -name "powerline.sh" | grep bash)\nfi" >> ~/.bashrc && source ~/.bashrc
```
***