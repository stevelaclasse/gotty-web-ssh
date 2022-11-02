FROM golang:1.19-alpine

ENV CGO_ENABLED=0
ENV GOOS=linux
ENV GO111MODULE=on

RUN mkdir /app && apk add --update --no-cache git make npm openssh openssh-client

COPY . /go/gotty
WORKDIR /go/gotty



RUN rm -f gotty && make all && mv gotty /app/ && mv webshell.sh /app/webshell.sh && mv ssh-session.sh /app/ssh-session.sh && /app/gotty -v

WORKDIR /app
RUN rm -r /go/gotty

CMD ["sh","/app/webshell.sh"]