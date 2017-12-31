#/bin/sh
rm -rf /error_*.html
rm -rf /vhs/kangle/www/index.html
cd /
wget https://raw.githubusercontent.com/moehu/shell/master/error/error_403.html
wget https://raw.githubusercontent.com/moehu/shell/master/error/error_503.html 
wget https://raw.githubusercontent.com/moehu/shell/master/error/error_404.html 
wget https://raw.githubusercontent.com/moehu/shell/master/error/error_504.html
wget https://raw.githubusercontent.com/moehu/shell/master/error/index.html -P /vhs/kangle/www
