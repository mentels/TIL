## Wait for the node/app to start/stop

To wait for the node and app to start:

`rabbitmqctl start /var/lib/rabbitmq/mnesia/rabbit@$(hostname).pid`

By default it will wait 10s.

The path is constructed as follows: `${$RABBITMQ_MNESIA_DIR.pid}`,
more [here](https://www.rabbitmq.com/relocate.html#unix).

Similarly to wait for the node to stop:

`rabbitmqctl stop /var/lib/rabbitmq/mnesia/rabbit@$(hostname).pid`

To just wait for the app to start:

`rabbitmqctl await_startup`

More in the docs: https://www.rabbitmq.com/rabbitmqctl.8.html#wait


