#!/bin/bash

read -p "请输入用户(回车默认root):" user
user=${user:-root}
echo 用户名: $user

read -p "请输入redis-master1主机名或IP地址" redis_master1
echo redis-master1: $redis_master1
read -p "请输入redis-master1主机名或IP地址" redis_node1
echo redis-node1: $redis_node1
read -p "请输入redis-master1主机名或IP地址" redis_node2
echo redis-node2: $redis_node2


scp -r master1 {{user}}@{{redis_master1}}:/data/redis/redis-master1
scp -r node1 {{user}}@{{redis_node1}}:/data/redis/redis-node1
scp -r node2 {{user}}@{{redis_node2}}:/data/redis/redis-node2

ssh {{user}}@{{redis_master1}} "cd /data/redis/redis-master1/;docker-compose up -d"
ssh {{user}}@{{redis_node1}} "cd /data/redis/redis-node1/;docker-compose up -d"
ssh {{user}}@{{redis_node2}} "cd /data/redis/redis-node2/;docker-compose up -d"