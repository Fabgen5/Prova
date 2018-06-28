
use biblioteca;
/*Query1
update utente set utenza= (utenza+1) mod 2
where (ID=1);

*/

/*Query2

select *
from pubblicazione 
order by data_ins desc 
limit 10;
*/

/*Query3*/

/*Query4
UTENTI PIU COLLABORATIVI
Opzioneb
select u.nome Nome,u.cognome Cognome, count(*) as Pubblicazioni_Inserite 
	from utente u 
	join aggiornamento a on (a.ID_utente=u.ID)
where (a.descr_agg='ha inserito una pubblicazione') 
group  by u.cognome,u.nome
order by Pubblicazioni_inserite desc limit 10;
Opzionea
select u.nome Nome,u.cognome Cognome, count(*) as Pubblicazioni_Inserite 
	from utente u 
	join pubblicazione p on (p.ID_utente=u.ID)
group  by u.cognome,u.nome
order by Pubblicazioni_inserite desc limit 10;*/


/*Query5 
Estrazione delle pubblicazioni inserite da un utente DA PARAMETRIZZARE

select * 
from pubblicazione p
where p.ID_utente=1
*/

/*Query6
Estrazione catalogo delle pubblicazioni con titolo,autori,editore,anno pubblicazione, ordinate per titolo

select p.titolo Titolo, a.nome Nome,a.cognome Cognome, e.casaeditrice Editore, p.data_pubb Data_Pubblicazione
from pubblicazione p 
	join editore e on(e.ID=p.ID_editore)
	join scrive s on (p.ID=s.ID_pubblicazione)
    join autore a on(s.ID_autore=a.ID)
order by p.titolo

*/


/*QUERY7
Estrazione dati completi di una pubblicazione specifica dato il suo ID PARAMETRICA*/

select *
from pubblicazione p 
join editore e on(e.ID=p.ID_editore)
join scrive s on()
join autore a
join utente u
join recensione r
join mipiace m
where p.ID=3;
