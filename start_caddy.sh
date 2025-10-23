#!/bin/sh

# format config
./caddy fmt --config "Caddyfile.template" --overwrite 
cp "Caddyfile.template" /tmp/Caddyfile

# export config to json file
./caddy adapt --config "/tmp/Caddyfile" --adapter caddyfile --pretty > /tmp/config.json

# start process foreground
./caddy run --config "/tmp/Caddyfile" --watch