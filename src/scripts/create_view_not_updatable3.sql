-- this view is not updatable because it has join of tables
create view "AtlantaUserInterest2" as
    select RU."email", "interest", "since_age"
    from "UserInterest" UI, "RegularUser" RU
    where UI."email" = RU."email" and "home_town" = 'Atlanta';
