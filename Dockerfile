FROM ubuntu:latest

RUN apt-get update && \
    apt-get install -y build-essential gcc make gdb && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

WORKDIR /workspace

CMD [ "bash" ]
