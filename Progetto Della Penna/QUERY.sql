/*Query1*/
use biblioteca;

update utente set utenza= (utenza+1) mod 2
where (ID=1);



/* query 2
*/

select titolo,data_ins 
from pubblicazione 
order by data_ins desc 
limit 10;


/*Query 3*/
select 



