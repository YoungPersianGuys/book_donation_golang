FROM golang:latest

ADD . /app

WORKDIR /app

RUN go mod download

RUN CGO_ENABLED=0 GOOS=linux GOARCH=amd64 go build

EXPOSE 8000

CMD ./book_donation