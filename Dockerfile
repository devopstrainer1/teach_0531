[root@docker tmp]# cat Dockerfile 
FROM ubuntu
RUN apt-get update
RUN apt-get install -y vim
RUN apt-get install -y nginx
RUN rm /var/www/html/*
WORKDIR /var/www/html/
RUN echo "<H1> learning docker </H1>" > index.html
EXPOSE 80
CMD /usr/sbin/nginx -g "daemon off;"

---------------------------------------------

[root@docker tmp]# cat raj
FROM mayank
RUN rm /var/www/html/*
COPY index.html /var/www/html/
