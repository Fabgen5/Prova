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
                (1029287563830, 'Il diavolo veste prada', 'inglese',1394,'Fidarsi è bene, non fidarsi è... Prada', '1004-08-15', '2018-06-26',4,1), 
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
                (16,4,'2017-09-20','ha inserito una pubblicazione');  
                
                 /*RECENSIONI INSERITE
				(1,3,'2018-06-21','ha inserito una recensione'),
				(14,4,'2018-06-20','ha inserito una recensione'),
                (10,4,'2018-06-26','ha inserito una recensione'),
                (4,3,'2018-05-29','ha inserito una recensione'),
                (8,2,'2018-06-15','ha inserito una recensione');
        
                              
      /* */
        
        
        