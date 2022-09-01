-- task: Using  any  type  of  the  joins  create  a  view  that combines multiple tables in a logical way 
 -- create a view to see the different albums; including year of release, and the bands they relate to 
use musicapp1;
CREATE VIEW ALBUMVIEW
AS SELECT artist.name as Band, album.title as Album, discography.release_year as Year
FROM artist
LEFT JOIN album ON artist.id = album.artist_id
LEFT JOIN discography ON album.id = discography.album_id
ORDER BY artist.name;
select * from albumview
