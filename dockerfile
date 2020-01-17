--FROM env_imagename
--RUN cd /mnt \
--&& git clone https://github.com/spring-projects/spring-petclinic.git
--RUN cd /mnt/spring-petclinic \
--&& mvn package -DskipTests


FROM ubuntu
MAINTAINER Romin Irani
RUN apt-get update
RUN apt-get install -y nginx
COPY index.html /usr/share/nginx/html/
ENTRYPOINT [“/usr/sbin/nginx”,”-g”,”daemon off;”]
EXPOSE 80 
ARG environment
ENV environment=${environment:-production}  
