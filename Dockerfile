FROM httpd:2.4-alpine

VOLUME /usr/local/apache2/htdocs /usr/local/apache2/log

RUN mkdir -p /usr/local/apache2/log; \
echo "<VirtualHost *:80>" >> /usr/local/apache2/conf/httpd.conf ;\
echo "  CustomLog log/access_log combined" >> /usr/local/apache2/conf/httpd.conf ;\
echo "  ErrorLog log/access_log" >> /usr/local/apache2/conf/httpd.conf ;\
echo "</VirtualHost>" >> /usr/local/apache2/conf/httpd.conf
