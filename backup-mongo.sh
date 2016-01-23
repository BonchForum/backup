ssh root@bnch.ru 'mongodump; cp -r nodebb/public/uploads ./uploads; tar -cvf backup-temp.tar dump uploads';
scp root@bnch.ru:backup-temp.tar backup-$(date --iso).tar;
ssh root@bnch.ru 'rm -r -f ./uploads dump backup-temp.tar';