# Deployment Pipeline to Heroku

This app is for testing a CI/CD Pipeline to Heroku. It was initially supposed to work with multiple platforms, but as Heroku wants a Procfile instead of Dockerfile, I decided to default to one environment only. The change also means that the deployed app is not a Docker container anymore but instead a lightweight "Dyno", a container-like running environment specific to Heroku.

## Setup

Automate the deployment in Heroku to use your Github repository. Authorize it to use the repository as it needs to install a webhook in it. You can bypass this by using Heroku CLI instead. However that's not in the scope of this POC.

If the checks in Github workflow pass in ./.github/workflows/heroku-deploy.yml, the app will be automatically redeployed to Heroku after each push to "heroku" branch.
