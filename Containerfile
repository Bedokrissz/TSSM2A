FROM		ubi7
MAINTAINER	Bedő Kristóf <bedokrissz@gmail.com>
LABEL		description="Hazi feladat"
RUN		yum install -y httpd && \
		yum clean all
COPY 		./HF/index.html /var/www/html/
EXPOSE		80
CMD		["httpd", "-D", "FOREGROUND"]
