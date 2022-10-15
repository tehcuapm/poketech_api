FROM golang:alpine3.16

WORKDIR /app

COPY ./ .
COPY .env .

RUN go get -d -v ./
RUN go install -v ./

EXPOSE 8080

CMD ["go", "run", "main.go"]

