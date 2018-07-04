
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

/*Query3*/
/*
set @Inserimento='ha inserito una pubblicazione';
set @Mi_Piace='';
set @Modifica='';
select  p.titolo, a.data_agg
from pubblicazione p join aggiornamento a on (p.id=a.ID_pubblicazione)
where date(.data_agg) > (curdate())-30 and (a.descr_agg=@Modifica or a.descr_agg=@Mi_Piace or a.descr_agg=@Inserimento)
order by a.data_agg desc;
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
/*
set @c=16;
select p.*, e.casaeditrice Editore , concat( a.nome,' ',a.Cognome ) Autore
		 
from pubblicazione p 
join utente u on (u.ID=p.ID_utente)
join editore e on(e.ID=p.ID_editore)
join scrive s on(p.ID=s.ID_pubblicazione)
join autore a on (a.ID=s.ID_autore)

where p.ID=@c
group by  p.titolo

*/

/*Query08 */

/*
set @Titolo='Il diavolo vesta prada';
set @Parola_chiave='';
set @ISBN='';
set @NomeA='Roberto';
set @CognomeA='';
select distinct p.*
from autore a join scrive s on (a.ID=s.ID_autore) 
	 join  pubblicazione p  on (p.ID=s.ID_pubblicazione)
	 join contenuta c on (p.ID=c.ID_pubblicazione) 
	 join parola_chiave pc on (pc.ID=c.ID_parola_chiave)
where p.titolo=@Titolo or pc.descr=@Parola_chiave or p.isbn=@ISBN or a.nome=@NomeA or a.cognome=@CognomeA  ; */

/*Query9
Inserimento di una recensione relativa ad una pubblicazione
set @Testo='';
set @ID_pubblicazione='';




#QUERY09 INSERIMENTO DI UNA RECENSIONE IN UNA PUBBLICAZIONE CON PROCEDUCE CHE AGGIORNA LA TAB AGGIORNAMENTO 


delimiter $


drop procedure if exists recensioneagg$

create procedure recensioneagg(_ID_pubblicazione integer unsigned, _testo varchar(300) ,
						_data_rec datetime, _ID_utente integer unsigned, _data_app date, _ID_utentemod integer unsigned) 
begin
 

-- inseriamo la recensione 
insert into recensione(ID_pubblicazione,testo,data_rec,ID_utente,data_app,ID_utentemod) values (_ID_pubblicazione,_testo,_data_rec,_ID_utente,_data_app,_ID_utentemod);
-- aggiorniamo la tabella aggiornamento
insert into aggiornamento(ID_pubblicazione,ID_utente,data_agg,descr_agg)
		values (_ID_pubblicazione,_ID_utente , _data_rec, 'ha inserito una recensione');

end$  
call recensioneagg(16,'carino,consigliato',current_timestamp,8,null,null)$

*/  


/*

    
    
    #QUERY10 APPROVAZIONE DI UNA RECENSIONE IN UNA PUBBLICAZIONE CON AGGIORNAMENTO TAB AGGIORNAMENTO


delimiter $


drop procedure if exists approvazionerec$

create procedure approvazionerec(_ID_pubblicazione integer unsigned, _ID_utente integer unsigned, _data_app datetime, _ID_utentemod integer unsigned) 
begin
 

-- aggiorniamo la recensione con update 
update  recensione
set recensione.data_app=_data_app and r.ID_utentemod=_ID_utentemod
where recensione.ID_pubblicazione=_ID_pubblicazione and recensione.ID_utente=_ID_utente 
		and _ID_utentemod  in(select u.ID
							  from utente u
							  where u.categoria = 'm');
-- aggiorniamo la tabella aggiornamento
insert into aggiornamento(ID_pubblicazione,ID_utente,data_agg,descr_agg)
		values (_ID_pubblicazione,_ID_utentemod , _data_app, 'ha approvato una recensione dell\' utente + _ID_utente');

end$  
call approvazionerec(1,3,current_timestamp,8)$

*/

