
create user if not exists lbduser@localhost identified by 'lbdpass' ;
grant all on campionato.* to lbduser@localhost ;

drop database if exists biblioteca ;

# creaimo il database e lo selezioniamo come default per tutte le istruzioni successive
create database biblioteca;
use biblioteca;

create table editore(
	ID integer unsigned not null primary key auto_increment,
    casaeditrice varchar(100) not null,
    citta varchar(100) not null,
    
    constraint unico_editore unique(casaeditrice,citta)
);

create table utente(
	ID integer unsigned not null primary key auto_increment,
    nome varchar(100) not null,
    cognome varchar(100) not null,
    data_n datetime not null,
    utenza tinyint not null default '0',#con 0 rappresentiamo l'utente passivo, con 1 quello attivo
    email varchar(100)not null,
    psw varchar(100)not null,
    indirizzo varchar(200) ,
    citta varchar(100),
    categoria enum('b','m') not null default 'b',# con b rappresentiamo l'utente base, con m il moderatore
    cf char(16) not null unique
);

create table pubblicazione(
	ID integer unsigned not null primary key auto_increment,
    isbn char(13) not null unique,
    titolo varchar(100) not null,
    lingua varchar(20) not null,
    num_pag smallint unsigned not null,
    descr varchar(500)not null,
    data_pubb date not null,
    data_ins datetime not null default current_timestamp,
    ID_utente integer unsigned not null,
    ID_editore integer unsigned not null,
    
    constraint pubblicazione_utente foreign key (ID_utente) references utente(ID) on update cascade,
	constraint pubblicazione_editore foreign key (ID_editore) references editore(ID) on update cascade 
);

create table autore(
	ID integer unsigned not null primary key auto_increment,
    nome varchar(100) not null,
    cognome varchar(100) default null,
    data_n date not null,
    nazionalita varchar(100) not null,
    
    constraint unico_autore unique(nome,cognome,data_n)
);


create table recensione(
	ID integer unsigned not null primary key auto_increment,
    ID_pubblicazione integer unsigned not null,
    testo varchar(300) not null,
    ID_utente integer unsigned not null, 
    data_rec datetime not null default current_timestamp,
    ID_utentemod integer unsigned default null,
    data_app date default null,
    
    constraint recensione_utentemod foreign key (ID_utentemod) references utente(ID) on update cascade,
    constraint recensione_utente foreign key (ID_utente) references utente(ID) on update cascade on delete cascade,
    constraint recensione_pubblicazione foreign key (ID_pubblicazione) references pubblicazione(ID) on update cascade on delete cascade,
    constraint unica_recensione unique(ID_pubblicazione, ID_utente)
);

create table parola_chiave(
	ID integer unsigned not null primary key auto_increment,
    descr varchar(15) not null unique    
);

create table ristampa(
	ID integer unsigned not null primary key auto_increment,
    numero smallint not null,
    data_r datetime not null default current_timestamp,
    ID_pubblicazione integer unsigned not null,
    
	constraint ristampa_pubblicazione foreign key (ID_pubblicazione) references pubblicazione(ID) on update cascade,
    constraint unica_ristampa unique(numero, ID_pubblicazione)
);

create table capitolo_sezione(
	ID integer unsigned not null primary key auto_increment,
    numero smallint not null,
    nome varchar(100) not null,
    ID_pubblicazione integer unsigned not null,
    
	constraint capitolo_pubblicazione foreign key (ID_pubblicazione) references pubblicazione(ID) on update cascade on delete cascade,
    constraint unico_capitolo_sezione unique(numero, ID_pubblicazione)
);

create table sorgente(
	ID integer unsigned not null primary key auto_increment,
	formato varchar(100) not null,
    tipo varchar(15) not null,
    uri varchar(100) not null,
    descr varchar(100) not null,
    ID_pubblicazione integer unsigned not null,
    
	constraint sorgente_pubblicazione foreign key (ID_pubblicazione) references pubblicazione(ID) on update cascade
);


create table aggiornamento(
  ID integer unsigned not null primary key auto_increment,	
  ID_pubblicazione integer unsigned not null,
  ID_utente integer unsigned not null,
  data_agg datetime not null default current_timestamp,
  descr_agg varchar (100) not null,
  
  constraint aggiornamento_pubblicazione foreign key (ID_pubblicazione) references pubblicazione(ID) on update cascade,
  constraint aggiornamento_utente foreign key (ID_utente) references utente(ID) on update cascade
);

create table mipiace (
  ID integer unsigned not null primary key auto_increment,	
  ID_pubblicazione integer unsigned not null,
  ID_utente integer unsigned not null,
  data_l datetime not null default current_timestamp,
  
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
