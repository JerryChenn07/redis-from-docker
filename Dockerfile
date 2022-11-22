from redis:6.2.7

ENV TZ Asia/Shanghai

copy redis.conf	/etc/redis/redis.conf

cmd ["redis-server", "/etc/redis/redis.conf"]
