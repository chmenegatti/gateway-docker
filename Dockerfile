FROM golang:latest AS build

RUN apt-get update && apt-get install -y git openssh-client ca-certificates

# Argumentos para build
ARG GITLAB_USERNAME
ARG GITLAB_ACCESS_TOKEN
ARG SERVICE_NAME

ENV GO111MODULE=on

ENV GOPRIVATE=gitlab.com/ascenty/

WORKDIR /app

RUN git config --global url."https://${GITLAB_USERNAME}:${GITLAB_ACCESS_TOKEN}@gitlab.com/".insteadOf "https://gitlab.com/"

RUN git clone https://gitlab.com/ascenty/${SERVICE_NAME}.git

WORKDIR /app/${SERVICE_NAME}

RUN git checkout develop

RUN CGO_ENABLED=0 GOOS=linux GOARCH=amd64 go mod tidy

RUN CGO_ENABLED=0 GOOS=linux GOARCH=amd64 go build --ldflags="-s -w" -o ${SERVICE_NAME} # Output do build renomeado


FROM alpine:latest

ARG SERVICE_NAME

RUN apk add --no-cache tzdata

ENV TZ=America/Sao_Paulo

WORKDIR /app

COPY --from=build /app/${SERVICE_NAME}/${SERVICE_NAME} /app/

CMD ENV=${ENV} ["./${SERVICE_NAME}"] 


