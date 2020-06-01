#!/bin/sh
 
 
FILE=`ls -A |egrep -v ".git|dotfilelink.sh"`

for i in $FILE
do
    test -f ~/${i} && cp ~/${i}  ~/${i}.`date -d '1day ago' +%Y%m%d`
    mv ${i} ~/${i}
done
