#!/bin/sh
 
 
FILE=`ls -A |egrep -v ".git|dotfiles-deploy.sh"`

for i in $FILE
do
    test -f ~/${i} && mv ~/${i}  ~/${i}.`date -d '1day ago' +%Y%m%d`
    cp -pr ${i} ~/${i}
done
