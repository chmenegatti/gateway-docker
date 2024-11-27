# Dockerfile.service-name
FROM golang:1.21-alpine

# Argumentos para build
ARG GITLAB_USERNAME
ARG GITLAB_ACCESS_TOKEN
ARG SERVICE_NAME

# Configurar git para repositórios privados
RUN apk add --no-cache git
RUN git config --global url."https://${GITLAB_USERNAME}:${GITLAB_ACCESS_TOKEN}@gitlab.com/".insteadOf "https://gitlab.com/"

# Definir diretório de trabalho
WORKDIR /app

# Copiar o código fonte
COPY ./${SERVICE_NAME} .

# Build da aplicação
RUN go build -o main

# Configurar variável de ambiente
# ENV ENV=dev

# Comando para executar a aplicação
CMD ENV=${ENV} ./main
