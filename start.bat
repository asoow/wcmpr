@ECHO OFF

echo ����ֹͣRedis���̡�..
Process -k redis-server.exe

echo ����ֹͣmysql���̡�..
Process -k mysqld.exe

echo ����ֹͣphp5.6���̡�..
Process -k php-cgi.exe

echo ����ֹͣcaddy���̡�..
Process -k caddy.exe

REM ����redis
echo ��������Redis����......
RunHiddenConsole.exe /wcmpr/redis/redis-server.exe /wcmpr/redis/redis.conf

echo ��������php5.6����......
RunHiddenConsole.exe /wcmpr/php/php-cgi.exe -b 127.0.0.1:9000
echo .
echo .

REM mysqladmin -uroot -p123456 shutdown �ر�
echo ��������mysql����......
RunHiddenConsole.exe /wcmpr/mysql/bin/mysqld.exe --standalone
echo .
echo .


echo ��������caddy����......
RunHiddenConsole.exe /wcmpr/caddy/caddy.exe -conf /wcmpr/caddy/Caddyfile
echo .
echo .

exit