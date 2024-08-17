FROM debian:stable-slim
ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update -y && apt-get install -y \
    python3 \
    python3-pip \
    python3-venv \
    build-essential python3-dev \
    --no-install-recommends \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

RUN apt install gcc -y

RUN pip3 install --no-cache-dir flask uwsgi --break-system-packages

WORKDIR /app

COPY start.sh /etc/

RUN chmod +x /etc/start.sh

EXPOSE 5000

CMD ["/etc/start.sh"]
