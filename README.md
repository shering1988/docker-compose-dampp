# DAMPP Skeleton

## Requirements

- [Docker Compose](https://docs.docker.com/compose/install/)
- OpenSSL

## Installation

Create SSL Keychain in `docker/php/ssl` by running `openssl req -x509 -nodes -days 365 -newkey rsa:2048 -keyout ./docker/php/ssl/dev.localhost.key -out ./docker/php/ssl/dev.localhost.crt` in the project root.

Run `docker compose up -d --build` in the root directory to create all containers and start up the application.

## Development

### Start command

`docker compose up -d --build`

This command will build and start all containers. Please notice that the database will be initially filled with the data from the dump.sql in `docker/database`.

### Access frontend

Open `https://127.0.0.1:3700` in your browser.

### Access PhpMyAdmin

- Url: http://127.0.0.1:3702
- login via the credentials from MariaDB below

### MariaDB Credentials

- Host 127.0.0.1:3701
- User: root
- Password: root