FROM openjdk:17-jdk-alpine
RUN addgroup --system spring && adduser --system spring --ingroup spring

USER spring:spring

ARG JAR_FILE=target/*.jar
COPY ${JAR_FILE} app.jar
EXPOSE 9001

ENTRYPOINT ["java","-jar","/app.jar"]