# NeoVIM configuration

## PRE-REQUISITES
Brew some stuff
```
brew install nvm ripgrep ag
npm install -g typescript node
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
