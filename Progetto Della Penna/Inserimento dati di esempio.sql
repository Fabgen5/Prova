 /*Query di inserimento di alcuni dati di prova per il progetto */
use biblioteca ;
insert into utente (nome,cognome,data_n,utenza,email,psw,indirizzo,citta,categoria,cf)
		values	('mario','rossi','2006-05-21','0','mariorossi@gmail.com','Marion3','via colle di corte 7', 'canzano','b','mrarss90t05l103l'),
				('patrizia','verdi','1993-5-5','0','patriziaverdi@gmail.com','Patrizi4','via colle di corte 14', 'canzano','b','ptrvrd93t06l134l'),
				('domenico','neri','1998-03-28','1','domeniconeri@gmail.com','Domenic0','via pianella 7', 'castellalto','m','nredmc85t05l110l'),
				('paola','viola','1987-6-15','1','paolaviola@gmail.com','Paolett4','via la specola 7', 'teramo','m','vlapla87t05l103l');

insert into editore (casaeditrice,citta)
		values ('Mondadori','Milano'),
			   ('Adelphi','Torino'),
               ('Feltrinelli','Roma');
  
insert into pubblicazione (isbn,titolo,lingua,num_pag,descr,data_pubb,data_ins,ID_utente,ID_editore)
		values  (1234567891011, 'La casa di carta', 'italiano',1000,'una rapina finita bene', '1998-03-28', '2018-06-20',1,1),
			    (9847661523690, 'The wampire Diaries', 'inglese',3200,'La storia dei vampiri più amati al mondo', '1990-10-07', '2018-06-7',2,1),        
                (8574892019384, 'Un medico in famiglia', 'italiano',3948,'La famiglia italiana negli anni 2000', '2000-09-04', '2018-05-20',2,2) ,       
                (5364782918670, 'Jurassik World', 'Inglese',3748,'L incubo dei dinosauri non è ancora finito', '1800-12-26', '2018-05-20',1,2) ,       
                (6475892301923, 'Vita da streghe', 'Francese',350,'Magie e Stregonerie che appassioneranno i più piccolini', '2003-10-12', '2018-06-25',1,3) ,       
                (7485920384657, 'Natale al nord', 'Italiano',3400,'Commedia classica delle vacanze italiane', '1999-01-23', '2018-06-23',3,3),
                (6758934710294, 'Break Point', 'inglese',1000,'Superare i limiti oltre le paure', '2015-04-28', '2017-04-18',1,2)  ,      
                (8490394857694, 'La bambola assassina', 'tedesca',4657,'Avete paura delle bambole da gioco?', '2001-03-30', '2015-06-20',4,1),        
                (1029287563830, 'Il diavolo veste prada', 'inglese',1394,'Fidarsi è bene, non fidarsi è... Prada', '1004-08-15', '2018-02-26',4,1), 
                (8459381821932, 'Topolino e le sue avventure', 'italiano',1000,'Il racconto di Topolino e dei suoi amici', '2009-03-28', '2017-06-20',2,1) ,       
                (5435435435435, 'Elio e le storie tese', 'inglese',654,'Una vita divertente insieme ad Elio', '1998-03-28', '2018-02-20',1,2),        
                (7676575743534, 'Paperino', 'tedesca',63463,'Amici lui e Pluto', '1900-08-24', '2018-06-20',2,3),        
                (6349856489555, 'Harry Potter e il calice di fuoco', 'irlandese',3432,'Magie ad Hogwarts', '2010-12-01', '2016-05-20',1,3) ,      
                (4934392749375, 'Odissea', 'greca',453,'Poema epico del poeta Omero', '2012-10-09', '2018-06-15',3,1),        
                (3295034750102, 'La Divina Commedia', 'latino',2343,'Dante Alighieri si racconta', '1990-08-20', '2018-03-20',3,1),        
                (5639856486548, 'Basi Di Dati', 'francese',4242,'Imparare passo passo con il database', '2006-02-28', '2017-09-20',4,1);        
                              
