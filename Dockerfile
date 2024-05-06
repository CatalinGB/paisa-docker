FROM ananthakumaran/paisa:latest

RUN apk update && apk add --no-cache beancount
