# 打包命令
```docker
docker build --rm -t cjr-redis:6.2.7 -f Dockerfile .
docker tag cjr-redis:6.2.7 cjr0707/cjr-redis:6.2.7
docker push cjr0707/cjr-redis:6.2.7
```

# 运行命令
```docker
docker run -d --name cjr-redis \
    -v ~/db-data/redis:/data \
    -p 6379:6379 cjr-redis:6.2.7
# 或者加上restart
docker run -d --name cjr-redis \
    --restart always \
    -v ~/db-data/redis/:/data \
    -p 6379:6379 cjr0707/cjr-redis:6.2.7
```

# 容器中

配置文件在`/etc/redis/redis.conf`

rdb在`/data`

