FROM openjdk:11-jre-slim
 ENTRYPOINT ["java", "-jar", "/app/myapp.jar"]
