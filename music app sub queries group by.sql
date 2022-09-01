-- task: Prepare  an  example  query  with  a  subquery  to demonstrate  how  to  extract  data  from  your  DB  for analysis
-- identifies all artists in catalogue (excluding the first two artists), identifies the genre they are linked with and groups by artist name
use musicapp1;
select artist.name, genre.name from artist, genre
where artist.id > 2
group by artist.name;