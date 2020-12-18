## Execute an Erlang snippet on a node in container

E.g. to get the Erlang cookie:

`docker exec -it f1ca10f44970 rabbitmqctl eval "erlang:get_cookie()."`


