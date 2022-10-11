# Traefik dumpcerts

Docker image for script https://github.com/containous/traefik/blob/master/contrib/scripts/dumpcerts.sh


## Usage

``` 
docker run \
  -v /your/acme/folder:/acme 
  -e PROVIDER=godaddy1
  -e CRONSCHEDULE="15 7 * * *"
```
