CREATE TABLE USER
	(password 		VARCHAR(9),
	name 		VARCHAR(100),
	CONSTRAINT pk_usuario PRIMARY KEY (password)
	
	);
	
CREATE TABLE CARD
	(password 		VARCHAR(9),
	code		INT(10) AUTO_INCREMENT,
	name 		VARCHAR(100),
	price		DOUBLE(10,2),
	acquisition date,
	deck_cards		boolean,
	CONSTRAINT pk_historial PRIMARY KEY(code),
	CONSTRAINT fk_historial FOREIGN KEY (password) REFERENCES USER(password) ON UPDATE CASCADE
	);
	
INSERT INTO USER
VALUES('usuario','usuario');
INSERT INTO USER (password,name)
VALUES('1234','Axiont58');

INSERT INTO CARD(password,name,price,acquisition,deck_cards)
VALUES('usuario','Principe Stennis',6,'2015-01-20',true);
INSERT INTO CARD(password,name,price,acquisition,deck_cards)
VALUES('usuario','Fortest',60,'2015-01-20',true);
INSERT INTO CARD(password,name,price,acquisition,deck_cards)
VALUES('usuario','Señuelo',60,'2015-01-20',true);
INSERT INTO CARD(password,name,price,acquisition,deck_cards)
VALUES('usuario','Cuerno de combate',60,'2015-01-20',true);
INSERT INTO CARD(password,name,price,acquisition,deck_cards)
VALUES('usuario','Quemadura',60,'2015-01-20',true);
INSERT INTO CARD(password,name,price,acquisition,deck_cards)
VALUES('usuario','Escarcha heladora',60,'2015-01-20',true);
INSERT INTO CARD(password,name,price,acquisition,deck_cards)
VALUES('usuario','Lluvia torrencial',60,'2015-01-20',true);
INSERT INTO CARD(password,name,price,acquisition,deck_cards)
VALUES('usuario','Tiempo despejado',60,'2015-01-20',true);
INSERT INTO CARD(password,name,price,acquisition,deck_cards)
VALUES('usuario','Geralt de Rivia',60,'2015-01-20',true);
INSERT INTO CARD(password,name,price,acquisition,deck_cards)
VALUES('usuario','Cirilla',60,'2015-01-20',false);
INSERT INTO CARD(password,name,price,acquisition,deck_cards)
VALUES('usuario','Yennefer',60,'2015-01-20',true);
INSERT INTO CARD(password,name,price,acquisition,deck_cards)
VALUES('usuario','Triss',60,'2015-01-20',true);
INSERT INTO CARD(password,name,price,acquisition,deck_cards)
VALUES('usuario','Villentretenmerth',60,'2015-01-20',true);
INSERT INTO CARD(password,name,price,acquisition,deck_cards)
VALUES('usuario','deck_cards Gwent',60,'2015-01-20',false);
INSERT INTO CARD(password,name,price,acquisition,deck_cards)
VALUES('usuario','Vesemir',60,'2015-01-20',true);
INSERT INTO CARD(password,name,price,acquisition,deck_cards)
VALUES('usuario','Olgierd',60,'2015-01-20',true);
INSERT INTO CARD(password,name,price,acquisition,deck_cards)
VALUES('usuario','Zoltan',60,'2015-01-20',true);
INSERT INTO CARD(password,name,price,acquisition,deck_cards)
VALUES('usuario','Emiel',60,'2015-01-20',true);
INSERT INTO CARD(password,name,price,acquisition,deck_cards)
VALUES('usuario','Gaunter',60,'2015-01-20',true);
INSERT INTO CARD(password,name,price,acquisition,deck_cards)
VALUES('usuario','Jaskier',60,'2015-01-20',false);
INSERT INTO CARD(password,name,price,acquisition,deck_cards)
VALUES('usuario','Gaunter',60,'2015-01-20',true);
INSERT INTO CARD(password,name,price,acquisition,deck_cards)
VALUES('usuario','Elfo',60,'2015-01-20',true);
INSERT INTO CARD(password,name,price,acquisition,deck_cards)
VALUES('usuario','Roche',60,'2015-01-20',true);
INSERT INTO CARD(password,name,price,acquisition,deck_cards)
VALUES('usuario','Natalis',60,'2015-01-20',false);
INSERT INTO CARD(password,name,price,acquisition,deck_cards)
VALUES('usuario','Esterad',60,'2015-01-20',false);
INSERT INTO CARD(password,name,price,acquisition,deck_cards)
VALUES('usuario','Philippa',60,'2015-01-20',true);
INSERT INTO CARD(password,name,price,acquisition,deck_cards)
VALUES('usuario','Catapulta',60,'2015-01-20',true);
INSERT INTO CARD(password,name,price,acquisition,deck_cards)
VALUES('usuario','Medico',60,'2015-01-20',false);
INSERT INTO CARD(password,name,price,acquisition,deck_cards)
VALUES('usuario','Dijkstra',60,'2015-01-20',true);
INSERT INTO CARD(password,name,price,acquisition,deck_cards)
VALUES('usuario','Sabrina',60,'2015-01-20',true);
INSERT INTO CARD(password,name,price,acquisition,deck_cards)
VALUES('usuario','Skaggs',60,'2015-01-20',true);
INSERT INTO CARD(password,name,price,acquisition,deck_cards)
VALUES('usuario','Franjas Azules',60,'2015-01-20',true);
INSERT INTO CARD(password,name,price,acquisition,deck_cards)
VALUES('usuario','Thaler',60,'2015-01-20',true);
INSERT INTO CARD(password,name,price,acquisition,deck_cards)
VALUES('usuario','Infante',60,'2015-01-20',true);
INSERT INTO CARD(password,name,price,acquisition,deck_cards)
VALUES('usuario','Tu puta madre la infanteria',60,'2015-01-20',true);
INSERT INTO CARD(password,name,price,acquisition,deck_cards)
VALUES('usuario','Yarpen',60,'2015-01-20',false);
INSERT INTO CARD(password,name,price,acquisition,deck_cards)
VALUES('usuario','Tormenta',60,'2015-01-20',true);
INSERT INTO CARD(password,name,price,acquisition,deck_cards)
VALUES('usuario','Sapo',60,'2015-01-20',false);
INSERT INTO CARD(password,name,price,acquisition,deck_cards)
VALUES('usuario','Elemental',60,'2015-01-20',true);
INSERT INTO CARD(password,name,price,acquisition,deck_cards)
VALUES('usuario','Demonibestia',60,'2015-01-20',true);
INSERT INTO CARD(password,name,price,acquisition,deck_cards)
VALUES('usuario','Arachas',60,'2015-01-20',true);
INSERT INTO CARD(password,name,price,acquisition,deck_cards)
VALUES('usuario','Moira',60,'2015-01-20',true);
INSERT INTO CARD(password,name,price,acquisition,deck_cards)
VALUES('usuario','deck_cards Gwent',60,'2015-01-20',false);
INSERT INTO CARD(password,name,price,acquisition,deck_cards)
VALUES('usuario','Emhyr',60,'2015-01-20',true);
INSERT INTO CARD(password,name,price,acquisition,deck_cards)
VALUES('usuario','Vreemde',60,'2015-01-20',true);
INSERT INTO CARD(password,name,price,acquisition,deck_cards)
VALUES('usuario','Sweers',60,'2015-01-20',true);
INSERT INTO CARD(password,name,price,acquisition,deck_cards)
VALUES('usuario','Arquero',60,'2015-01-20',true);
INSERT INTO CARD(password,name,price,acquisition,deck_cards)
VALUES('usuario','Apoyo',60,'2015-01-20',true);
INSERT INTO CARD(password,name,price,acquisition,deck_cards)
VALUES('usuario','Brigada',60,'2015-01-20',false);
INSERT INTO CARD(password,name,price,acquisition,deck_cards)
VALUES('usuario','Principe Stennis',5,'2015-01-20',true);
INSERT INTO CARD(password,name,price,acquisition,deck_cards)
VALUES('usuario','Fortest',4,'2015-01-20',true);
INSERT INTO CARD(password,name,price,acquisition,deck_cards)
VALUES('usuario','Señuelo',60,'2015-01-20',true);
INSERT INTO CARD(password,name,price,acquisition,deck_cards)
VALUES('usuario','Cuerno de combate',60,'2015-01-20',true);
INSERT INTO CARD(password,name,price,acquisition,deck_cards)
VALUES('usuario','Quemadura',60,'2015-01-20',false);
INSERT INTO CARD(password,name,price,acquisition,deck_cards)
VALUES('usuario','Escarcha heladora',60,'2015-01-20',true);
INSERT INTO CARD(password,name,price,acquisition,deck_cards)
VALUES('usuario','Lluvia torrencial',60,'2015-01-20',true);
INSERT INTO CARD(password,name,price,acquisition,deck_cards)
VALUES('usuario','Tiempo despejado',60,'2015-01-20',true);
INSERT INTO CARD(password,name,price,acquisition,deck_cards)
VALUES('usuario','Geralt de Rivia',60,'2015-01-20',false);
INSERT INTO CARD(password,name,price,acquisition,deck_cards)
VALUES('usuario','Cirilla',60,'2015-01-20',true);
INSERT INTO CARD(password,name,price,acquisition,deck_cards)
VALUES('usuario','Yennefer',60,'2015-01-20',true);
INSERT INTO CARD(password,name,price,acquisition,deck_cards)
VALUES('usuario','Triss',60,'2015-01-20',true);
INSERT INTO CARD(password,name,price,acquisition,deck_cards)
VALUES('usuario','Villentretenmerth',60,'2015-01-20',true);
INSERT INTO CARD(password,name,price,acquisition,deck_cards)
VALUES('usuario','deck_cards Gwent',60,'2015-01-20',false);
INSERT INTO CARD(password,name,price,acquisition,deck_cards)
VALUES('usuario','Vesemir',60,'2015-01-20',true);
INSERT INTO CARD(password,name,price,acquisition,deck_cards)
VALUES('usuario','Olgierd',60,'2015-01-20',true);
INSERT INTO CARD(password,name,price,acquisition,deck_cards)
VALUES('usuario','Zoltan',60,'2015-01-20',true);
INSERT INTO CARD(password,name,price,acquisition,deck_cards)
VALUES('usuario','Emiel',60,'2015-01-20',true);
INSERT INTO CARD(password,name,price,acquisition,deck_cards)
VALUES('usuario','Gaunter',60,'2015-01-20',true);
INSERT INTO CARD(password,name,price,acquisition,deck_cards)
VALUES('usuario','Jaskier',60,'2015-01-20',true);
INSERT INTO CARD(password,name,price,acquisition,deck_cards)
VALUES('usuario','Gaunter',60,'2015-01-20',true);
INSERT INTO CARD(password,name,price,acquisition,deck_cards)
VALUES('usuario','Elfo',60,'2015-01-20',true);
INSERT INTO CARD(password,name,price,acquisition,deck_cards)
VALUES('usuario','Roche',60,'2015-01-20',true);
INSERT INTO CARD(password,name,price,acquisition,deck_cards)
VALUES('usuario','Natalis',60,'2015-01-20',true);
INSERT INTO CARD(password,name,price,acquisition,deck_cards)
VALUES('usuario','Esterad',60,'2015-01-20',true);
INSERT INTO CARD(password,name,price,acquisition,deck_cards)
VALUES('usuario','Philippa',60,'2015-01-20',true);
INSERT INTO CARD(password,name,price,acquisition,deck_cards)
VALUES('usuario','Catapulta',60,'2015-01-20',true);
INSERT INTO CARD(password,name,price,acquisition,deck_cards)
VALUES('usuario','Medico',60,'2015-01-20',true);
INSERT INTO CARD(password,name,price,acquisition,deck_cards)
VALUES('usuario','Dijkstra',60,'2015-01-20',true);
INSERT INTO CARD(password,name,price,acquisition,deck_cards)
VALUES('usuario','Sabrina',60,'2015-01-20',true);
INSERT INTO CARD(password,name,price,acquisition,deck_cards)
VALUES('usuario','Skaggs',60,'2015-01-20',true);
INSERT INTO CARD(password,name,price,acquisition,deck_cards)
VALUES('usuario','Franjas Azules',60,'2015-01-20',true);
INSERT INTO CARD(password,name,price,acquisition,deck_cards)
VALUES('usuario','Thaler',60,'2015-01-20',true);
INSERT INTO CARD(password,name,price,acquisition,deck_cards)
VALUES('usuario','Infante',60,'2015-01-20',true);
INSERT INTO CARD(password,name,price,acquisition,deck_cards)
VALUES('usuario','Tu puta madre la infanteria',60,'2015-01-20',true);
INSERT INTO CARD(password,name,price,acquisition,deck_cards)
VALUES('usuario','Yarpen',60,'2015-01-20',true);
INSERT INTO CARD(password,name,price,acquisition,deck_cards)
VALUES('usuario','Tormenta',60,'2015-01-20',true);
INSERT INTO CARD(password,name,price,acquisition,deck_cards)
VALUES('usuario','Sapo',60,'2015-01-20',true);
INSERT INTO CARD(password,name,price,acquisition,deck_cards)
VALUES('usuario','Elemental',60,'2015-01-20',true);
INSERT INTO CARD(password,name,price,acquisition,deck_cards)
VALUES('usuario','Demonibestia',60,'2015-01-20',true);
INSERT INTO CARD(password,name,price,acquisition,deck_cards)
VALUES('usuario','Arachas',60,'2015-01-20',true);
INSERT INTO CARD(password,name,price,acquisition,deck_cards)
VALUES('usuario','Moira',60,'2015-01-20',true);
INSERT INTO CARD(password,name,price,acquisition,deck_cards)
VALUES('usuario','deck_cards Gwent',60,'2015-01-20',true);
INSERT INTO CARD(password,name,price,acquisition,deck_cards)
VALUES('usuario','Emhyr',60,'2015-01-20',true);
INSERT INTO CARD(password,name,price,acquisition,deck_cards)
VALUES('usuario','Vreemde',60,'2015-01-20',true);
INSERT INTO CARD(password,name,price,acquisition,deck_cards)
VALUES('usuario','Sweers',60,'2015-01-20',true);
INSERT INTO CARD(password,name,price,acquisition,deck_cards)
VALUES('usuario','Arquero',60,'2015-01-20',true);
INSERT INTO CARD(password,name,price,acquisition,deck_cards)
VALUES('usuario','Apoyo',60,'2015-01-20',true);
INSERT INTO CARD(password,name,price,acquisition,deck_cards)
VALUES('usuario','Brigada',60,'2015-01-20',true);
INSERT INTO CARD(password,name,price,acquisition,deck_cards)
VALUES('usuario','Skaggs',60,'2015-01-20',true);
INSERT INTO CARD(password,name,price,acquisition,deck_cards)
VALUES('usuario','Franjas Azules',60,'2015-01-20',true);
INSERT INTO CARD(password,name,price,acquisition,deck_cards)
VALUES('usuario','Thaler',30,'2015-01-20',true);
INSERT INTO CARD(password,name,price,acquisition,deck_cards)
VALUES('usuario','Infante',30,'2015-01-20',true);
INSERT INTO CARD(password,name,price,acquisition,deck_cards)
VALUES('usuario','Tu puta madre la infanteria',60,'2015-01-20',true);
INSERT INTO CARD(password,name,price,acquisition,deck_cards)
VALUES('usuario','Yarpen',60,'2015-01-20',true);
INSERT INTO CARD(password,name,price,acquisition,deck_cards)
VALUES('usuario','Tormenta',60,'2015-01-20',true);
INSERT INTO CARD(password,name,price,acquisition,deck_cards)
VALUES('usuario','Sapo',60,'2015-01-20',true);
INSERT INTO CARD(password,name,price,acquisition,deck_cards)
VALUES('usuario','Elemental',60,'2015-01-20',true);

INSERT INTO CARD(password,name,price,acquisition,deck_cards)
VALUES('1234','Principe Stennis',6,'2015-01-20',true);
INSERT INTO CARD(password,name,price,acquisition,deck_cards)
VALUES('1234','Fortest',60,'2015-01-20',true);
INSERT INTO CARD(password,name,price,acquisition,deck_cards)
VALUES('1234','Señuelo',60,'2015-01-20',true);
INSERT INTO CARD(password,name,price,acquisition,deck_cards)
VALUES('1234','Cuerno de combate',60,'2015-01-20',true);
