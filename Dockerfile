FROM anjuna91/jenkins-docker
MAINTAINER Adil khan
RUN java -jar $WORKSPACE/target/*.jar &
CMD ["/usr/bin/java", "-jar", "-Dspring.profiles.active=default", "$WORKSPACE/target/*.jar"]