/*QUERY11 Inserimento like aggiornamento tabella 'aggiornamento'
delimiter $
#create user if not exists GentileDiEgidio@localhost identified by 'flpass'$
#grant all on campionato.* to GentileDiEgidio@localhost$

drop procedure if exists inserisci_mipiace$

create procedure inserisci_mipiace(_ID_pubblicazione integer unsigned,_ID_utente integer unsigned, _data_l datetime) 
begin
 

-- inseriamo il mipiace 
insert into mipiace(ID_pubblicazione,ID_utente, data_l) values (_ID_pubblicazione,_ID_utente , _data_l);
-- aggiorniamo la tabella aggiornamento (ID_pubblicazione,ID_utente,data_agg,descr_agg) 
insert into aggiornamento(ID_pubblicazione,ID_utente,data_agg,descr_agg)
		values (_ID_pubblicazione,_ID_utente , _data_l, 'ha inserito un like');

end$  
call inserisci_mipiace(1,7,current_timestamp)$
 
*/
 /*QUERY12 calcolo numero dei like per tutte le pubblicazioni


select p.titolo, count(mp.ID_pubblicazione) as Like_Ricevuti
from pubblicazione p join mipiace mp on (p.ID=mp.ID_pubblicazione)
group by p.titolo
order by count(mp.ID_pubblicazione) desc; 

Per una pubblicazione(parametrica)


set @Pubblicazione='6';
select p.titolo, count(mp.ID_pubblicazione) as Like_Ricevuti
from pubblicazione p join mipiace mp on (p.ID=mp.ID_pubblicazione)
where p.ID=@pubblicazione
group by p.titolo;*/

/*Query13 estrazione elenco delle recensioni approvate per una pubblicazione
set @Pubblicazione='6';
select recensione.testo,  concat(utente.nome, ' ' , utente.cognome) as Inserita_Da,recensione.data_app as Approvata_il
from recensione join utente on (recensione.ID_utente=utente.ID)
where recensione.data_app is not null and recensione.ID_pubblicazione=@Pubblicazione;

*/


/*QUERY14 ESTRAZIONE DELLE RECENSIONI IN ATTESA DI APPROVAZIONE

select r.testo, concat(u.nome, ' ' , u.cognome) as Inserita_Da
from recensione r join utente u on (r.ID_utente=u.ID)
where r.data_app is null; */

/* QUERY15 ESTRAZIONE LOG DELLE MODIFICHE EFFETTUATE SU UNA PUBBLICAZIONE
set @Pubblicazione='10';
select p.titolo, concat(u.nome, ' ' , u.cognome) as Effettuata_Da, a.descr_agg as Descrizione_Modifica, a.data_agg as Data_Modifica
from pubblicazione p join aggiornamento a on (p.ID=a.ID_pubblicazione)
	 join utente u on (u.ID=a.ID_utente)
where p.ID=@Pubblicazione
order by Data_Modifica desc;
*/


/*QUERY16 ESTRAZIONE DELLE PUBBLICAZIONI DOVE E' DISPONIBILE UN DOWNLOAD
select p.*
from pubblicazione p join sorgente s on (p.ID=s.ID_pubblicazione)
where s.tipo='download';
*/

/*	 QUERY16 BIS ESTRAZIONE PUBBLICAZIONI DOVE  E' DISPONIBILE UN DOWNLOAD con subquery
select p.*
from pubblicazione p
where p.ID  in (select s.ID_pubblicazione
					from sorgente s
                    where s.tipo='download');*/
/*Non sono disponibili download 

select p.*                    
from pubblicazione p
where p.ID  not in (select s.ID_pubblicazione
					from sorgente s
                    where s.tipo='download');*/
                    
/*QUERY 17
Estrazione delle pubblicazioni con la data dell' ultima ristampa

select p.*  ,max(r.data_r) as Data_Ultima_Ristampa
 from ristampa r  
	right join pubblicazione p on (p.ID=r.ID_pubblicazione)
    group by p.ID
	order by p.titolo;
	*/
    
    
/*QUERY18 (sbagliata) DATA UNA PUBBLICAZIONE RESTITUIRE TUTTE LE PUBBLICAZIONI AVENTI GLI STESSI AUTORI

set @pubblicazione='1';
select p.titolo, a.nome Nome,a.cognome Cognome
	from pubblicazione p
    join scrive s on (s.ID_pubblicazione=@pubblicazione)
	 join autore a on (s.ID_autore=(select a.ID
						from pubblicazione p
    join scrive s on (s.ID_pubblicazione=@pubblicazione)
	 join autore a on (s.ID=a.id)
						
								) ) 
group by p.titolo;
*/

#update recensione r
#set r.ID_utentemod=7 and r.data_app=null
#where r.ID_pubblicazione=1 and r.ID_utente=3;

