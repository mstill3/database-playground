-- this view is updatable!
create view "UserInterestSinceTeen2" as
    select *
    from "UserInterest"
    where "since_age" >= 13;

-- this modification moves rows outside the view
update "UserInterestSinceTeen2"
    set "since_age" = 12
    where "interest" = 'DIY';

-- this insert creates rows outside the view
insert into "UserInterestSinceTeen2" ("email", "interest", "since_age")
    values ('user7@gatech.edu', 'Soccer', 8);
