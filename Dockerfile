FROM golang:1.8.3

RUN go get github.com/aktau/github-release

ADD docker-entrypoint.sh /docker-entrypoint.sh
ENTRYPOINT ["/docker-entrypoint.sh"]
