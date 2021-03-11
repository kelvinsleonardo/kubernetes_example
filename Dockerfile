FROM golang:1.15

WORKDIR /go/src/appgo
COPY . .
RUN GOOS=linux go build
CMD ["./appgo"]