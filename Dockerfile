FROM maven:3.8.3-openjdk-11 AS build

COPY pom.xml /app/
WORKDIR /app
COPY src /app/src/
COPY pomversionchange.sh /app/
RUN chmod +x /app/pomversionchange.sh
RUN /app/pomversionchange.sh
RUN mvn clean package

CMD ["java", "-jar", "/app/target/myapp.jar"]
