# Architecture

## Frontend
Our frontend uses Next.js, with Chakra UI and a modified version of Hack Club Theme for styling.

## Backend
TODO: insert that diagram that ani made

### API
As the name suggests, this service exposes a REST API which acts as a user-facing interface to the other services, and handles misc. functionality such as authentication and billing. This is written in Rust, uses [Diesel](https://diesel.rs) to persist data in a PostgresDB instance, and Docker to provision containers for each app. TODO: Talk more about Docker/network setup?

### Reverse proxy
After numerous spirited discussions about whether to use Nginx or Caddy, we decided to use Caddy as our reverse proxy. Caddy handles forwarding/proxying requests from a domain of your choice, to your app's web server. Additionally, Caddy serves the HTML for the docs site. 
