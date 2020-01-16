FROM ENV_imagename
RUN cd /mnt \
&& git clone https://github.com/spring-projects/spring-petclinic.git
RUN cd /mnt/spring-petclinic \
&& mvn package -DskipTests
