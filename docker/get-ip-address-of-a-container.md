# Get IP address of a container

Get a running container's IP address in the `bridge` network:

```bash
docker inspect CONTAINER_NAME --format '{{ .NetworkSettings.Networks.bridge.IPAddress }}' # -> 172.17.0.2
```
