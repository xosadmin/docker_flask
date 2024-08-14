FROM debian:latest
ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update -y && apt-get install -y \
    python3 \
    python3-pip \
    python3-venv \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /app

COPY start.sh /app/

RUN chmod +x /app/start.sh

EXPOSE 8000

CMD ["/app/start.sh"]
