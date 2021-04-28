# NeoVIM configuration

## PRE-REQUISITES
Brew some stuff
```
brew install nvm ripgrep ag ninja
npm install -g typescript node
```

Install [lua-language-server](https://github.com/sumneko/lua-language-server/wiki/Build-and-Run-(Standalone))

## INSTALLATION
Clone the repo:
```
    git clone git@github.com:omartin/dotnvim.git ~/.nvim
```

Create symlink:
```
    ln -s ~/.nvim ~/.config/nvim
```

Install vim-plug
```
curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
```

## POST-INSTALL
Lauch vim and initialize the plugins
```
:PlugInstall
```
