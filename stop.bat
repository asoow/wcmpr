@ECHO OFF

echo ����ֹͣRedis���̡�..
Process -k redis-server.exe

echo ����ֹͣmysql���̡�..
Process -k mysqld.exe

echo ����ֹͣphp5.6���̡�..
Process -k php-cgi.exe

echo ����ֹͣcaddy���̡�..
Process -k caddy.exe

exit