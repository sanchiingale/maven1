FROM maven:3.5.4-jdk-8-alpine as maven
COPY ${JAR_FILE}maven1.jar
CMD ["java", "-jar", "./sanchiingale/maven1.jar"] 
