#!/bin/sh

cp Caddyfile /tmp
# start process foreground
./caddy run --config "/tmp/Caddyfile" --watch