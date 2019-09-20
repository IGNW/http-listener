FROM golang:alpine as builder
RUN apk update && apk upgrade && \
    apk add --no-cache bash git openssh
RUN mkdir /build 
ADD . /build/
WORKDIR /build 
RUN go get -u github.com/gorilla/mux
RUN go build -o main .
FROM alpine
RUN adduser -S -D -H -h /app appuser
USER appuser
COPY --from=builder /build/main /app/
EXPOSE 8080
WORKDIR /app
CMD ["./main"]
