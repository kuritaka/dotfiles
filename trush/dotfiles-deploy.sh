#!/bin/sh
# 
# cd ~dotfiles
# chmod +x ./dotfiles-deploy.sh
# ./dotfiles-deploy.sh
#

#----------------------------------------------------------------
# File
#----------------------------------------------------------------
FILE=`ls -aF |grep -v / |egrep -v "dotfiles-deploy.sh|README.md|_for_"`

for i in $FILE
do
    test -f ~/${i} && mv ~/${i}  ~/${i}.`date -d '1day ago' +%Y%m%d`
    cp -pr ${i} ~/${i}
done

cat << @
#Copy and Paste For Linux
mv ~/.bashrc ~/.bashrc.`date -d '1day ago' +%Y%m%d` ; cp -p .bashrc_for_linux ~/.bashrc
mv ~/.vimrc ~/.vimrc.`date -d '1day ago' +%Y%m%d` ; cp -p .vimrc_for_linux ~/.vimrc


#Copy and Paste For Windows
mv ~/.bashrc ~/.bashrc.`date -d '1day ago' +%Y%m%d` ; cp -p .bashrc_for_win ~/.bashrc
mv ~/.vimrc ~/.vimrc.`date -d '1day ago' +%Y%m%d` ; cp -p .vimrc_for_win ~/.vimrc
@



#----------------------------------------------------------------
# Directory
#----------------------------------------------------------------
DIR=`ls -aF |grep / |egrep -v "\./|\.\./|.git"`

for i in $DIR
do
    FILE=`ls -A $DIR`
    for i in $FILE
    do
        test -e ~/${DIR}${i} && mv ~/${DIR}${i}  ~/${DIR}${i}.`date -d '1day ago' +%Y%m%d`
        cp -pr ${i} ~/${DIR}${i}
    done
done




exit