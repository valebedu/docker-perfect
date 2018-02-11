# docker-perfect

docker-perfect help you to build applications running with perfect on ubuntu systems.

## Table of Contents

*   [Getting started](#getting_started)
*   [Documentation](#documentation)
*   [Reference](#reference)
*   [Contributing](#contributing)
*   [Licensing](#licensing)
*   [Changelog](#changelog)

## Getting started

### Installation

Be sure Docker is installed on your machine before continuing. To ensure that docker is installed on your machine and running, run the following command.

``` shell
docker --version
```

The image will be downloaded automatically by running a script using it but if you want to download it manually, you can run the following command.

``` shell
docker pull valentinbercot/docker-perfect
```

### How to use

#### Docker run

None.

#### Dockerfile

None.

#### Docker-compose

In order to launch your Perfect application, you just have to add the following files to the root of your Perfect application project and update the `.env` file as following.

Files to add to project root :

*   [.env][env]
*   [docker-entrypoint.sh][docker_entrypoint]

`.env` content :

``` shell
# Perfect environment variables

PERFECT_ENVIRONMENT=debug
#PERFECT_ENVIRONMENT=release
PERFECT_SOURCE_PATH=/path/to/your/repository
PERFECT_TARGET_PATH=/path/to/your/repository

# Database environment variables

DB_ENVIRONMENT=debug
#DB_ENVIRONMENT=release
DB_TYPE=mysql
#DB_TYPE=mysql
#DB_TYPE=maria
#DB_TYPE=postgre
#DB_TYPE=mongo
DB_IMAGE=mysql
DB_SOURCE_PATH=/path/to/your/repository
DB_TARGET_PATH=/path/to/your/repository

# MySQL environment variables

MYSQL_ROOT_PASSWORD=root
MYSQL_DATABASE=EXAMPLE
MYSQL_USER=root
MYSQL_PASSWORD=root
```

This file allow you to configure your application, environment and dependencies. All configurable constants in this file are described below:

PERFECT_ENVIRONMENT : the environment of the perfect application (swift build config), possible value are `debug` and `release`.

PERFECT_SOURCE_PATH : the path of your Perfect application project on your machine.

PERFECT_TARGET_PATH : the path of your Perfect application project on your docker container.

DB_ENVIRONMENT : the environment of the database, possible value are `debug` and `release`. Release will clean up dependencies before install it.

DB_TYPE : the database type, possible value are `mysql`, `maria`, `postgre` and `mongo`.

DB_IMAGE : the docker image of the database you choose to use.

DB_SOURCE_PATH : the path of your database volume on your machine.

DB_TARGET_PATH : the path of your database volume on your docker image.

Once your `.env` file is setup, just build and run your docker-compose.

``` shell
docker-compose up
```

## Documentation

If you want to know more about Docker or Perfect please refer to official documentations in [reference](#reference).

## Reference

*   [Docker][docker]
*   [Perfect][perfect]

## Contributing

You're free to contribute, please fork my project and send me a pull request.

If you want to contribute please be aware of my [CODE OF CONDUCT][code_of_conduct].

## Licensing

This repository is under this [LICENSE][license].

## Changelog

The complete changelog could be found in [CHANGELOG][changelog].

[docker_entrypoint]: docker-entrypoint.sh
[env]: .env
[docker]: https://docker.com
[perfect]: https://perfect.org
[code_of_conduct]: CODE_OF_CONDUCT.md
[license]: LICENSE.md
[changelog]: CHANGELOG.md
