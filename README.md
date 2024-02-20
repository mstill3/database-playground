# Database Playground

### Notes
- I organized the SQL scripts in the following way
    - `src/scripts` are ad-hoc SQL commands  
    - `src/migrations` are init DB SQL command

### Setup
1. Install [docker](https://docs.docker.com/engine/install/)
2. Only If running on Windows OS
    1. Install [git bash](https://gitforwindows.org/)
    2. Use `git bash` terminal since it supports running `*.sh` file

### Running
1. Ensure docker is running
2. Run the database docker container
```bash
./bin/start_db.sh
```
3. Once running, you can now connect to the database at [localhost:5432](localhost:5432).  
The database name, username, password can all be found in the `bin/start_db.sh` file under `Set local variables`.

4. (Optional) To connect to the local database there are the following applications you can use:
    - [BeeKeeper](https://www.beekeeperstudio.io/get)
5. (Optional) For command line into database container
```bash
./bin/enter_db.sh
```

### Resources
- [Postgres Commands](./Postgres_Commands.md)
- [SQL Commands](./SQL_Commands.md)
