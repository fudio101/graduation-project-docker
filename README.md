# God of Guilds

# Configuration

## Start services

Use this command to start one or more services:

```console
docker-compose up -d <service1> <service2> ...
```

or

```console
docker-compose up
```

to start all services defined in the `docker-compose.yml` file.

## Executing commands

Commands can be launched inside the `web` Laravel Development Container with `docker-compose` using
the [exec](https://docs.docker.com/compose/reference/exec/) command.

> **Note**:
>
> The `exec` command was added to `docker-compose` in
> release [1.7.0](https://github.com/docker/compose/blob/master/CHANGELOG.md#170-2016-04-13). Please ensure that you're
> using `docker-compose` version `1.7.0` or higher.

The general structure of the `exec` command is:

```console
docker-compose exec <service> <command>
```

, where `<service>` is the name of the container service as described in the `docker-compose.yml` file and `<command>`
is the command you want to launch inside the service.

Following are a few examples of launching some commonly used Laravel development commands inside the `web` service
container.

* List all `artisan` commands:

  ```console
  docker-compose exec web php artisan list
  ```

* List all registered routes:

  ```console
  docker-compose exec web php artisan route:list
  ```

* Create a new application controller named `UserController`:

  ```console
  docker-compose exec web php artisan make:controller UserController
  ```

* Installing a new composer package called `phpmailer/phpmailer` with version `5.2.*`:

  ```console
  docker-compose exec web composer require phpmailer/phpmailer:5.2.*
  ```