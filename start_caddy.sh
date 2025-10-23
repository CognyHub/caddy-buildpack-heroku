#!/bin/sh

# format config
./caddy fmt --config Caddyfile --overwrite 
cp Caddyfile /tmp

# export config to json file
./caddy adapt --config Caddyfile --adapter caddyfile --pretty > /tmp/config.json

# start process foreground
./caddy run --config "Caddyfile" --watch