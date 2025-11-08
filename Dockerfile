FROM openjdk:11-jre-slim
COPY HelloWorld.java /app
WORKDIR /app
RUN javac HelloWorld.java
CMD ["java", "HelloWorld"]
