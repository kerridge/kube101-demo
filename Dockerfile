FROM golang:alpine
RUN mkdir /app
COPY . /app
WORKDIR /app
# RUN go build -o main . 
# Build the Go app
RUN CGO_ENABLED=0 GOOS=linux go build -a -installsuffix cgo -o main .
# Expose port 8080 to the outside world
EXPOSE 9090
CMD ["/app/main"]