#4.Hashtag Research
use ig_clone;
select * from tags;
select * from photo_tags;

SELECT 
    tags.tag_name,
    COUNT(photo_tags.photo_id) AS total_tags,
    photo_tags.tag_id
FROM
    tags,
    photo_tags
WHERE
    tags.id = photo_tags.tag_id
GROUP BY photo_tags.tag_id , tags.tag_name
ORDER BY total_tags DESC
LIMIT 5;