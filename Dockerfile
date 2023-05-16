FROM maven:3.8.3-openjdk-11 AS build

COPY pom.xml /app/
WORKDIR /app
COPY src /app/src/
COPY pomversionchange.sh ./ /app/
COPY /src/run.sh ./ /app/
RUN chmod +x /app/pomversionchange.sh
RUN mvn package
RUN chmod +x src/run.sh
CMD ["java", "-jar", "/app/target/*.jar"]
