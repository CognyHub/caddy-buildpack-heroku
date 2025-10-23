#!/bin/sh

# format config
./caddy_darwin_arm64 fmt --config Caddyfile --overwrite 

# export config to json file
./caddy_darwin_arm64 adapt --config Caddyfile --adapter caddyfile --pretty > config.json

