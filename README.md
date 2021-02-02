# cfg -- bare repo for dotfiles

## Setup

```sh
git init --bare $HOME/.cfg
alias cfg='git --git-dir=$HOME/.cfg/ --work-tree=$HOME'
cfg remote add origin git@github.com:HongLong40/cfg.git

## Replication
```sh
git clone --separate-git-dir=$HOME/.cfg https://github.com/Siilwyn/cfg.git cfg-tmp
rsync --recursive --verbose --exclude '.git' cfg-tmp/ $HOME/
rm --recursive cfg-tmp
```

## Configuration
```sh
cfg config --local status.showUntrackedFiles no
cfg remote set-url origin git@github.com:HongLong40/cfg.git
```

## Usage
```sh
cfg status
cfg add .gitconfig
cfg add -u
cfg commit -m 'Add gitconfig'
cfg push
```


### cfg
echo "# cfg" >> README.md
git init
git add README.md
git commit -m "first commit"
git branch -M main
git remote add origin git@github.com:HongLong40/cfg.git
git push -u origin main

### note use config alias instead of git
alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'

### first-time push
config push --set-upstream git@github.com:HongLong40/cfg.git master