insert into autore(nome,cognome,data_n,nazionalita)
		values ('Fabio','Gentile','1992-12-5','Italiana'),
				('Laura','Degidio','1997-4-28','Italiana'),
                ('Pablo','Neruda','1904-7-12','Cilena'),
                ('Alesandro','Manzoni','1785-3-7','Italiana'),
                ('Omero',null,'1950-12-5','Greca'),
                ('Luigi','Illica','1857-5-9','Italiana'),
                ('Xanto','Lidio','1909-12-25','Italiana'),
                ('Ernst','Mach','1838-2-18','Tedesca'),
                ('Paul','Sabatier','1854-11-5','Francese'),
                ('Umberto','Saba','1883-3-9','Italiana'),
                ('Otto','Sackur','1880-9-28','Tedesca'),
                ('Garzo',null,'1272-12-5','Italiana'),
                ('Adolfo','Venturi','1856-09-04','Italiana'),
                ('Louis','Vaillard','1850-10-03','Francese'),
                ('Poul','Valery','1871-10-30','Francese'),
                ('Charles','Fabri','1867-06-11','Inglese'),
                ('Faeno',null,'1400-12-28','Greca'),
                ('Favorino',null,'1982-03-05','Inglese'),
                ('Roberto','Saviano','1979-09-22','Italiana'),
                ('Walt','Disney','1901-12-05','Americana'),
                ('Federico','Secondo','1870-12-25','Italiana'),
                ('Paolo','Atzeni','1950-05-27','Italiana');
        
        
        
 insert into scrive (ID_pubblicazione,ID_autore)
		values (1,19),
			   (2,16),(2,18),
               (3,19),
               (4,18),
               (5,13),(5,5),
			   (6,3),
               (7,12),
               (8,8),(8,15),
               (9,21),(9,22),(9,18),
               (10,20),
               (11,9),
               (12,20),
               (13,4),
               (14,1),
               (15,2),
               (16,3),(16,4),(16,22);
           
        
 insert into capitolo_sezione (numero,nome,ID_pubblicazione)
		values ('1','Introduzione','1'),  ('2','La squadra in azione','1'),  ('3','Tutto è bene quel che finisce bene','1'),
			   ('1','Introduzione','2'),   ('2','Un nuovo nemico','2'),  ('3','Una famiglia allargata','2'),
               ('1','Introduzione','3'),  ('2','Ecco Nonno Libero','3'),  ('3','Lele è tornato','3'),  ('4','Viva il Matrimonio','3'),
               ('1','Introduzione','4'),  ('2','Tornano i dinosauri','4'),  ('3','Un parco per loro','4'),  ('4','La fine dei T rex?','4'),
               ('1','Introduzione','5'),  ('2','Sabrina e le sue avventure','5'),  ('3','Una magia del futuro','5'),
               ('1','Introduzione','6'),  ('2','De Sica e i suoi amici','6'),  ('3','Una foto per ricordo','6'),
               ('1','Introduzione','7'),  ('2','Un salto nel vuoto','7'),  ('3','Supera i limiti','7'),
               ('1','Introduzione','8'),  ('2','Ti regalo una bambola','8'),  ('3','Scappa bimbo scappa','8'),  ('4','Un girone per tutti','8'),
               ('1','Introduzione','9'),  ('2','Una nuova segretaria','9'),  ('3','Una nuova amica','9'),
               ('1','Introduzione','10'),  ('2','La nuova avventura','10'),
               ('1','Introduzione','11'),  ('2','Elio si racconta','11'),  ('3','Amici per tutti i bimbi','11'),
               ('1','Introduzione','12'),  ('2','Uno strano incontro','12'),
               ('1','Introduzione','13'),  ('2','Inizia la prova','13'),  ('3','Harry ed i suoi amici','13'),  ('4','Torna il signore','13'),
               ('1','Introduzione','14'),  ('2','Un viaggio inaspettato','14'),  ('3','Mai a casa','14'),  ('4','Gli amici del futuro','14'),
               ('1','Introduzione','15'),  ('2','Nel mezzo del cammin','15'),  ('3','Purgatorio','15'),  ('4','A riveder le stelle, Beatrice','15'),
               ('1','Introduzione','16'),  ('2','Impara lo schema ER con noi','16'),  ('3','Programmazione progettuale','16');
 
 
 insert into parola_chiave (descr)
		values ('Ciao'),('Gatto'),('Tavolo'),('Sedia'),('Virgilio'),('Pluto'),('Topolino'),('Svelto'),('Camino'),('Macchina'),('Gioco'),('Labirinto'),('Felice'),('Custode'),
				('Giardino'),('Tuta'),('Povero'),('Porta'),('Cellulare'),('Beatrice'),('Neve'),('ER'),('Schema'),('Filo'),('Autobus'),('Nave'),('Cielo'),('Luna'),('Gironi'),
                ('T rex'),('Girasole'),('Grano'),('Maiale'),('Cane'),('Medusa'),('Sirena'),('Fuoco'),('Drago'),('Laura'),('Fabio'),('Computer'),('Rapina'),('Professore'),
                ('Ruolo'),('Nuotare'),('Calzetta'),('Lattina'),('Foglio'),('Omero'),('Scheda'),('Chiosco'),('Capire'),('Salto'),('Immersione'),('Faticare'),('Amore'),
                ('Cuore');
        
        
        
        
        
        
 insert into contenuta (ID_pubblicazione,ID_parola_chiave)
		values (1,1),(1,6),(1,19),
				(2,40),(2,44),(2,54),(2,23),
                (3,24),(3,21),(3,15),
                (4,33),(4,13),(4,32),(4,12),(4,3),
                (5,2),(5,10),
                (6,17),
                (7,17),(7,20),(7,8),(7,4),
                (8,2),(8,23),
                (9,18),(9,4),
                (10,34),
                (11,12),(11,1),(11,2),(11,5),
                (12,8),(12,7),(12,9),
                (13,15),(13,17),(13,19),
                (14,26),(14,29),(14,17),
                (15,38),(15,26),
                (16,36);

