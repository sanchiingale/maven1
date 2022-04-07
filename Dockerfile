FROM maven:3.5.4-jdk-8-alpine as maven
COPY ./pom.xml ./pom.xml
COPY ./src ./src
RUN mvn dependency:go-offline -B
RUN mvn package
FROM openjdk:8u171-jre-alpine
WORKDIR /sanchiingale
COPY --from=maven target/mavenproject1-*.jar ./sanchiingale/maven1.jar
CMD ["java", "-jar", "./sanchiingale/maven1.jar"] 
