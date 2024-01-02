FROM ubuntu:latest

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && \
    apt-get install -y build-essential gcc make gdb cmake && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

WORKDIR /workspace

CMD [ "bash" ]
