-- How a query is computed by query modification:
select UI."email", "interest"
    from "UserInterest" UI, "RegularUser" RU
    where UI."email" = RU."email" and
        "home_town" = 'Atlanta' and
        "since_age" >= 12;
