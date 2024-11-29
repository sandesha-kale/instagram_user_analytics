use ig_clone;
select * from comments;
select * from follows;
select * from likes;
select * from photo_tags;
select * from photos;
select * from tags;
select * from users;

#1.Loyal User Reward
SELECT 
    *
FROM
    users
ORDER BY created_at ASC
LIMIT 5;

#2.Inactive User Engagement
SELECT 
    users.username, photos.user_id
FROM
    users
        LEFT JOIN
    photos ON users.id = photos.user_id
WHERE
    photos.user_id IS NULL;
    
