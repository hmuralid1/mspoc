FROM registry.ng.bluemix.net/ibmliberty
ENV JAVA_OPTS=""
VOLUME /tmp
ADD target/mspoc01-1.jar app.jar
ENTRYPOINT [ "sh", "-c", "java $JAVA_OPTS -Djava.security.egd=file:/dev/./urandom -jar /app.jar" ] 
