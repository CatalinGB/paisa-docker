FROM alpine:3.16
RUN apk --no-cache add ca-certificates ledger
WORKDIR /root/

RUN curl --output paisa https://github.com/ananthakumaran/paisa/releases/latest/download/paisa-linux-amd64
RUN chmod u+x paisa
RUN mv paisa /usr/local/bin

EXPOSE 7500
CMD ["paisa", "serve"]

WORKDIR /paisa
