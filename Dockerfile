FROM eclipse-temurin:17-jre

WORKDIR /eaglerxserver

RUN apt-get update && apt-get install -y curl && rm -rf /var/lib/apt/lists/*

COPY EaglerXServer.jar EaglerXServer.jar

EXPOSE 8081

CMD ["java", "-cp", "EaglerXServer.jar", "net.lax1dude.eaglercraft.v1_8.plugin.gateway_bungeecord.EaglerXServerMain"]
