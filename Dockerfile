FROM alpine:latest

RUN apk add --no-cache bind-tools

COPY test.sh /test.sh

RUN chmod +x /test.sh

CMD ["/test.sh"]
