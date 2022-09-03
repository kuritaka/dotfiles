# My Dotfiles



## How to use

### Linux

```
~]$ cd
~]$ test -e dotfiles && mv dotfiles dotfiles.`date -d '1day ago' +%Y%m%d`
~]$ git clone https://github.com/kuritaka/dotfiles
~]$ cd dotfiles
```


## My Dotfiles List

```
$ tree -a -I .git
.
├── .bash_profile
├── .bashrc_for_linux
├── .bashrc_for_win
├── .gitconfig
├── .minttyrc
├── .ssh
│   └── config
├── .tigrc
├── .vifm
│   ├── bookmarkt.txt
│   ├── colors
│   │   ├── near-default.vifm
│   │   ├── onedark.vifm
│   │   └── solarized-dark.vifm
│   ├── vifmrc_linux
│   ├── vifmrc_mac
│   ├── vifmrc_win
│   └── vifmrc_win_wsl
├── .vim
│   ├── colors
│   │   ├── atom-dark-256.vim
│   │   ├── atom-dark.vim
│   │   └── monokai.vim
│   ├── dummy.txt
│   ├── ftdetect
│   │   ├── cisco.vim
│   │   └── junos.vim
│   └── syntax
│       ├── cisco.vim
│       └── junos.vim
├── .vimrc_for_linux
├── .vimrc_for_win
├── .zshrc
├── README.md
├── cheat_cd
├── cheat_git
├── cheat_ssh
├── cheat_vagrant
├── cheat_vim
└── trush
    └── dotfiles-deploy.sh
```


# Reference
## vim
* momota/junos.vim  https://github.com/momota/junos.vim
* momota/cisco.vim  https://github.com/momota/cisco.vim

