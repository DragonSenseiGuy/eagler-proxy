FROM eclipse-temurin:17-jre

WORKDIR /eaglerxserver

RUN apt-get update && apt-get install -y curl && rm -rf /var/lib/apt/lists/*

COPY EaglerXServer.jar EaglerXServer.jar

EXPOSE 8081

CMD ["java", "-Xms512m", "-Xmx1G", "-jar", "EaglerXServer.jar"]
