alias vimrc="vim ~/.vimrc"
alias tmuxrc="vim ~/.tmux.conf"
alias profile="vim ~/.profile"
alias readme="vim ~/pref/README.md"

alias gg="git clone"
alias ga="git add -A :/"
alias gc="git commit -a -m"
alias gx="git checkout"
alias gl="git pull"
alias gp="git push"
alias gs="git status"
alias gd="git diff"
alias gw="git rev-parse --abbrev-ref HEAD"

function gr() {
    git rebase -i $(git merge-base `git rev-parse --abbrev-ref HEAD` master)
}

function ge() {
    git reset HEAD^1
    git add -A :/
    git commit --amend
}

function v() {
    vagrant $1
}

function serve() {
    python -m SimpleHTTPServer $1
}

export GOPATH="$HOME/go"
export PATH="$PATH:$GOPATH/bin"

# if running bash
if [ -n "$BASH_VERSION" ]; then
    # include .bashrc if it exists
    if [ -f "$HOME/.bashrc" ]; then
	. "$HOME/.bashrc"
    fi
fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/bin" ] ; then
    PATH="$HOME/bin:$PATH"
fi

export NVM_DIR="/Users/singnurkar/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm
