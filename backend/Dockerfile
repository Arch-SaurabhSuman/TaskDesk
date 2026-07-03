# Stage 1: Build
FROM golang:1.22-alpine AS builder
WORKDIR /app
COPY go.mod ./
RUN go mod download
COPY main.go ./
RUN CGO_ENABLED=0 GOOS=linux go build -o server main.go

# Stage 2: Run (chhota final image -- ye Docker ka "multi-stage build" concept hai,
# jo tune abhi tak nahi dekha -- iska fayda README mein samjhaya hai)
FROM alpine:latest
WORKDIR /root/
COPY --from=builder /app/server .
EXPOSE 8080
CMD ["./server"]
