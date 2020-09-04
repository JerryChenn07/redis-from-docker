# 打包命令
```docker
docker build --rm -t spider-redis:5.0.9 -f Dockerfile .
docker tag spider-redis:5.0.9 cjr0707/spider-redis:5.0.9
docker push cjr0707/spider-redis:5.0.9
```

# 运行命令
```docker
docker run -d --name spider-redis \
    -v /data/db/redis:/data \
    -p 6379:6379 cjr0707/spider-redis:5.0.9
# 或者加上restart
docker run -d --name spider-redis \
    --restart always \
    -v /data/db/redis:/data \
    -p 6379:6379 cjr0707/spider-redis:5.0.9
```

# 容器中

配置文件在`/etc/redis/redis.conf`

rdb在`/data`

