drop database if exists biblioteca; 

# creaimo il database e lo selezioniamo come default per tutte le istruzioni successive
create database biblioteca;
use biblioteca;

create table pubblicazione(
	ID integer unsigned not null primary key auto_increment,
    isbn char(13) not null unique,
    titolo varchar(100) not null,
    lingua varchar(20) not null,
    num_pag smallint unsigned not null,
    descr varchar(500)not null,
    data_pubb date not null,
    data_ins date not null,
    ID_utente integer unsigned not null
);


create table utente(
	ID integer unsigned not null primary key auto_increment,
    nome varchar(100) not null,
    cognome varchar(100) not null,
    data_n date not null,
    utenza enum('a','p') not null default 'a',#con a rappresentiamo l'utente passivo, con p quello attivo
    email varchar(100)not null,
    psw varchar(100)not null,
    indirizzo varchar(200) ,
    citta varchar(100),
    categoria enum('b','m') not null default 'b',# con b rappresentiamo l'utente base, con m il moderatore
    cf char(16) not null unique
);

create table autore(
	ID integer unsigned not null primary key auto_increment,
    nome varchar(100) not null,
    cognome varchar(100) not null,
    data_n date not null,
    nazionalita varchar(100) not null,
    
    constraint unico_autore unique(nome,cognome,data_n)
);

create table editore(
	ID integer unsigned not null primary key auto_increment,
    casaeditrice varchar(100) not null,
    citta varchar(100) not null,
    
    constraint unico_editore unique(casaeditrice,citta)
);

create table recensione(
	ID integer unsigned not null primary key auto_increment,
    testo varchar(300) not null,
    data_app date ,
    data_rec date not null ,
    ID_pubblicazione integer unsigned not null,
    ID_utente integer unsigned not null, 
    
    constraint unica_recensione unique(ID_pubblicazione, ID_utente)
);

create table parola_chiave(
	ID integer unsigned not null primary key auto_increment,
    descr varchar(15) not null unique    
);

create table ristampa(
	ID integer unsigned not null primary key auto_increment,
    numero smallint not null,
    data_r date not null,
    ID_pubblicazione integer unsigned not null,
    
    constraint unica_ristampa unique(numero, ID_pubblicazione)
);

create table capitolo_sezione(
	ID integer unsigned not null primary key auto_increment,
    numero smallint not null,
    nome varchar(100) not null,
    ID_pubblicazione integer unsigned not null,
    
    constraint unico_capitolo_sezione unique(numero, ID_pubblicazione)
);

create table sorgente(
	ID integer unsigned not null primary key auto_increment,
	formato varchar(100) not null,
    tipo varchar(15) not null,
    uri varchar(100) not null,
    descr varchar(100) not null,
    ID_pubblicazione integer unsigned not null
);


create table aggiornamento(
  ID integer unsigned not null primary key auto_increment,	
  ID_pubblicazione integer unsigned not null,
  ID_utente integer unsigned not null,
  data_agg date not null,
  
  constraint aggiornamento_pubblicazione foreign key (ID_pubblicazione) references pubblicazione(ID) on update cascade,
  constraint aggiornamento_utente foreign key (ID_utente) references utente(ID) on update cascade
);

create table mipiace (
  ID integer unsigned not null primary key auto_increment,	
  ID_pubblicazione integer unsigned not null,
  ID_utente integer unsigned not null,
  data_l date not null,
  
  constraint unico_mipiace unique(ID_pubblicazione, ID_utente),
  constraint mipiace_pubblicazione foreign key (ID_pubblicazione) references pubblicazione(ID) on update cascade,
  constraint mipiace_utente foreign key (ID_utente) references utente(ID) on update cascade
);

create table scrive (
  ID integer unsigned not null primary key auto_increment,	
  ID_pubblicazione integer unsigned not null,
  ID_autore integer unsigned not null,
  
  constraint scrive_pubblicazione foreign key (ID_pubblicazione) references pubblicazione(ID) on update cascade,
  constraint scrive_autore foreign key (ID_autore) references autore(ID) on update cascade
);

create table contenuta (
  ID integer unsigned not null primary key auto_increment,	
  ID_pubblicazione integer unsigned not null,
  ID_parola_chiave integer unsigned not null,
  
  constraint unica_parola_chiave unique(ID_parola_chiave, ID_pubblicazione),
  constraint contenuta_pubblicazione foreign key (ID_pubblicazione) references pubblicazione(ID) on update cascade,
  constraint contenuta_parola_chiave foreign key (ID_parola_chiave) references parola_chiave(ID) on update cascade
);













//*

create table giocatore(
	ID integer unsigned not null primary key auto_increment,
    nome varchar(100) not null,
    cognome varchar(100) not null,
    cf char(16) not null unique,
    n_cartellino integer unsigned not null unique
);

create table squadra(
	ID integer unsigned not null primary key auto_increment,
    nome varchar(200) not null,
    citta varchar(200) not null,
	#attenzione a rendere i nomi dei vincoli unici in tutto lo schema!
    constraint unica_squadra unique(nome,citta)
);

create table formazione(
  ID integer unsigned not null primary key auto_increment,	
  IDsquadra integer unsigned not null,
  IDgiocatore integer unsigned not null,
  anno smallint unsigned not null,
  numero tinyint unsigned not null,
  constraint unica_formazione unique(IDsquadra,IDgiocatore,anno),
  constraint formazione_squadra foreign key (IDsquadra) references squadra(ID) on update cascade on delete cascade,
  constraint formazione_giocatore foreign key (IDgiocatore) references giocatore(ID) on update cascade
);


create table partita(
  ID integer unsigned not null primary key auto_increment,	
  data date not null,
  citta varchar(200) not null,
  stadio varchar(200) not null,
  IDcampionato integer unsigned not null,
  IDsquadra1 integer unsigned not null,
  IDsquadra2 integer unsigned not null,
  goal1 tinyint unsigned not null default 0,
  goal2 tinyint unsigned not null default 0,
  constraint campionato_partita foreign key (IDcampionato) references campionato(ID) on update cascade,
  constraint campionato_squadra1 foreign key (IDsquadra1) references squadra(ID) on update cascade,
  constraint campionato_squadra2 foreign key (IDsquadra2) references squadra(ID) on update cascade
);

create table direzione(
  ID integer unsigned not null primary key auto_increment,	
  IDpartita integer unsigned not null,
  IDarbitro integer unsigned not null,
  ruolo enum('r1','r2','r3') not null default 'r1',
  constraint direzione_partita foreign key (IDpartita) references partita(ID) on update cascade on delete cascade,
  constraint direzione_arbitro foreign key (IDarbitro) references arbitro(ID) on update cascade
);

create table marcatore(
  ID integer unsigned not null primary key auto_increment,	
  IDpartita  integer unsigned not null,
  IDgiocatore integer unsigned not null,
  minuto tinyint unsigned not null,
  constraint marcatore_partita foreign key(IDpartita) references partita(ID) on update cascade on delete cascade,
  constraint marcatore_giocatore foreign key(IDgiocatore) references giocatore(ID) on update cascade
);nome varchar(100) not null,
    cognome varchar(100) not null,