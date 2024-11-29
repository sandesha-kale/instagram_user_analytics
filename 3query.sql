use ig_clone;
select * from comments;
select * from follows;
select * from likes;
select * from photo_tags;
select * from photos;
select * from tags;
select * from users;


#3.Contest Winner Declaration
SELECT 
    users.id,
    users.username,
    photos.image_url,
    COUNT(likes.user_id) AS like_count
FROM
    users,
    photos,
    likes
WHERE
    users.id = photos.user_id
        AND likes.user_id = photos.user_id
GROUP BY users.id , users.username , photos.image_url
ORDER BY like_count DESC
LIMIT 1;
