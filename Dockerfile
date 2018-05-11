FROM mono
LABEL maintainer "Sylvain VISTE <viste.sylvain@gmail.com>"
ARG ECO_VERSION=0.7.4.0-beta
RUN apt-get update && \
apt-get install -y wget unzip && \
rm -rf /var/cache/apt /var/lib/apt/lists
EXPOSE 3000/udp 3001
WORKDIR /app
CMD ["mono", "EcoServer.exe", "-nogui"]
RUN wget "https://s3-us-west-2.amazonaws.com/eco-releases/EcoServer_v${ECO_VERSION}.zip" -O /tmp/EcoServer.zip && \
unzip /tmp/EcoServer.zip -d /app/ && \
rm /tmp/EcoServer.zip
