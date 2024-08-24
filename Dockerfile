FROM golang:latest

WORKDIR .

COPY . .

RUN go get golang.org/x/tools/cmd/present

EXPOSE 3999

RUN go run golang.org/x/tools/cmd/present
