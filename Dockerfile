FROM alpine:3.16
RUN apk --no-cache add ca-certificates ledger
WORKDIR /root/

RUN curl -s https://api.github.com/repos/ananthakumaran/paisa/releases/latest | grep paisa-linux-amd64 | cut -d : -f 2,3 | tr -d \" | wget -qi -

RUN mv paisa-* paisa
RUN chmod u+x paisa
RUN mv paisa /usr/local/bin

EXPOSE 7500
CMD ["paisa", "serve"]

WORKDIR /paisa
