# redis-cluster
redis-cluster docker with sentinel , haproxy , keepalived 

node01 是redis master

#install on node1
docker-compose build && docker-compose up -d

#install on node2
docker-compose build && docker-compose up -d

#install on node2
docker-compose build && docker-compose up -d


![alt text](https://github.com/roysbike/redis-cluster/blob/master/cluster.png)
