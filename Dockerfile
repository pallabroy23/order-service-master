#FROM maven:3.5-jdk-8
##FROM java:8
##ADD ["target/order-service-0.0.1-SNAPSHOT-exec.jar", "app.jar"]
#COPY ./ ./
#EXPOSE 8383 8787
#ENV JAVA_OPTS="-Xdebug -Xrunjdwp:server=y,transport=dt_socket,address=8787,suspend=n"
##RUN sh -c 'touch /app.jar'
#RUN mvn package -DskipTests=true
##ENTRYPOINT [ "bat", "-c", "java $JAVA_OPTS -Djava.security.egd=file:/dev/./urandom -Dspring.profiles.active=docker -jar /app.jar" ]
#ENTRYPOINT [ "bat", "-c", "java $JAVA_OPTS -Djava.security.egd=file:/dev/./urandom -Dspring.profiles.active=docker -jar ./target/order-service-0.0.1-SNAPSHOT-exec.jar" ]



########################################################################

FROM openjdk:8
EXPOSE 8080
ADD target/order-service-0.0.1-SNAPSHOT-exec.jar order-service-0.0.1-SNAPSHOT-exec.jar
ENTRYPOINT ["java","-jar",,"/order-service-0.0.1-SNAPSHOT-exec.jar"]