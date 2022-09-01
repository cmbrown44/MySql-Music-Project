-- task: In your database, create a stored function that can be applied to a query in your DB
-- this function displays the number of years it has been since an album was released

use musicapp1;
select *
from musicapp1.discography;

DELIMITER //
CREATE FUNCTION YearSinceRelease(release_year int) returns int deterministic
begin
declare date2 date;
Select current_date()into date2;
return year(date2)-release_year;
end

//

DELIMITER ;

Select album_id, YearSinceRelease(release_year) as 'years'
from musicapp1.discography;

show function status 
where db = 'musicapp1';


