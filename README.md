# NeoVIM configuration

## PRE-REQUISITES
Brew some stuff
```
brew install nvm ripgrep ag
npm install -g typescript typescript-language-server diagnostic-languageserver eslint_d
```

## INSTALLATION
Clone the repo:
```
    git clone git@github.com:omartin/dotnvim.git ~/.nvim
```

Create symlink:
```
    ln -s ~/.nvim ~/.config/nvim
```

Install paq
```
git clone https://github.com/savq/paq-nvim.git \
    "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/pack/paqs/opt/paq-nvim
```

## POST-INSTALL
Lauch neovim and initialize the plugins
```
:PaqInstall
```
