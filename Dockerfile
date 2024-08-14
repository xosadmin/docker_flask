FROM debian:latest
ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update -y && apt-get install -y \
    python3 \
    python3-pip \
    python3-venv \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /app

COPY start.sh /etc/

RUN chmod +x /etc/start.sh

EXPOSE 5000

CMD ["/etc/start.sh"]
