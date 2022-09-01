-- task: Prepare  an  example  query  with  a  subquery  to demonstrate  how  to  extract  data  from  your  DB  for analysis
-- this query uses data from view 'albumview' and identifies albums release before 2010   


use musicapp1;
select Band, Album, Year from albumview
where Year < 2010;



