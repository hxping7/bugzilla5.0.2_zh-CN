# bugzilla5.0.2_zh-CN
Bugzilla 中文模板
Chinese language for bugzilla 5.0.2

Download bugzilla：
https://ftp.mozilla.org/pub/mozilla.org/webtools/bugzilla-5.0.2.tar.gz

usage：

1：please put this foldor to your bugzilla template foldor，such as：
/var/www/html/bugzilla/template#
root@ubuntu:/var/www/html/bugzilla/template# ll
total 484
drwxr-x---  4 root www-data   4096 Apr 17 15:11 ./
drwxr-x--- 15 root www-data   4096 May  1 15:43 ../
drwxr-x---  3 root www-data   4096 Apr 17 12:37 en/
-rw-r-----  1 root www-data    300 Apr 17 14:55 .htaccess
drwxr-x---  3 root www-data   4096 May  1 16:27 zh-CN/

root@ubuntu:/var/www/html/bugzilla/template# tree -L 2 -R
.
├── en
│   └── default
├── zh-CN
│   └── default

2: /var/www/html/bugzilla# ./checksetup.pl 
3: check your bugzill on right cornel of your browser 

