FROM openjdk:8-jdk-alpine
RUN addgroup -S spring && adduser -S spring -G spring
EXPOSE 8080
RUN mkdir images
ARG JAR_FILE=./target/*.jar
COPY ${JAR_FILE} app.jar
VOLUME ["/app/spring-boot"]
CMD ["java","-jar","/app.jar"]
