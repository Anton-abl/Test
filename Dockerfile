FROM maven:3.8.3-openjdk-11 AS build

COPY pom.xml /app/
WORKDIR /app
COPY src /app/src/
COPY pomversionchange.sh ./ /app/
FROM base AS run
RUN chmod +x /app/pomversionchange.sh
RUN mvn package

CMD ["java", "-jar", "/app/target/*.jar"]
