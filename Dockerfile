FROM openjdk:11-jdk
WORKDIR /app
COPY . /app
RUN ./mvnw clean package -DskipTests
CMD ["java", "-jar", "target/SimpleJavaApplication.jar"]
