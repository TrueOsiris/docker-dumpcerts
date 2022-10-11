#!/usr/bin/env bash
echo "Starting cron container"
echo "Adding environment variables before launching cron"
printenv | grep -v "no_proxy" >> /etc/environment
echo "Running cron with '$CRONSCHEDULE'=$CRONSCHEDULE and '$PROVIDER'=$PROVIDER"
echo "$CRONSCHEDULE /dumpcerts $PROVIDER /acme/acme.json /acme" > /etc/crontabs/root 2>&1
echo "# gg" >> /etc/crontabs/root 2>&1
cron -f

