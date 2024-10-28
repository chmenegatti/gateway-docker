# Organizations Flow

This flow is responsible for managing the organizations in the system. The organizations are the main entities in the system and they are responsible for managing other entities like networks, virtual machines, etc.

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

Network is setted to 172.20.0.1/16 and moirai-jobs-api is fixed to 172.20.0.10. So, you have to set this configuration in your /etc/hosts file.

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

## Running Organizations Flow

Run the following command to start the organizations flow:

```
docker-compose -f docker-compose.organizations.yaml up -d
```

This command will start all the services from the Organizations flow. It will create the containers and start them. This flow is composed by the following services:

- moirai-jobs-api
- nsxt-tier1
- nsxt-locale-services
- nsxt-security-policy
- paloalto-tag
- vmware-virtual-machine
- nemesis-organization

## Organizations Create Flow
![Organizations Create Flow](https://mermaid.ink/img/pako:eNqllctugzAQRX8FzZpYYN4suuqy3bS7io0FE0AyGBkT5fnvpaQNIiXBTXc87tx7jGaYA6QiQ4ghl6wpjJe3pDaMjU1sUrdbRVSJ0iapRKbQWK2ejjVu1fFLQM8CLlLGkbQoN2WK38oFD5RSyMHE-60gw1uSIceL0b2sKZVzVjaCl-luSrNoMmK5d6RzfHOpUy6XNIwLxpUgiuVTsJvVjwPNxk2JPLJpmwLlxWYteIZy0WCEonOaOZobUVMeIXNWl3umSlFPv8-98pHGnlfN8ehIr5td86ja1iP47YMvpy43__w4afnqIC5GXo_B_wfrMVDt5Osp0fpB_c1dh3cpWH94NHwWgMCECmXFyqzfE4cv4wRUgRUmEPeXGa5Zx1UCSX3qpaxT4n1XpxAr2aEJUnR5AfGa8ba_65qs93wuWb9vqsvThtUfQlQ_JZiVSsjX82Ia9tMggfgAW4hXvt13hhVQy6KeF0QBNWEHMaUhiUI_cCmNwtBxbO9kwn5wpcSLnMB1rNALfZtann_6BKB3cSk)

## Organizations Delete Flow
![Organizations Delete Flow](https://mermaid.ink/img/pako:eNqdls2SojAURl_FylpTEER-FrOa5cxmZjflJsIVqIaECsHStn33SUurkxjb27NT-b5zLqWGeySFLIHkpFK8r2c_fq3FbLYLaUhHsZGjKGkpBlpCCxpmi8W3NwF7_faeYLTnreStllSNLXxkntVBKanOfakqLppXrhsp7LKfbNujW0Zwje5j9F60bV_eIrUcNLaPsfvRtj6-ZTSv0H2M3ou27Ssqhr2muwHbxHhdqK1Mpqu9lC2ihvHdE21jOl1vN6gaxugSbV9m7qGvQQEdBO-HWmpEG6N9CLb9YXDNlc3wYjKaFzWKgZnCj3dGCN0MDoDye9mOn10zuw5dR9k9ZMcdTd_v3Vn2sIry3lEd6_Lyc26b4oDqorQ-rGOOp0il5Nhj2yi3B-yoP86MAaoOhPEouW3unl-PMKgZPjU40yR29qsg1DxehzPH5YCRBTeGAdSuKQDNQY3xmcKZJpuiugEVfpWCmsUjcNabwCwPG9W8eJ7wD9uo7cYHdtz_HDfny3Qr2xLUUwLK_wBuj_Cf_ScDkDnpQHW8Kc3GeXwHromuoYM1yc3LErZ8bPWarMXJRPmo5e-DKEiu1QhzYv6LVU3yLW8H827sS67he8PN5tpdP-25-CNld6lA2Wipfk4r7nnTPUdIfiR7ki9W5mCPgoQFAYvjJEvYnBxIzlhKs3SVLBnL0jSKwvg0J69nKqNxFiXLKEjjdBWyYHX6C1WY6lY)


