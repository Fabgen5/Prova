/* Query di inserimento di alcuni dati di prova per il progetto */
use biblioteca ;
insert into utente (ID,nome,cognome,data_n,utenza,email,psw,indirizzo,citta,categoria,cf)
		values(1,'mario','rossi','2006-05-21','p','mariorossi@gmail.com','Marion3','via colle di corte 7', 'canzano','b','mrarss90t05l103l'),
        (2,'patrizia','verdi','1993-5-5','p','patriziaverdi@gmail.com','Patrizi4','via colle di corte 14', 'canzano','b','ptrvrd93t06l134l'),
        (3,'domenico','neri','1998-03-28','a','domeniconeri@gmail.com','Domenic0','via pianella 7', 'castellalto','b','nredmc85t05l110l'),
        (4,'paola','viola','1987-6-15','a','paolaviola@gmail.com','Paolett4','via la specola 7', 'teramo','m','vlapla87t05l103l');
        
/*insert into utente (ID,nome,cognome,data_n,utenza,email,psw,indirizzo,citta,categoria,cf)
		values(2,'patrizia','verdi','1993-5-5','p','patriziaverdi@gmail.com','Patrizi4','via colle di corte 14', 'canzano','b','ptrvrd93t06l134l'); 
        
insert into utente (ID,nome,cognome,data_n,utenza,email,psw,indirizzo,citta,categoria,cf)
		values(3,'domenico','neri','1998-03-28','a','domeniconeri@gmail.com','Domenic0','via pianella 7', 'castellalto','b','nredmc85t05l110l');
        
insert into utente (ID,nome,cognome,data_n,utenza,email,psw,indirizzo,citta,categoria,cf)
		values(4,'paola','viola','1987-6-15','a','paolaviola@gmail.com','Paolett4','via la specola 7', 'teramo','m','vlapla87t05l103l');