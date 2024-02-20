-- Create a view (virtual table)
create view "AtlantaUserInterest" as
    select RU."email", "interest", "since_age"
    from "UserInterest" UI, "RegularUser" RU
    where UI."email" = RU."email"
        and "home_town" = 'Atlanta';
