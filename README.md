# pref

### Tools

```
sudo apt-get install -yqq tmux vim git curl && \
git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim && \
git clone https://singnurkar@github.com/singnurkar/pref.git ~/pref && \
ln -s pref/.vimrc ~/.vimrc && \
ln -s pref/.tmux.conf ~/.tmux.conf && \
rm -rf ~/.profile && ln -s pref/.profile ~/.profile && \
git config --global user.email "singnurkar@users.noreply.github.com" && \
git config --global user.name "Akshay Singnurkar"
```

### Go

```
curl -sSO https://godeb.s3.amazonaws.com/godeb-amd64.tar.gz && \
sudo tar -xvf godeb-amd64.tar.gz -C /usr/bin/ && \
godeb install
```

### RethinkDB

````
source /etc/lsb-release && echo "deb http://download.rethinkdb.com/apt $DISTRIB_CODENAME main" | sudo tee /etc/apt/sources.list.d/rethinkdb.list
wget -qO- https://download.rethinkdb.com/apt/pubkey.gpg | sudo apt-key add -
sudo apt-get update
sudo apt-get install rethinkdb
````
