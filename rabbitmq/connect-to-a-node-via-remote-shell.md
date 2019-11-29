## Connect to a node via remote shell

```shell
# obtain cookie
sbin/rabbitmqctl eval "erlang:get_cookie()."
# obtain RabbitMQ node name
sbin/rabbitmqctl eval "node()."
# connect
erl -sname remote -set_cookie GZORRHCMRYGKJWHFWLKI  -remsh rabbit@mentels-mbp
# run observer
observer:start().
```