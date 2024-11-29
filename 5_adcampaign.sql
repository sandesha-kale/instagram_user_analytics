use ig_clone;
select * from users;

#5.Ad Campaign Launch

SELECT 
    DATE_FORMAT(created_at, '%W') AS registration_day,
    COUNT(id) AS user_count
FROM
    users
GROUP BY registration_day
ORDER BY user_count DESC;

