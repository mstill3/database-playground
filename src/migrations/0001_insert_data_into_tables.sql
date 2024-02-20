-- Insert data into the database tables
insert into "RegularUser" ("email", "birth_year", "gender", "home_town")
values
    ('user1@gatech.edu', 1985, 'M', 'Atlanta'),
    ('user2@gatech.edu', 1969, 'M', 'Austin'),
    ('user3@gatech.edu', 1967, 'M', 'Portland'),
    ('user4@gatech.edu', 1988, 'M', 'Atlanta');


insert into "UserInterest" ("email", "interest", "since_age")
values
    ('user1@gatech.edu', 'Music', 10),
    ('user1@gatech.edu', 'Reading', 5),
    ('user1@gatech.edu', 'Tennis', 14),
    ('user2@gatech.edu', 'Blogging', 13),
    ('user3@gatech.edu', 'Music', 11),
    ('user4@gatech.edu', 'DIY', 18);
