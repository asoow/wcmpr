@ECHO OFF

echo 正在停止Redis进程…..
Process -k redis-server.exe

echo 正在停止mysql进程…..
Process -k mysqld.exe

echo 正在停止php5.6进程…..
Process -k php-cgi.exe

echo 正在停止caddy进程…..
Process -k caddy.exe

exit