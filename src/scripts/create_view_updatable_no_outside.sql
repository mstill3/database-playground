-- this view is updatable! - prevents updates outside the view
-- The View `WITH CHECK OPTION` ensures that any future updates/inserts comply with the filter condition.
create view "UserInterestSinceTeen3" as
    select *
    from "UserInterest"
    where "since_age" >= 13
    with check option;

update "UserInterestSinceTeen3"
    set "since_age" = 12
    where "interest" = 'Camping';

insert into "UserInterestSinceTeen3" ("email", "interest", "since_age")
    values ('user5@gatech.edu', 'Coding', 19);
