FROM golang:1.9

USER nobody

RUN mkdir -p /go/src/github.com/agajdosi/go-minimal-ex
WORKDIR /go/src/github.com/agajdosi/go-minimal-ex
COPY . /go/src/github.com/agajdosi/go-minimal-ex

RUN go-wrapper download && go-wrapper install

CMD ["go-wrapper", "run"]
