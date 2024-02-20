--Create database tables
create table "RegularUser" (
    "id" serial primary key,
    "email" varchar(255) unique not null,
    "birth_year" integer not null,
    "gender" varchar(1) not null,
    "home_town" varchar(255) not null,
    "created_at" timestamp default now()
);

create table "UserInterest" (
    "id" serial primary key,
    "email" varchar(255) not null,
    "interest" varchar(255) not null,
    "since_age" integer not null,
    "created_at" timestamp default now()
);
