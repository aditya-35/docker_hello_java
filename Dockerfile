FROM eclipse-temurin:21
WORKDIR /app
COPY . /app
RUN javac HelloWorld.java
CMD ["java", "HelloWorld"]
