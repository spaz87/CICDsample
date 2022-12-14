FROM golang:latest

WORKDIR /home/app

COPY go.mod ./
RUN go mod download

COPY *.go ./
RUN go build -o /go-test

EXPOSE 80

CMD ["/go-test"]