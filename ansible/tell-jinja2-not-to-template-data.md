# Tell jinja2 not to template data

If something is to be excluded from templating the the `{% raw %}...{% endraw %}` can be used:

```ansible
name: Register Cassandra node
  command: "docker inspect --format={% raw %}'{{ .NetworkSettings.IPAddress }}'{% endraw %} {{ instance_name }}"
  environment:
    DOCKER_HOST: "{{ distribution_strategy.cassandra }}"
  register: cassandra_node
```

More in the [Playbooks Advanced Syntax](http://docs.ansible.com/ansible/latest/playbooks_advanced_syntax.html).
