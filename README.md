# Default-app

### General info
This project implements simple API who have just one healthcheck endpoint

### Endpoints
*Available endpoint in the project:*
* GET: /healthz | Returns status, service name and setted env in .env file

### Technologies
*The following stack of technologies used in the project*
* Java 17
* Spring Boot
* Tomcat
* Nginx
* Docker
* Docker Compose
* GitHub Actions

### Setup
*How to launch project*
1. Clone this project
```
git clone https://github.com/lavryniuk-dev/default-app
```
2. Run the command to start service
```
make up
```
3. Perform http requests to localhost:8080/healthz endpoint via Postman, Katalon Studio, etc (expected output: status - 200, service - app, env - currently defined var APP_ENV in .env file)
4. Do flood test to perform many requests for check 429 status (expected ouput how many times we get 200 and 429 statuses for 20 sended requests)
```
make test
```
5. Check logs of service
```
make logs
```
6. Shutdown service
```
make down
```

