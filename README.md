# docker-42-norm
norminette into docker when u can use niorminette in local.

[step]
docker-machine create  r
eval $(docker-machine env r)
docker build -t norm .
docker run -it  --mount src=<yourdir>,target=<docker_dir>,type=bind norm
cd <docker_dir>
check norm where u want
