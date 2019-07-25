# NeoVIM configuration

## INSTALLATION
Clone the repo:
```
    git clone git@github.com:omartin/dotnvim.git ~/.nvim
```

Create symlink:
```
    ln -s ~/.nvim ~/.config/nvim
```

Switch to the `~/.nvim` directory, and fetch submodules:
```
    cd ~/.nvim
    git submodule init
    git submodule update
```

Initialize plugins :
```
cd ~/.nvim/pack/bundle/start/ycm
git submodule update --init --recursive
npm install -g typescript node
./install.py --js-completer
cd ~/.nvim/pack/bundle/start/nvim-typescript
./install.sh
```

## PLUGINS
### Installing a plugin
```
git submodule add https://github.com/pluginname pack/bundle/start/pluginname
```

### Updating plugins
```
git submodule update --remote --merge
```

### Removing a plugin
```
git submodule deinit pack/bundle/start/NAMEOFPLUGIN
git rm pack/bundle/start/NAMEOFPLUGIN
rm -Rf .git/modules/pack/bundle/start/NAMEOFPLUGIN
```

