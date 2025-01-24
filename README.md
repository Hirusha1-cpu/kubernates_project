# Go Web Application

This is a simple website written in Golang. It uses the `net/http` package to serve HTTP requests.

## Running the server

To run the server, execute the following command:

```bash
go run main.go
```

The server will start on port 8080. You can access it by navigating to `http://localhost:8080/courses` in your web browser.

## Looks like this

![Website](static/images/golang-website.png)

docker run -p 8080:8080 -it hirudoc5/go-web-apps:v1

docker build -t hirudoc5/go-web-apps:v1 .


kubernates_project - git repo names