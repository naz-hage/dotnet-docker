@REM Connect Adminer and populate the database
@REM You now have an application accessing the database. 
@REM Although the application created a database and table, it did not create any entries. Let's connect Adminer to manage our database and create a database entry.
docker run --rm -d --network postgres-net --name db-admin -p 8080:8080 adminer

@REM Using a web browser, access http://localhost:8080.
@REM populate database