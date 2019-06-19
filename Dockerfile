FROM redis:5.0.5-alpine3.9
COPY redis.conf /data/redis.conf
RUN cp /usr/share/zoneinfo/Asia/Ho_Chi_Minh /etc/localtime \
        && echo "Asia/Ho_Chi_Minh" > /etc/timezone
CMD [ "redis-server", "/data/redis.conf" ]
