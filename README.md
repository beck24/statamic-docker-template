# Laravel 11 / Statamic

## Installation

Create `.env`, `docker-compose.override.yml`, and `000-default.conf` files and edit with environment specific variables.  Note for local dev with HMR the port 5173 should be forwarded.

```bash
cp .env.template .env
cp docker-compose.override.yml.template docker-compose.override.yml
cp apache/sites-available/000-default.conf.template apache/sites-available/000-default.conf
```

Bring up the container

```bash
docker compose up -d
```

## Dependencies

Composer is installed in the container.  To use it to install dependencies enter the container:

```bash
docker exec -it svci-php bash
```

Then navigate to the statamic directory and run composer

```bash
cd statamic
composer install

cp .env.example .env
php artisan key:generate

npm install
npm run dev
```

To build production resources

```bash
npm run build
```

### Log into the control panel

http://localhost/cp

email: `site-admin@example.com`

password: `statamic`


Change the email/password for production.
