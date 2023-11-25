FROM openjdk:17-jdk-alpine
RUN addgroup --system spring && adduser --system spring --ingroup spring

USER spring:spring
WORKDIR /app
COPY --chown=appuser:appuser target/**.jar app.jar
EXPOSE 9001

ENTRYPOINT ["java","-jar","/app.jar"]
