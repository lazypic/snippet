# repair brew
```
sudo chown -R $(whoami):admin /usr/local

cd /usr/local
git reset --hard
git clean -df
brew update
```
