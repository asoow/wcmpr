@ECHO OFF

echo 正在停止Redis进程…..
Process -k redis-server.exe

echo 正在停止mysql进程…..
Process -k mysqld.exe

echo 正在停止php5.6进程…..
Process -k php-cgi.exe

echo 正在停止caddy进程…..
Process -k caddy.exe

REM 启动redis
echo 正在启动Redis进程......
RunHiddenConsole.exe /wcmpr/redis/redis-server.exe /wcmpr/redis/redis.conf

echo 正在启动php5.6进程......
RunHiddenConsole.exe /wcmpr/php/php-cgi.exe -b 127.0.0.1:9000
echo .
echo .

REM mysqladmin -uroot -p123456 shutdown 关闭
echo 正在启动mysql进程......
RunHiddenConsole.exe /wcmpr/mysql/bin/mysqld.exe --standalone
echo .
echo .


echo 正在启动caddy进程......
RunHiddenConsole.exe /wcmpr/caddy/caddy.exe -conf /wcmpr/caddy/Caddyfile
echo .
echo .

exit