# cfg
echo "# cfg" >> README.md
git init
git add README.md
git commit -m "first commit"
git branch -M main
git remote add origin git@github.com:HongLong40/cfg.git
git push -u origin main

## note use config alias instead of git
alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'

# first-time push
config push --set-upstream git@github.com:HongLong40/cfg.git master

