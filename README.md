# Laravel 11 / Statamic

## Installation

Create `.env`, `docker-compose.override.yml`, and `000-default.conf` files and edit with environment specific variables

```bash
cp .env.template .env
cp docker-compose.override.yml.template docker-compose.override.yml
cp apache/sites-available/000-default.conf.template apache/sites-available/000-default.conf
```

Bring up the container

```bash
docker compose up -d
```