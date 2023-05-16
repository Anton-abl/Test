FROM maven:3.8.3-openjdk-11 AS build
COPY target/myapp-*.jar /myapp.jar
COPY pomversionchange.sh ./
RUN chmod +x pomversionchange.sh
RUN ./pomversionchange.sh
CMD ["java", "-jar", "/myapp.jar"]
