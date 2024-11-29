use ig_clone;
select * from photos;
select * from users;

 #Calculate the average number of posts per user on Instagram. 
 SELECT 
    AVG(photo_count) AS average_posts_per_user
FROM
    (SELECT 
        COUNT(photos.id) AS photo_count
    FROM
        users
    LEFT JOIN photos ON users.id = photos.user_id
    GROUP BY users.id) AS user_photo_counts;
    
#Provide the total number of photos on Instagram divided by the total number of users.
    SELECT 
    (SELECT 
            COUNT(*)
        FROM
            photos) / (SELECT 
            COUNT(*)
        FROM
            users) AS total_photos_per_user;
            
            
           