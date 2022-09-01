-- Create  a  view  that  uses  at  least  3-4  base tables; prepare and demonstrate a query that uses the view to produce a logically arranged result set for analysis
-- task: Prepare an  example  query  with  group  by and having  to  demonstrate  how  to  extract  data from your DB for analysis
--  Created a view showing if bands are on tour, their locations and grouping by the band name
  
use musicapp1;
CREATE VIEW TourView
AS SELECT artist.name as Band, album.title as Album, tour.on_tour as Touring, tour_location.location
FROM artist
LEFT JOIN album ON artist.id = album.artist_id
LEFT JOIN tour ON artist.id = tour.artist_id
LEFT JOIN tour_location ON tour.id = tour_location.tour_id
ORDER BY artist.name;
select * from tourview
