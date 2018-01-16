#!/bin/sh
 
 
FILE=".vimrc .bashrc"
cd ~/
for i in $FILE
do
    test -f ~/${i} && cp ~/${i}  ~/${i}.`date -d '1day ago' +%Y%m%d`
    ln -s ~/dotfiles/${i} ~/${i}
done
