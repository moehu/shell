#!/bin/sh
PREFIX="/vhs/kangle/ext/tpl_php7113"
wget wget -c https://raw.githubusercontent.com/moehu/kangle/master/php/7.1/7113/php-7.1.13.tar.bz2 -O php-7.1.13.tar.bz2
tar xjf php-7.1.13.tar.bz2
cd /php-7.1.13/ext/fileinfo
/vhs/kangle/ext/tpl_php7113/bin/phpize
./configure -with-php-config=/vhs/kangle/ext/tpl_php7113//bin/php-config --enable-fileinfo
make && make install
cd /vhs/kangle/ext/tpl_php7113
rm -rf php-templete.ini
wget https://raw.githubusercontent.com/moehu/kangle/master/php/7.1/7113/php-templete.ini -O $PREFIX/php-templete.ini
/vhs/kangle/bin/kangle -r
