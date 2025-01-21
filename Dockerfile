FROM golang:1.22.5 AS builder  

WORKDIR /app

COPY go.mod ./
RUN go mod download
COPY . .

ENV GOOS=linux
ENV GOARCH=amd64
RUN go build -buildvcs=false -o main .

FROM debian:buster-slim

WORKDIR /app
COPY --from=builder /app/main /app/main
# Add this line to copy static files
COPY --from=builder /app/static /app/static

EXPOSE 8080

CMD ["./main"]