# Calculator App

A simple calculator application built with Node.js and Express, containerized with Docker.

## Docker Instructions

### Build the Image

To build the Docker image locally:

```bash
docker build -t sundararaghav0306/calculator:v1.0   
```

### Run the Container Locally

Run the container mapping port 5000 on your host to port 3000 in the container:

```bash
docker run -p 5000:3000 sundararaghav0306/calculator:v1.0   
```

Access the application at `http://localhost:5000`.

## Testing with Docker Hub Image

You can also test the application by pulling the pre-built image directly from Docker Hub without building it yourself.

1.  **Pull the Image:**

    ```bash
    docker pull sundararaghav0306/calculator:v1.0   
    ```

2.  **Run the Pulled Image:**

    ```bash
    docker run -p 5000:3000 sundararaghav0306/calculator:v1.0   
    ```

3.  **Access the App:**
    Open your browser and navigate to [http://localhost:5000](http://localhost:5000).
