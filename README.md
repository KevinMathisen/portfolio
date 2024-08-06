# My Portfolio 

This is a website using Svelte to display my portfolio. It can be deployed in a docker container served by Nginx.

## Setup

To set up the website a docker container can be ran to serve it on a specified port. 

### Prerequisites

- The machine running docker compose has to have [Docker Desktop](https://docs.docker.com/get-docker/) installed (or optionally just [Docker engine](https://docs.docker.com/engine/install/) if using linux).

### Steps

- Build the docker file by running the command `docker build -t portfolio_km .`
- Then run the container with the command `docker run -p 80:80 portfolio_km`

## Usage

The portfolio is a simple static web page, which can be visited on the port the docker container was ran on.