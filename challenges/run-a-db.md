# Running a DB within Docker

Let’s see some additional runtime parameters that can be passed in to a container.

## Identify the image from Docker hub

For this next task you can use any db you are familiar with & have a cli client for in your machine.

If you aren't able to choose, pick `postgres`!

- Find the image on Docker Hub – review the instructions
- Run the image locally. Pass in environment variables to allow access to the database and also volume mapping.
- Create some data in your db:
  - Check what happens if you kill the container and start another one?
  - How can you persist data between restarts?
  - How can you access the db running inside a container from outside the container?

## Troubleshooting

If you aren't able to connect to the db on the running container in spite of adding `-p`, replace `localhost` with `docker.for.mac.host.internal` in your connection string.

## Working with Postgres

- [Install](https://blog.timescale.com/tutorials/how-to-install-psql-on-mac-ubuntu-debian-windows/) the `psql` client on your machine.
- Postgres connection string format:

`postgres://<username>:<password>@<hostname>:5432/<db-name>?sslmode=disable`

- You can connect to the postgres running in the container using:

```bash
psql <connection-string>
```

- Once you are in, create a table:

```sql
CREATE TABLE people (
  PersonID int,
  FirstName varchar(255),
  LastName varchar(255),
  Address varchar(255)
);
```

- Insert a value:

```sql
INSERT INTO people VALUES (1, 'John', 'Doe', 'Colony-1, Mars');
```

- Retrieve all values:

```sql
SELECT * FROM people;
```

- Other commands:

```sql
 "\d" # lists all the databases
 "\c <db-name>" # Connect to a particular db
 "\l" # lists all the tables in current db
 "\q" # Quits the client
```
