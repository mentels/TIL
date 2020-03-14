## Run PostgreSQL in a docker container

Put a `docker-compose.yml` file in the project root:

```yml
version: '3.1'

services:

  db:
    image: postgres
    restart: always
    ports: 
      - "5432:5432"
    environment:
      POSTGRES_PASSWORD: postgres
```

Start the container: `docker-compose up`.

Then you can connect to it with `docker-compose exec db psql -U postgres`

> Make sure the password (the argument to `-U` matches the `POSTGRES_PASSWORD`)

