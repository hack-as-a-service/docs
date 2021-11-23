# Introduction

Hack as a Service (or HaaS) is Hack Club's own PaaS: a scalable, simple, and inexpensive way for Hack Clubbers to host backend services (including web apps, games, Slack bots, and more). Fully integrated with the Hack Club ecosystem, HaaS works with Slack and HN to provide easy setup on the part of both community members and project admins.

## Features:
- Allows for the use of custom domains, and automatically processes SSL certificates for projects.
- Bills users in HN
- Deployment via Git, tar.gz upload, and possibly more.
- Has a variety of "extensions" for additional services such as Postgres and Redis
- Project definition via Dockerfiles

## Requirements:
In order for a project to be eligible for HaaS, it must conform to the following guidelines:
- Usable by Hack Clubbers in some way (Slack bots are a great example)
- Does not do insane computations or require immense amounts of processing power
- Does not violate the [Hack Club CoC](https://hackclub.com/conduct) (obviously)

[Get started!](/quickstart)
