
use biblioteca;
/*Query1
set @idutente = 3 ;
update utente set utenza= (utenza+1) mod 2
where (ID=@idutente);

*/

/*Query2

select *
from pubblicazione 
order by data_ins desc 
limit 10;
*/

/*Query3
set @Inserimento = 'ha inserito una pubblicazione';
set @mipiace = '';		#'ha lasciato un like'
set @modifica = '';		#'ha modificato una recensione'
Select p.titolo Titolo , date (a.data_agg) Data_Ultimo_Aggiornamento
from	aggiornamento a
join 	pubblicazione p  on (p.ID=a.ID_pubblicazione) 
where 	date(a.data_agg) > date(curdate()) -30
		and ((a.descr_agg=@Inserimento) 
			or (a.descr_agg=@mipiace)
			or (a.descr_agg=@modifica))
order by a.data_agg desc


*/



/*Query4
UTENTI PIU COLLABORATIVI

OPZIONE A (i primi 10)
select u.nome Nome,u.cognome Cognome, count(*) as Pubblicazioni_Inserite 
	from utente u 
	join pubblicazione p on (p.ID_utente=u.ID)
group  by u.cognome,u.nome
order by Pubblicazioni_inserite desc limit 10;

OPZIONEB (Tutti quelli da un certo parametro in poi)
set @Collaborazione='3';
select u.nome Nome,u.cognome Cognome, count(p.ID_utente) as Pubblicazioni_Inserite 
	from utente u 
	join pubblicazione p on (p.ID_utente=u.ID)
group by u.nome ,u.cognome 
having count(p.ID_utente) >  @Collaborazione
*/

/*Query5 
Estrazione delle pubblicazioni inserite da un utente
set @b=4;
select p.titolo,p.isn,p.data_ins 
from pubblicazione p
where p.ID_utente=@b
*/

/*Query6
Estrazione catalogo delle pubblicazioni con titolo,autori,editore,anno pubblicazione, ordinate per titolo*/

/*
select p.titolo Titolo,e.casaeditrice Editore, p.data_pubb Data_Pubblicazione,a.nome NomeAutore,a.cognome CognomeAutore
					
	from pubblicazione p 
	join editore e on(e.ID=p.ID_editore)
	join scrive s on (p.ID=s.ID_pubblicazione)
    join autore a on(s.ID_autore=a.ID)
order by p.titolo;
*/
/*QUERY7
Estrazione dati completi di una pubblicazione specifica dato il suo ID PARAMETRICA*/
/**/
set @c=16;
select p.*, e.casaeditrice Editore , concat( a.nome,' ',a.Cognome ) Autore
		 
from pubblicazione p 
join utente u on (u.ID=p.ID_utente)
join editore e on(e.ID=p.ID_editore)
join scrive s on(p.ID=s.ID_pubblicazione)
join autore a on (a.ID=s.ID_autore)

where p.ID=@c
group by  p.titolo


/*	QUERY8*/



/*Query 9*/




