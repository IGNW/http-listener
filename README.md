# http-listener

## About
This project listens for http requests and responds with the request and any headers that were sent.

This is useful for when you're not sure if nginx (or your reverse proxy of choice) is forwarding headers correctly, etc. 


## To Build

`docker build . -t http-listener`

## To Run 

`docker run -d -p 8080:8080 http-listener`
