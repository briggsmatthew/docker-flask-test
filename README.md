# Docker Flask Echo Server
A Docker example, running a Flask server on localhost:8080. Echoes the url path.

Usage:
```
docker build -t hello-server .
docker run -p 8080:1234 hello-server
```

Inside the container, `hello_server.py` runs a Flask server on the virtual port 1234, which Docker routes to the real port 8080
with the `-p 8080:1234` argument. If you were to go to `localhost:8080/foo/bar` while the docker container is running, you will receive
a text page with `Hello, foo/bar` as the body.
