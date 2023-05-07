FROM ubuntu:18.04
RUN  apt-get update
RUN  apt-get install -y apache2 curl net-tools
ADD ./EflyerWebsite-Template.com/* var/www/html/ 
RUN  cd /html/* /var/www/html/EflyerWebsite-Template.com
RUN cp -r /var/www/html/EflyerWebsite-Template.com/* /var/www/html/
COPY ./html/* /var/www/html
ENTRYPOINT apachectl -D FOREGROUND
EXPOSE 80
