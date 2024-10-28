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

## Optional Requirements

- Portainer

## **IMPORTANT**

This projects runs in a Docker Network. This network is created by Nemesis Starter Project. You need to run the Nemesis Starter Project before running this project. 
Networi is setted to 172.20.0.1/16 and moirai-jobs-api is fixed to 172.20.0.10. So, you have to set this configuration in your /etc/hosts file.

```
172.20.0.10 moirai-jobs-api
```

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

### SDNVPN Create Flow
![SDNVPN Create Flow](https://mermaid.ink/img/pako:eNqtlk9vwiAYxr9Kw3mSuD-69bDTjjttt6UXUl4tCQVCqdGo3311W0QU6ovZrTYPz_MT5XnZklpzICVZWmaa4v2jUkWxmtIpVd3a0ZVRtAO7EjXQ2gJzUEwmrzsFa7c7yO69DBQ3Wij3p0P5gLXa7kZ19EdDOUg4mqZTQ7qHU9OuE1qFcFd8PF1aGMNLxoZ0j9QwqZl0mja6O9u3cQ9PltTFwOKJIdWT19heQkg1YnAjUjwuRJqdaYALd325B4pTx2hiSSHLnC60dUKBo4xzO3y_cIeSDh4nzhzDSYaFTM9eZrQU9SZEGne5hSsVGGK9XKhOfrhRC880S7HHsOKBIdThXxnszsgijzFP0MYocE12hSrDxFNeuCBrK2T5pybOAsVVBnb0ZHVyFieiSZATCF_PWYCIM4wZQvimzqLDnWbMPIqXN9p9hBF11M_nU0ZJ4f3jkOSOtGBbJvhwadseTCviGmihIuXwyGHBeukqUqn9IGW9058bVZPS2R7uiNX9siHlgslu-NQbPni-CTZc_trjW8PUl9bt75L9N8-yn0k)

### SDNVPN Delete Flow
![SDNVPN Delete Flow](https://mermaid.ink/img/pako:eNqVlD1vwyAQhv-KxZwgpd_y0Clju7Rb5QWZc4yEOQSHlSjJfy9OP1wqGzkboPee54bjjqxGCaxkOydsW7y8VaYo-g3fcOP3xHtruAfvFRouQQNBsV4_nwzs6TTEbsYYGGlRGfrOLeKAc-guoCGQFM6T0w5u_wpcr2q4ipPpYJacNnDHrdAoNCF3QQMHqWgRIaOeYqbW-3-JZeUZ5TQwlT6MmRY9LQZktNPIVPvIG3SkDBC3qFV9WIzIiOegqfppTAkpXZzgKygZ-yw31V9ZNy1kK9aB64SS8ZsfB1DFqIUOKlbGo4RGBE0Vq8w5RkUgfD-YmpXkAqyYw7BrWdkI7eMtWCkItkrEddH9vlphPhC7n5Jh3NC9fu2Vy3o5fwI4sIug)

## Other Flows

- [Organizations](Organizations.md)
- [Networks](Networks.md)
- [Virtual-Machines](Virtual-Machines.md)
- [Public-Addresses](Public-Addresses.md)
- [SDN VPN](SDNVPN.md)
