# Traefik dumpcerts cronned

[![Docker Pulls](https://badgen.net/docker/pulls/trueosiris/dumpcerts?icon=docker&label=pulls)](https://hub.docker.com/r/trueosiris/dumpcerts/)
[![Docker Stars](https://badgen.net/docker/stars/trueosiris/dumpcerts?icon=docker&label=stars)](https://hub.docker.com/r/trueosiris/dumpcerts/)
[![Docker Image Size](https://badgen.net/docker/size/trueosiris/dumpcerts?icon=docker&label=image%20size)](https://hub.docker.com/r/trueosiris/dumpcerts/)
![Github stars](https://badgen.net/github/stars/trueosiris/docker-dumpcerts?icon=github&label=stars)
![Github forks](https://badgen.net/github/forks/trueosiris/docker-dumpcerts?icon=github&label=forks)
![Github issues](https://img.shields.io/github/issues/TrueOsiris/docker-dumpcerts)
![Github last-commit](https://img.shields.io/github/last-commit/TrueOsiris/docker-dumpcerts)

Docker image for script https://github.com/containous/traefik/blob/master/contrib/scripts/dumpcerts.sh<br>
It extracts certificates from the acme.json file, generated or pulled by Traefik via dnsChallenge.

forked from https://github.com/kardasz so all credit goes to him for the script.

I added cron functionality to have it running as a permanent container. <br>
Example: I want an extract of the certificates every morning at 7h15.<br>
2 subdirectories will be created where your acme.json resides: certs & private.
The contents will be overwritten on each cron run.

| Variable | Key | Description |
| -------------------- | ---------------------------- | ------------------------------------------------------------------------------- |
| TZ | Europe/Brussels | timezone for ntpdate |
| PROVIDER | provider as defined by you in traefik certificatesResolvers | letsencrypt |
| CRONSCHEDULE | mandatory schedule | * * * * * |



## Usage

``` 
docker run \
  -v /your/acme/folder:/acme 
  -e PROVIDER=godaddy1
  -e CRONSCHEDULE="15 7 * * *"
```

### Links

- [Dockerhub - Trueosiris/dumpcerts](https://hub.docker.com/repository/docker/trueosiris/dumpcerts)
- [Github - trueosiris/docker-dumpcerts](https://github.com/TrueOsiris/docker-dumpcerts)

