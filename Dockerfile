from redis:3.2.9

ENV TZ Asia/Shanghai

copy redis.conf	/etc/redis/redis.conf

cmd ["redis-server", "/etc/redis/redis.conf"]