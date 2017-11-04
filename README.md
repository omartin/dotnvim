# NeoVIM configuration

## Installing a plugin
```
git submodule add https://github.com/pluginname pack/bundle/start/pluginname
```

## Updating plugins
```
git submodule update --remote --merge
```

## Removing a plugin
```
git submodule deinit vim/pack/bundle/start/nameofplugin
git rm vim/pack/bundle/start/nameofplugin
rm -Rf .git/modules/vim/pack/bundle/start/nameofplugin
```

