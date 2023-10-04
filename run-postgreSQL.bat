@REM create data volume
docker volume create postgres-data
@REM create network
docker network create postgres-net
@REM run PostgreSQL in a container and attach to the volume and network we created above
docker run --rm -d -v postgres-data:/var/lib/postgresql/data --network postgres-net --name db -e POSTGRES_USER=postgres -e POSTGRES_PASSWORD=example postgres

@REM Now, let’s make sure that our PostgreSQL database is running and that we can connect to it. Connect to the running PostgreSQL database inside the container using the following command:
@REM content_copy
@REM $ docker exec -ti db psql -U postgres
@REM psql (14.5 (Debian 14.5-1.pgdg110+1))
@REM Type "help" for help.

@REM postgres=#