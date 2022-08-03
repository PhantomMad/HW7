FROM debian:11.3
RUN apt update \
 && apt install -y git \
 && rm -rf /var/lib/apt/lists/*
WORKDIR /opt
RUN mkdir maven \
    && mkdir webapps \
    && mkdir tmp \
    && mkdir java
COPY start.sh .
RUN chmod +x start.sh
CMD ["/bin/sh", "/opt/start.sh"]