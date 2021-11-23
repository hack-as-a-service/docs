# Get involved

Need to make a fix or report an issue, but not sure where to go? Here's a quick guide:

## TL;DR:
- Something wacky with the web app? → [hack-as-a-service/frontend](https://github.com/hack-as-a-service/frontend)
- Issue with this documentation? → [hack-as-a-service/docs](https://github.com/hack-as-a-service/docs)
- Something else? 
	- Issue with provisioning new apps or addons? → [hack-as-a-service/provisioner](https://github.com/hack-as-a-service/provisioner)
	- For anything else → [hack-as-a-service/api](https://github.com/hack-as-a-service/api)

We welcome all contributors, whether it's your first contribution to open source, or your thousandth. Hack as a Service is powered by a few core services that handle different responsibilties. The CLI and GitHub bot are written in Go, and our other backend services are currently undergoing a rewrite in Rust. Our documentation site uses mdBook with a custom theme to match the design of the frontend. The frontend uses Next.js, along with Chakra UI and a slightly modified version of @hackclub/theme.

As mentioned, we have a fairly large refactor going on for our backend. The goal is to essentially split the original [monorepo](https://github.com/hackclub/hack-as-a-service) into multiple services/repos with separate responsibilities. All of the repos above should have issues for things that need to be fixed or implemented for the first time. If an issue has no assignee, feel free to assign it to yourself and begin working on that issue, after discussing changes with other project contributors. Feel free to create new issues where needed and/or jump in our Slack dev channel to see where you can help out. 

Before making any non-trivial changes, please discuss with other contributors in Slack and make a GitHub issue for tracking. Any significant layout changes to the frontend will require Figma designs before being built. 

Contributors should make a fork of the repo they are contributing to, then create a new branch for a specific chaange or feature. While we don't enforce any particular commit message format, commit messages should be descriptive enough to allow anyone to understand what changes were made at a glance. If you need some help with making descriptive commit messages, we like Conventional Commits :)

For more info on our stack, check out the [architecture](architecture.md) page.
