FROM redis:5.0.5-alpine3.9
COPY redis.conf /data/redis.conf
CMD [ "redis-server", "/data/redis.conf" ]
