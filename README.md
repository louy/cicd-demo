# CI/CD Demo

This repo is a demo designed to demonstrate what a good CI/CD setup would look like, and what benefits you would get from it.

It includes the most important elements of a good CI/CD pipeline, which are:

- [ ] automated tests
- [ ] code checks and pull request feedback
- [x] automatic deployment
- [ ] security scanning
- [ ] software defined infrastructure (infrastructure as code)

## Configuration & External Services

To clone this project, you'll need a couple of (free) external services set up. Here's a list of them:

1. Github Actions
   This project uses GitHub Actions as the CI/CD runner. You'll need to configure everything in Github Secrets.

From within Github, you ideally want to create a bot/service account (mine is [@LA-Robot](https://github.com/LA-Robot)) and create personal access token(s):

| Variable                   | Explaination                                                                                                          |
| -------------------------- | --------------------------------------------------------------------------------------------------------------------- |
| `PR_COMMENTS_GITHUB_TOKEN` |  must have permission to comment on issues/PRs (and the account must have access to the repo if using a private one). |

2. Terraform Backend

For this one I used repl.it with my project [terraform-backend-replit](https://github.com/louy/terraform-backend-replit). You can use any other TF http backend, but I like this one since it's free and easy to set up.

You'll need to add the following variables to Github Secrets:
| Variable | Explaination |
|---|---|
| `TF_HTTP_ADDRESS` | the url of the http backend |
| `TF_HTTP_USERNAME` | the username of the http backend |
| `TF_HTTP_PASSWORD` | the password of the http backend |
| `TF_HTTP_LOCK_ADDRESS` | the url of the http backend lock url (if the backend supports locking) |
| `TF_HTTP_UNLOCK_ADDRESS` | the url of the http backend unlock url (if the backend supports locking) |
