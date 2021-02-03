# cfg -- bare repo for dotfiles

## Setup

```sh
git init --bare $HOME/.cfg
alias cfg='git --git-dir=$HOME/.cfg/ --work-tree=$HOME'
cfg remote add origin git@github.com:HongLong40/cfg.git
```

## Clone to another system

```sh
git clone --bare https://github.com/HongLong40/cfg.git $HOME/.cfg
alias cfg='git --git-dir=$HOME/.cfg/ --work-tree=$HOME'
cfg config --local status.showUntrackedFiles no
cfg checkout -f
```

## Replication
```sh
git clone --separate-git-dir=$HOME/.cfg https://github.com/HongLong40/cfg.git cfg-tmp
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

### first-time push
```sh
cfg push --set-upstream git@github.com:HongLong40/cfg.git master
```

## Credit
https://www.atlassian.com/git/tutorials/setting-up-a-repository/git-config
https://news.ycombinator.com/item?id=11070797
https://github.com/Siilwyn/my-dotfiles/tree/master/.my-dotfiles
