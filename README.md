# Django Template with Docker/Docker Compose

## Environment

- Python ... 3.10.0a7
- Django ... 3.2

## How to confirm in local server

1. Build and up by docker-compose command and attach the docker container.

```sh
% docker-compose up -d --build
% docker-compose exec app bash
```

2. Move into `mysite` directory and start local server.

```sh
/app $ cd mysite
/app/mysite $ python manage.py runserver 0.0.0.0:8000
```

when there is the following warning during the build, run `python manage.py migrate` to resolve it.

```
You have 18 unapplied migration(s). Your project may not work properly until you apply the migrations for app(s): admin, auth, contenttypes, sessions.
```

3. You can see the result in `http://localhost:8080` of your browser.

## How to create Django project and app

1. build and up by docker-compose command and attach the docker container.

```sh
% docker-compose up -d --build
% docker-compose exec app bash
```

2. Django is already installed so create a Django project and app (there are `mysite` and `blog` as sample in the repository).

```sh
/app $ django-admin startproject {project_name}

# in the case of create app
/app $ cd {project_name}
/app/{project_name} $ python manage.py startapp {app_name}
```