# Database Playground

`src/scripts` are ad-hoc SQL commands  
`src/migrations` are init DB SQL command

## Pre-requisites
- Docker must be installed and running
- MacOS/Linux

## Starting database
```bash
./bin/start_db.sh
```

## Connecting into database
```bash
./bin/enter_db.sh
```

## Postgres commands

### Display tables
```psql
\dt
```

### Display views (virtual tables)
```psql
\dv
```

### Run pre-written ad-hoc commands
```psql
\i scripts/query_view.sql
```

### Exit CLI
```psql
\q
```

## SQL commands

### Display entries of table
```psql
select * from "RegularUser";
```
