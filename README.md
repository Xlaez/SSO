# Dolph SSO

An SSO server for single-sign-on built with Elixir's Phoenix library, Guardian and JWT.

## Requirements

* Postgres SQL
* Elixir
* Phoenix
* Any IDE of choice
* Docker (not necessary but recommended)

## Start

- Update the details of the postgres database in the `dev.exs` file found in the `/config` directory.
- Start you postgres database (docker recommended!)
- **RUN** `mix deps.get` to install dependencies
- **RUN** `mix ecto.create` then `mix ecto.migrate` to run migrations
- **RUN** `mix phx.server` to start your Phoenix server on port **8080**

``Im tired !! (wamted to add an emoji but forgot too)``