insert into ristampa(numero,data_r,ID_pubblicazione)
		values (1,'2000-10-03',1),(2,'2008-10-03',1),(3,'2014-10-03',1),
				(1,'1998-12-03',2),(2,'2010-05-03',2),
                
                (1,'1900-10-03',4),(2,'2000-10-03',4),
                
                (1,'2003-03-23',6),(2,'2006-11-30',6),
                
                (1,'2008-10-23',8),
                (1,'1998-10-03',9),
                (1,'2010-12-03',10),
                (1,'2000-06-03',11),(2,'2010-07-16',11),
                (1,'2014-10-03',12),
                (1,'2014-03-12',13),
                (1,'2016-10-30',14),
                (1,'1950-01-03',15),(2,'2018-05-03',15),
                (1,'2016-10-03',16),(2,'2018-01-03',16);
                
							
insert into sorgente(formato,tipo,uri,descr,ID_pubblicazione)
		values ('image/jpeg','immagine','http://server1.net/cover.jpg','copertina',1),('application/pdf','download','http://server1.net/book.pdf','versione elettronica gratuita',1),('cartaceo,copertina rigida','acquisto','http://amazon.it/xyz','acquisto online',1),
				('image/jpeg','immagine','http://server2.net/cover.jpg','copertina',2),('application/pdf','download','http://server134.net/book.pdf','versione elettronica gratuita',2),('cartaceo,copertina rigida','acquisto','http://ebay.it/xyz','acquisto online',2),
				('image/jpeg','immagine','http://server3.net/cover.jpg','copertina',3),('application/pdf','download','http://libro.net/book.pdf','versione elettronica gratuita',3),
				('image/jpeg','immagine','http://server4.net/cover.jpg','copertina',4), ('cartaceo,copertina rigida','acquisto','http://subito.it/xyz','acquisto online',4),
				('image/jpeg','immagine','http://server5.net/cover.jpg','copertina',5),('application/pdf','download','http://servefew1.net/book.pdf','versione elettronica gratuita',5),
				('image/jpeg','immagine','http://server6.net/cover.jpg','copertina',6),('cartaceo,copertina rigida','acquisto','http://amazon.it/xyz','acquisto online',6),
                ('image/jpeg','immagine','http://server7.net/cover.jpg','copertina',7),('cartaceo,copertina rigida','acquisto','http://ebay.it/xyz','acquisto online',7),
				('image/jpeg','immagine','http://server8.net/cover.jpg','copertina',8),('cartaceo,copertina rigida','acquisto','http://libraccio.it/xyz','acquisto online',8),
				('image/jpeg','immagine','http://server9.net/cover.jpg','copertina',9),('application/pdf','download','http://libraccio.net/book.pdf','versione elettronica gratuita',9),('cartaceo,copertina rigida','acquisto','http://amazon.it/xyz','acquisto online',9),
				('image/jpeg','immagine','http://wikipedia.net/cover.jpg','copertina',10),('cartaceo,copertina rigida','acquisto','http://amazon.it/xyz','acquisto online',10),
				('image/jpeg','immagine','http://google.net/cover.jpg','copertina',11),('cartaceo,copertina rigida','acquisto','http://amazon.it/xyz','acquisto online',11),
				('image/jpeg','immagine','http://imggoogle.net/cover.jpg','copertina',12),('application/pdf','download','http://gratisqui.net/book.pdf','versione elettronica gratuita',12),('cartaceo,copertina rigida','acquisto','http://libro.it/xyz','acquisto online',12),
                ('image/jpeg','immagine','http://immaginecop.net/cover.jpg','copertina',13),('cartaceo,copertina rigida','acquisto','http://subito.it/xyz','acquisto online',13),
				('image/jpeg','immagine','http://server14.net/cover.jpg','copertina',14),('cartaceo,copertina rigida','acquisto','http://libraccio.it/xyz','acquisto online',14),
				('image/jpeg','immagine','http://server15.net/cover.jpg','copertina',15),('application/pdf','download','http://librofree.net/book.pdf','versione elettronica gratuita',15),('cartaceo,copertina rigida','acquisto','http://youlibro.it/xyz','acquisto online',15),
				('image/jpeg','immagine','http://server16.net/cover.jpg','copertina',16),('application/pdf','download','http://nomoney.net/book.pdf','versione elettronica gratuita',16);
				
        

 
 
