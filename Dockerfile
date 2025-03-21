FROM debian:latest

ENV XONOTIC_DIR="/xonotic"
ENV XONOTIC_VERSION="0.8.2"

RUN apt-get update && apt-get install -y wget unzip libgl1-mesa-glx libglib2.0-0 && rm -rf /var/lib/apt/lists/*

RUN wget https://dl.xonotic.org/xonotic-${XONOTIC_VERSION}.zip -O /xonotic.zip && \
    unzip /xonotic.zip -d / && \
    mv /Xonotic /xonotic && \
    rm /xonotic.zip

EXPOSE 26000/udp

CMD ["/xonotic/server/darkplaces-dedicated", "+serverconfig", "server.cfg"]