/* Query di inserimento di alcuni dati di prova per il progetto */
use biblioteca ;
insert into utente (ID,nome,cognome,data_n,utenza,email,psw,indirizzo,citta,categoria,cf)
		values(1,'mario','rossi','2006-05-21','0','mariorossi@gmail.com','Marion3','via colle di corte 7', 'canzano','b','mrarss90t05l103l'),
        (2,'patrizia','verdi','1993-5-5','0','patriziaverdi@gmail.com','Patrizi4','via colle di corte 14', 'canzano','b','ptrvrd93t06l134l'),
        (3,'domenico','neri','1998-03-28','1','domeniconeri@gmail.com','Domenic0','via pianella 7', 'castellalto','b','nredmc85t05l110l'),
        (4,'paola','viola','1987-6-15','1','paolaviola@gmail.com','Paolett4','via la specola 7', 'teramo','m','vlapla87t05l103l');
       
insert into pubblicazione (isbn,titolo,lingua,num_pag,descr,data_pubb,data_ins,ID_utente)
		values  (1234567891011, 'La casa di carta', 'italiano',1000,'una rapina finita bene', '1998-03-28', '2018-06-20',1),
			    (9847661523690, 'The wampire Diaries', 'inglese',3200,'La storia dei vampiri più amati al mondo', '1990-10-07', '2018-06-7',2),        
                (8574892019384, 'Un medico in famiglia', 'italiano',3948,'La famiglia italiana negli anni 2000', '2000-09-04', '2018-05-20',2) ,       
                (5364782918670, 'Jurassik World', 'Inglese',3748,'L incubo dei dinosauri non è ancora finito', '1800-12-26', '2018-05-20',1) ,       
                (6475892301923, 'Vita da streghe', 'Francese',350,'Magie e Stregonerie che appassioneranno i più piccolini', '2003-10-12', '2018-06-25',1) ,       
                (7485920384657, 'Natale al nord', 'Italiano',3400,'Commedia classica delle vacanze italiane', '1999-01-23', '2018-06-23',3),
                (6758934710294, 'Break Point', 'inglese',1000,'Superare i limiti oltre le paure', '2015-04-28', '2017-04-18',1)  ,      
                (8490394857694, 'La bambola assassina', 'tedesca',4657,'Avete paura delle bambole da gioco?', '2001-03-30', '2015-06-20',4),        
                (1029287563830, 'Il diavolo veste prada', 'inglese',1394,'Fidarsi è bene, non fidarsi è... Prada', '1004-08-15', '2018-06-26',4), 
                (8459381821932, 'Topolino e le sue avventure', 'italiano',1000,'Il racconto di Topolino e dei suoi amici', '2009-03-28', '2017-06-20',2) ,       
                (5435435435435, 'Elio e le storie tese', 'inglese',654,'Una vita divertente insieme ad Elio', '1998-03-28', '2018-02-20',1),        
                (7676575743534, 'Paperino', 'tedesca',63463,'Amici lui e Pluto', '1900-08-24', '2018-06-20',2),        
                (6349856489555, 'Harry Potter e il calice di fuoco', 'irlandese',3432,'Magie ad Hogwarts', '2010-12-01', '2016-05-20',1) ,      
                (4934392749375, 'Odissea', 'greca',453,'Poema epico del poeta Omero', '2012-10-09', '2018-06-15',3),        
                (3295034750102, 'La Divina Commedia', 'latino',2343,'Dante Alighieri si racconta', '1990-08-20', '2018-03-20',3),        
                (5639856486548, 'Basi Di Dati', 'francese',4242,'Imparare passo passo con il database', '2006-02-28', '2017-09-20',4);        