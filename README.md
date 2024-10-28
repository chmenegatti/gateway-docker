# NEMESIS - Microservices in Containers

## Introduction

This is a project that aims to provide a simple way to deploy microservices in containers. It uses Docker and Docker Compose to create the containers and manage them. The project is written in Go and uses Grafana, Loki and Promtail to monitor the containers.

## Requirements

- Docker
- Docker Compose
- Go
- ETCD 
- MariaDB
- RabbitMQ
- Redis

## Before running

Before running the projet, you need to create a `.env` file in the root of the project with the following content:

```
GITLAB_USERNAME=your.gitlab.username
GITLAB_ACCESS_TOKEN=get.it.from.gitlab
```

You can get the `GITLAB_ACCESS_TOKEN` from your GitLab account.

## Running the monitoring


To run the monitoring, you need to run the following command:

```
docker-compose -f docker-compose.logging.yaml up -d 
```

This command will start the Grafana, Loki and Promtail containers. You can access the Grafana dashboard at `http://localhost:3000` and login with the default credentials `admin` and `admin`.

## Running the project - Microservices

This project uses Docker Compose to manage the containers. At the beginning, we have some docker compose files to run all the services from an specific flow:

Example:

SDN VPN Flow:

```
docker-compose -f docker-compose.sdn-vpn.yaml up -d
```

This command will start all the services from the SDN VPN flow. It will create the containers and start them. This flow is composed by the following services:
- moirai-jobs-api
- nsxt-vpn-service
- nsxt-vpn-local-endpoint
- nsxt-vpn-session
- paloalto-host
- paloalto-rule
- fortinet-address
- fortinet-policy
- nemesis-vpn