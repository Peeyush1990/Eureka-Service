FROM openjdk
LABEL maintainer="abc@mail.com"
EXPOSE 8761
WORKDIR /app
COPY target/eurekaservice.jar /app/eurekaservice.jar
ENTRYPOINT ["java", "-jar", "eurekaservice.jar"]