from redis:5.0.9

ENV TZ Asia/Shanghai

copy redis.conf	/etc/redis/redis.conf

cmd ["redis-server", "/etc/redis/redis.conf"]
