-- this view is not updatable because it has computed attribute
create view "AvgUserInterestSinceAge" as
    select "email", avg("since_age")
    from "UserInterest"
    group by "email";
