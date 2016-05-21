# Impact Platform: Artisan
[Docker](https://www.docker.com/) container for [Artisan](https://laravel.com/docs/master/artisan)

## Overview
Use with the [data container](https://github.com/b-lab-org/impact-platform-data).

Run an artisan command from the `/data/www` directory.

## Docker-Compose Usage
```
artisan:
    image: impactbot/impact-platform-artisan
    volumes_from:
        - data
```
