# Calculator App

A simple calculator application built with Node.js and Express, containerized with Docker.

## Project Structure

- `server.js`: The Express server that serves the application.
- `index.html`: The frontend calculator interface.
- `Dockerfile`: Configuration for building the Docker image.

## Prerequisites

- [Node.js](https://nodejs.org/) (for local development)
- [Docker](https://www.docker.com/) (for containerized execution)

## Local Setup

1.  Install dependencies:
    ```bash
    npm install
    ```

2.  Start the server:
    ```bash
    node server.js
    ```

3.  Open your browser and navigate to `http://localhost:3000`.

## Docker Usage

### Build the Image

```bash
docker build -t sundararaghav0306/calculator:latest .
```

### Run the Container

Run the container mapping port 5000 on your host to port 3000 in the container:

```bash
docker run -p 5000:3000 sundararaghav0306/calculator:latest
```

Access the application at `http://localhost:5000`.
