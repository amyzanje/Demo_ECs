FROM 564572526252.dkr.ecr.us-east-1.amazonaws.com/httpdimg

# Install dependencies
RUN apt-get update -y

# change directory

RUN cd /usr/local/apache2

COPY ./dd/ /usr/local/apache2/htdocs

# exposes port 80 on the container
EXPOSE 80

# set the default application that will start when the container start
#ENTRYPOINT ["/usr/sbin/httpd", "-D", "FOREGROUND"]

