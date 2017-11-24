#!/bin/sh
set -e

[ -z "$REDIS_PASSWORD" ] && echo "Using default config" || sed -i "s/.*requirepass .*/requirepass $REDIS_PASSWORD/g" /data/etc/redis/redis.conf

/usr/local/bin/redis-server /data/etc/redis/redis.conf

