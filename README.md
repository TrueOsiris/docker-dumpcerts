# Traefik dumpcerts

Docker image for script https://github.com/containous/traefik/blob/master/contrib/scripts/dumpcerts.sh<br>
It extracts certificates from the acme.json file, generated or pulled by Traefik via dnsChallenge.

forked from https://github.com/kardasz so all credit goes to him for the script.

I added cron functionality to have it permanently running as a container. <br>
Example: I want an extract of the certificates every morning at 7h15.<br>
2 subdirectories will be created where your acme.json resides: certs & private.
The contents will be overwritten on each cron run.

## Usage

``` 
docker run \
  -v /your/acme/folder:/acme 
  -e PROVIDER=godaddy1
  -e CRONSCHEDULE="15 7 * * *"
```
