FROM eclipse-temurin:17-jre

WORKDIR /eaglerxserver

RUN apt-get update && apt-get install -y curl && rm -rf /var/lib/apt/lists/*

# Copy EaglerXServer jar (put it in your repo just like you did with EaglerXBungee)
COPY EaglerXServer.jar EaglerXServer.jar

# Copy your server config
COPY settings.yml settings.yml

EXPOSE 8081

CMD ["java", "-Xms512m", "-Xmx1G", "-jar", "EaglerXServer.jar"]