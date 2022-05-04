FROM golang:1.18.1-buster
WORKDIR /app
COPY . /app
WORKDIR /app/src
RUN go install
RUN go build
EXPOSE 3000
CMD [ "test-docker" ]


