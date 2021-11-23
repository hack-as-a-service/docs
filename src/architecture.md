# Architecture

## Frontend
Our frontend uses Next.js, with Chakra UI and a modified version of Hack Club Theme for styling.

## Backend
Our backend uses Rust, with Rocket as our web framework. We also have a provisioner library for handling Docker containers.

### API
As the name suggests, this service exposes a REST API which acts as a user-facing interface to the other services, and handles misc. functionality such as authentication and billing. This is written in Rust, uses [Diesel](https://diesel.rs) to persist data in a PostgresDB instance, and the provisioner to handle setting up containers.

### Provisioner
The part of the API that does the actual Docker provisioning and Caddy config is a library known as the provisioner. Previously, this was planned to be a separate microservice, but we have since merged it into the API directly to make things easier.

### Reverse proxy
After numerous spirited discussions about whether to use nginx or Caddy, we decided to use Caddy as our reverse proxy. Caddy handles forwarding/proxying requests from a domain of your choice, to your app's web server. Additionally, Caddy serves the HTML for the docs site.  Most notable, it has automatic Let's Encrypt support for HTTPS, which we use.
