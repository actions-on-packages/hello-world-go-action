
FROM golang:alpine AS base
RUN apk add git
RUN mkdir /app
ADD . /app
WORKDIR /app
RUN go build -o main . 
CMD ["/app/main"]

