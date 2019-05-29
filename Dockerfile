FROM golang:1.11-alpine

WORKDIR /go/src/go-web-server

COPY . .
RUN go get -d -v ./...
RUN go install -v ./...

# CMD ["go-web-server"]
CMD ["./main"]
 