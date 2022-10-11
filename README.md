# Traefik dumpcerts

Docker image for script https://github.com/containous/traefik/blob/master/contrib/scripts/dumpcerts.sh

forked from https://github.com/kardasz so all credit to him

I added cron functionality to have it permanently running as a container. Example: I want an extract of the certificates every morning at 7h15.

## Usage

``` 
docker run \
  -v /your/acme/folder:/acme 
  -e PROVIDER=godaddy1
  -e CRONSCHEDULE="15 7 * * *"
```
