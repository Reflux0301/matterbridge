FROM alpine:latest

RUN apk add --no-cache wget

RUN wget -O matterbridge https://github.com/42wim/matterbridge/releases/download/v1.26.0/matterbridge-1.26.0-linux-64bit

RUN chmod +x matterbridge
CMD ["./matterbridge", "-conf", "/bridge.toml"]