# redis-cluster
redis-cluster docker with sentinel , haproxy , keepalived 


## 提前准备
异地部署需要提前打包好finacial:v1.0.0 keepalived:v1.0.0 haproxy:v1.0.0

node01 是redis master

#install on node1
docker-compose build && docker-compose up -d

#install on node2
docker-compose build && docker-compose up -d

#install on node2
docker-compose build && docker-compose up -d


![alt text](https://github.com/roysbike/redis-cluster/blob/master/cluster.png)
