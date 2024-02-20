-- this view is not updatable because it has no unique properties
create view "GenderHomeTown" as
    select "gender", "home_town"
    from "RegularUser"
    where "birth_year" >= 1969;
