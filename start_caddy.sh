#!/bin/sh

# copy config to tmp
cp Caddyfile /tmp

# format config
./caddy fmt --config Caddyfile --overwrite 

# export config to json file
./caddy adapt --config Caddyfile --adapter caddyfile --pretty > /tmp/config.json

# start process foreground
./caddy run --config "Caddyfile" --watch