# Architecture

## Frontend
Our frontend uses Next.js, with Chakra UI and a modified version of Hack Club Theme for styling.

## Backend

TODO: insert that diagram that ani made

The 3 main components of the backend are the API, Provisioner, and the reverse proxy. With the exception of the API, all of the services are intended to be used internally, meaning that no user will have direct access to them. The API handles connecting all these services together. A prior pre-release version of HaaS used a single backend written in Golang, which used PostgresDB to persist data with GORM and relied heavily on [Dokku](https://dokku.com) for app management/provisioning. With this refactor, we are using Rust and [Diesel](https://diesel.rs) as our ORM.

### API
As the name suggests, this service exposes a REST API which acts as a user-facing interface to the other services, and handles misc. functionality such as authentication and billing.

### Provisioner
The provisoner handles the actual creation and management of apps. The provisioner is designed to be easily swapped with another provisioner service if we decide we don't want to use Docker anymore (ex: we want to use Kubernetes instead, so we build a new provisioner using Kubernetes with the exact same API as the Docker one).

### Reverse proxy
After numerous spirited discussions about whether to use Nginx or Caddy, we decided to use Caddy as our reverse proxy. Caddy handles forwarding/proxying requests from a domain of your choice, to your app's web server. Additionally, Caddy serves the HTML for the docs site. 
