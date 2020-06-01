#!/bin/sh
 
 
FILE=`ls -A |egrep -v ".git|dotfiles-deploy.sh"`

for i in $FILE
do
    test -e ~/${i} && mv ~/${i}  ~/${i}.`date -d '1day ago' +%Y%m%d`
    mv ${i} ~/${i}
done
