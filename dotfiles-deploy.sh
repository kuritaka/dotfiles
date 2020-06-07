#!/bin/sh
# 
# cd ~dotfiles
# ./dotfiles-deploy.sh
#
 
FILE=`ls -A |egrep -v ".git|dotfiles-deploy.sh|_for_"`

for i in $FILE
do
    test -e ~/${i} && mv ~/${i}  ~/${i}.`date -d '1day ago' +%Y%m%d`
    cp -pr ${i} ~/${i}
done

cat << @
#For Linux
mv ~/.bashrc ~/.bashrc.`date -d '1day ago' +%Y%m%d` ; cp -p .bashrc_for_linux ~/.bashrc
mv ~/.vimrc ~/.vimrc.`date -d '1day ago' +%Y%m%d` ; cp -p .vimrc_for_linux ~/.vimrc

#For Windows
mv ~/.bashrc ~/.bashrc.`date -d '1day ago' +%Y%m%d` ; cp -p .bashrc_for_win ~/.bashrc
mv ~/.vimrc ~/.vimrc.`date -d '1day ago' +%Y%m%d` ; cp -p .vimrc_for_win ~/.vimrc

@
exit