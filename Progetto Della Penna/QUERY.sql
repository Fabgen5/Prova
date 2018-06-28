
use biblioteca;
/*Query1*/
set @u = 3 ;
update utente set utenza= (utenza+1) mod 2
where (ID=@u);



/*Query2

select *
from pubblicazione 
order by data_ins desc 
limit 10;
*/

/*Query3

Select 
from
where
 */






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
set @b=4;
select p.titolo,p.isn,p.data_ins 
from pubblicazione p
where p.ID_utente=@b
*/

/*Query6
Estrazione catalogo delle pubblicazioni con titolo,autori,editore,anno pubblicazione, ordinate per titolo*/

/*select p.titolo Titolo,e.casaeditrice Editore, p.data_pubb Data_Pubblicazione,a.nome ,a.cognome
					
	from pubblicazione p 
	join editore e on(e.ID=p.ID_editore)
	join scrive s on (p.ID=s.ID_pubblicazione)
    join autore a on(s.ID_autore=a.ID)
order by p.titolo;*/


/*QUERY7
Estrazione dati completi di una pubblicazione specifica dato il suo ID PARAMETRICA*/
/*
set @c=10
select p.titolo, p.isbn, p.data_pubb,p.data_ins, e.casaeditrice, a.nome Autore, a.cognome, u.ID InseritaDa,
		sum(r.ID_pubblicazione) As RecensitoNumeroVolte
/*from pubblicazione p 
join editore e on(e.ID=p.ID_editore)
join scrive s on(s.ID_pubblicazione=p.ID)
join autore a on (a.ID=s.ID_autore)
join utente u on (u.ID=p.ID_utente)


where p.ID=@c
group by p.titolo;
*/