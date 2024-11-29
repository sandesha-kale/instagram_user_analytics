use ig_clone;
select * from users;
select * from photos;
select * from likes;

SELECT 
    users.id, 
    users.username,
    COUNT(likes.photo_id) AS total_likes,
    p.total_photos
FROM 
    users 
JOIN 
    likes ON users.id = likes.user_id
CROSS JOIN 
    (SELECT COUNT(*) AS total_photos FROM photos) p
GROUP BY 
    users.id, users.username, p.total_photos
HAVING 
    total_likes = p.total_photos;

