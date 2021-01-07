# ReverseProxy
A easy reverse proxy with docker-compose.
Change proxy target on the fly.

---

## Requirements
docker-compose

---
## Getting Started
Set your proxy target by modify `conf.d/default.conf`
```
proxy_pass https://github.com/;
```
Start

```
docker-compose up
```
Open
http://localhost:8888/


