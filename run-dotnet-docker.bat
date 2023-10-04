@REM Run the dotnet-docker container on the same network as the database. This allows us to access the database by its container name.

docker run --rm -d --network postgres-net --name dotnet-app -p 5000:80 dotnet-docker

@REM Let's test that the application works and is connecting to the database. Using a web browser, access http://localhost:5000.