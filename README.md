# Minimal Shell-Based HTTP server
This is a very minimal shell-based HTTP server. It uses 
`netcat` to listen on a port and executes `response.sh` for every 
incoming HTTP-request. 

## Why
With this repository I want to illustrate you can run anything 
with Cloud Run, as long as it speaks HTTP. 

## Running on Your Local Machine
```
docker build . -t sh;
docker run -it -p 8080:8080 sh
```
 
## Deploy to Cloud Run 
```
gcloud builds submit
gcloud run deploy --image gcr.io/$(gcloud config get-value project)/sh
```

## Similar Work
Shell-based HTTP servers are not novel. Here's a list of similar
implementations you can learn from: 

 + [benrady/shinatra](https://github.com/benrady/shinatra)
 + [avleen/bashttpd](https://github.com/avleen/bashttpd)
 