insert into mipiace (ID_pubblicazione,ID_utente,data_l)  
		values  (1,1,'2018-06-7'),(4,1,'2018-06-7'),(10,1,'2018-06-7'),(9,1,'2018-06-18'),(6,1,'2018-06-22'),
				(1,2,'2018-06-7'),(3,2,'2018-06-17'),(11,2,'2018-06-24'),
                (1,3,'2018-06-5'),(4,3,'2018-06-11'),(10,3,'2018-06-12'),(9,3,'2018-06-1');
        
 insert into recensione(ID_pubblicazione,testo,data_rec,ID_utente,data_app,ID_utentemod)
		values	(1,'Molto bello, peccato non adatto a bambini','2018-06-21',3,'2018-06-23',4),
				(14,'Veramente una grande opera! Consigliatissima','2018-06-20',4,null,null),
				(10,'Ok','2018-06-26',4,null,null),
                (4,'Mmh, libro scadente. Ce ne sono di migliori.','2018-05-29',3,'2018-06-01',4),
                (8,'Troppe pagine.. Uff!','2018-06-15',2,null,null);
        

 insert into aggiornamento  (ID_pubblicazione,ID_utente,data_agg,descr_agg) 
			/*LIKE LASCIATI*/
		values   (1,1,'2018-06-7','ha lasciato un like'),(4,1,'2018-06-7','ha lasciato un like'),(10,1,'2018-06-7','ha lasciato un like'),(9,1,'2018-06-18','ha lasciato un like'),(6,1,'2018-06-22','ha lasciato un like'),
				(1,2,'2018-06-7','ha lasciato un like'),(3,2,'2018-06-17','ha lasciato un like'),(11,2,'2018-06-24','ha lasciato un like'),
                (1,3,'2018-06-5','ha lasciato un like'),(4,3,'2018-06-11','ha lasciato un like'),(10,3,'2018-06-12','ha lasciato un like'),(9,3,'2018-06-1','ha lasciato un like'),
			/*PUBBLICAZIONI INSERITE*/
				(1,1,'2018-06-20','ha inserito una pubblicazione'),
			    (2,2, '2018-06-7','ha inserito una pubblicazione'),        
                (3,2,'2018-05-20','ha inserito una pubblicazione'),       
                (4,1,'2018-05-20','ha inserito una pubblicazione'),       
                (5,1,'2018-06-25','ha inserito una pubblicazione'),       
                (6,3,'2018-06-23','ha inserito una pubblicazione'),
                (7,1,'2017-04-18','ha inserito una pubblicazione'),      
                (8,4,'2015-06-20','ha inserito una pubblicazione'),        
                (9,4,'2018-06-26','ha inserito una pubblicazione'), 
                (10,2,'2017-06-20','ha inserito una pubblicazione'),       
                (11,1,'2018-02-20','ha inserito una pubblicazione'),        
                (12,2,'2018-06-20','ha inserito una pubblicazione'),        
                (13,1,'2016-05-20','ha inserito una pubblicazione'),      
                (14,3,'2018-06-15','ha inserito una pubblicazione'),        
                (15,3,'2018-03-20','ha inserito una pubblicazione'),        
                (16,4,'2017-09-20','ha inserito una pubblicazione'),  
			
            /*MODIFICHE PUBBLICAZIONE*/
            
				(1,3,'2018-06-22','ha modificato una pubblicazione'), (1,2,'2018-06-23','ha modificato una pubblicazione'), (1,4,'2018-06-25','ha modificato una pubblicazione'), 
				(2,3,'2018-06-20','ha modificato una pubblicazione'), 
                (3,1,'2018-05-25','ha modificato una pubblicazione'), 
                (4,4,'2018-05-28','ha modificato una pubblicazione'), 
                (5,1,'2018-06-26','ha modificato una pubblicazione'), 
                (6,1,'2018-06-25','ha modificato una pubblicazione'),(6,1,'2018-06-26','ha modificato una pubblicazione'), 
                (7,1,'2018-02-20','ha modificato una pubblicazione'), 
                (8,3,'2016-04-26','ha modificato una pubblicazione'), 
                
                (10,3,'2017-08-23','ha modificato una pubblicazione'), 
                (11,2,'2018-03-1','ha modificato una pubblicazione'), 
                
                (13,2,'2016-10-20','ha modificato una pubblicazione'), (13,1,'2017-05-29','ha modificato una pubblicazione'), 
                (15,2,'2018-04-17','ha modificato una pubblicazione'), (15,1,'2018-05-20','ha modificato una pubblicazione'), 
                (16,1,'2017-12-5','ha modificato una pubblicazione');
                
            
            
            
            
            
            
            
            
            
                 /*RECENSIONI INSERITE
				(1,3,'2018-06-21','ha inserito una recensione'),
				(14,4,'2018-06-20','ha inserito una recensione'),
                (10,4,'2018-06-26','ha inserito una recensione'),
                (4,3,'2018-05-29','ha inserito una recensione'),
                (8,2,'2018-06-15','ha inserito una recensione');
        
                              
      /* */
        
        
        