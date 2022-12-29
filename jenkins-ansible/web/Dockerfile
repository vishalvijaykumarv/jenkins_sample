FROM remote-host 
COPY ./conf/nginx.repo /etc/yum.repos.d/nginx.repo 

RUN yum -y install yum-utils
RUN yum-config-manager --enable nginx-mainline
RUN yum -y install nginx

RUN yum -y install http://rpms.remirepo.net/enterprise/remi-release-7.rpm
RUN yum-config-manager --enable remi-php71

RUN  yum -y update
# RUN yum -y install php71 \
#     php71-php-fpm.x86_64 \
#     php71-php-cli.x86_64 \
#     php71-php-mysqlnd.x86_64 \
#     php71-php-soap.x86_64 \
#     php71-php-xml.x86_64 \
#     php71-php-zip.x86_64 \
#     php71-php-json.x86_64 \
#     php71-php-mcrypt.x86_64 \
#     php71-php-mbstring.x86_64 \
#     php71-php-zip.x86_64 \
#     php71-php-gd.x86_64 

RUN yum -y install php \
    php-fpm \
    php-cli \
    php-mysqlnd \
    php-soap \
    php-xml \
    php-zip \
    php-json \
    php-mcrypt \
    php-mbstring \
    php-zip \
    php-gd

RUN yum -y install nano
RUN yum clean all

EXPOSE 80 443

VOLUME /var/www/html /var/log/nginx /var/log/php-fpm /var/lib/php-fpm
COPY ./index.php /var/www/html/

COPY ./conf/nginx.conf /etc/nginx/conf.d/default.conf
COPY ./bin/start.sh /start.sh

RUN chmod +x /start.sh
CMD /start.sh
