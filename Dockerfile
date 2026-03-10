FROM eclipse-temurin:17-jre

WORKDIR /waterfall

RUN apt-get update && apt-get install -y curl && rm -rf /var/lib/apt/lists/*

RUN curl -o Waterfall.jar \
    https://api.papermc.io/v2/projects/waterfall/versions/1.21/builds/582/downloads/waterfall-1.21-582.jar

RUN mkdir -p plugins
COPY EaglercraftX_1.8_EaglerXBungee.jar plugins/EaglerXBungee.jar

COPY config.yml config.yml

EXPOSE 8081

CMD ["java", "-Xms512m", "-Xmx1G", "-jar", "Waterfall.jar"]
