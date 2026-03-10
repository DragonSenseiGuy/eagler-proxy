FROM eclipse-temurin:17-jre

WORKDIR /waterfall

RUN apk add --no-cache curl && \
    curl -o Waterfall.jar \
    https://api.papermc.io/v2/projects/waterfall/versions/1.20/builds/549/downloads/waterfall-1.20-549.jar

RUN mkdir -p plugins
COPY EaglerXBungee.jar plugins/EaglerXBungee.jar

COPY config.yml config.yml

EXPOSE 8081

CMD ["java", "-Xms512m", "-Xmx1G", "-jar", "Waterfall.jar"]
