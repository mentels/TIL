# Repeat task until certain criteria is met

Sometimes it is desirable to keep the task trying to accomplish its thing
based on some criteria. This is where the
[Do-Until Loop](http://docs.ansible.com/ansible/devel/user_guide/playbooks_loops.html#do-until-loops)
comes in handy:

```yaml
- name: Get the Cassandra cluster status
  command: "docker exec {{ node }} bash -c \"{{ normal_status_cmd }}\" "
  environment:
    DOCKER_HOST: "{{ docker_host }}"
  register: cluster_status
  retries: 3
  delay: 15
  until: cluster_status.rc == 0 and ((cluster_status.stdout_lines | count) == cluster_size|int)
```
