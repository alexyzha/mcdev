# Select image + download jdk
FROM ubuntu:24.04
ENV DEBIAN_FRONTEND=noninteractive
RUN apt-get update && \
	apt-get install -y \
		openjdk-21-jdk-headless \
		curl \
	&& rm -rf /var/lib/apt/lists/*

# Setwd
WORKDIR /srv/minecraft

# Setup server
ARG MC_VERSION=1.21.5
ARG BUILD_NUMBER=114
RUN curl -sSL \
	"https://api.papermc.io/v2/projects/paper/versions/${MC_VERSION}/builds/${BUILD_NUMBER}/downloads/paper-${MC_VERSION}-${BUILD_NUMBER}.jar" \
	-o paper.jar
COPY start.sh /srv/minecraft/start.sh
RUN chmod +x /srv/minecraft/start.sh

# Expose port, run server
EXPOSE 25565
VOLUME ["/srv/minecraft/world"]
RUN echo "eula=true" > eula.txt

# Set user
ARG HOST_USER_ID=1000
ARG HOST_GROUP_ID=1000
RUN mkdir -p /srv/minecraft/cache \
	&& chown -R ${HOST_USER_ID}:${HOST_GROUP_ID} /srv/minecraft
USER ${HOST_USER_ID}:${HOST_GROUP_ID}
ENTRYPOINT ["bash", "/srv/minecraft/start.sh"]
