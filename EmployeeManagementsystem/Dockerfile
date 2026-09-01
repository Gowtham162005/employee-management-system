FROM tomcat:9.0-jdk8-temurin

WORKDIR /app

COPY . .

RUN apt-get update && apt-get install -y maven

RUN mvn clean package -DskipTests

RUN rm -rf /usr/local/tomcat/webapps/*

RUN cp target/servlet.war /usr/local/tomcat/webapps/ROOT.war

EXPOSE 8080

CMD ["sh", "-c", "sed -i 's/\\${PORT}/8080/g' /usr/local/tomcat/conf/server.xml && catalina.sh run"]