-- listar base de datos
SHOW DATABASES;

--Crear base de datos RECIBO
CREATE DATABASE RECIBO
DEFAULT CHARACTER SET utf8;

-- Poner en uso RECIBO
USE RECIBO;

-- Ver cual es la base de datos en uso
SELECT DATABASE();

-- Crear tabla RECIBO
CREATE TABLE Recibo
(
    CODREC CHAR(4),
    NUMREC VARCHAR(50),
    FECREC TIME,
    CODCLI VARCHAR(60),
    HORREC DATE,
    IMPREC INT,

    CONSTRAINT CODREC_PK PRIMARY KEY(CODREC)
);

CREATE TABLE EMPLEADO
(
    CODEMP   INT,
    CONSTRAINT CODEMP PRIMARY KEY (CODVEN)
);

SHOW TABLES;


DESCRIBE FACULTAD;
SHOW COLUMNS IN FACULTAD;


CREATE TABLE CLIENTE
(
	CODCLI CHAR(4),
    NOMCLI VARCHAR(50),
    APECLI VARCHAR(40),
    TELCASCLI CHAR(7),
    TELMOVCLI CHAR(9),
    DIRUBI VARCHAR(80)
    DNICLI CHAR(8),
    DIRCLI VARCHAR(60),
    CONSTRAINT CODCLI_PK PRIMARY KEY (CODCLI)
);


CREATE TABLE UBIGEO
(
	CODUBI CHAR(4),
    PROUBI VARCHAR(20),
    DEPUBI CHAR(30),
    DISUBI CHAR(20),
    CONSTRAINT CODUBI_PK PRIMARY KEY (CODUBI)
);


CREATE TABLE FACTURA_DETALLE
(
	IDFACTDET INT,
    CANTPROD  INT,
    CODFACT   CHAR(4),
    CODPROD   CHAR(4),
    CONSTRAINT IDFACTDET_PK PRIMARY KEY (IDFACTDET)
    CONSTRAINT CODFAC_PK FOREIGN KEY(CODFAC)
    CONSTRAINT CODPROD_PK FOREIGN KEY(CODPROD)
);

CREATE TABLE PRODUCTO
(
	CODPROD  CHAR(4),
    NOBPROD  VARCHAR(50),
    CODCAT   CHAR(4),
    PRECPROD DECIMAL(10,2),
    CONSTRAINT CODPROD_PK PRIMARY KEY (CODPROD)
    CONSTRAINT CODCAT_PK FOREIGN KEY(CODCAT)
);

CREATE TABLE PRODUCTO
(
	CODPROD CHAR(4),
    NOMPROD VARCHAR(50),
    DESPROD TEXt,
    PRECPROD DECIMAL(99,99),
    TAMPROD  INT,
    FOTPROD  INTO,

    CONSTRAINT CODCOMPADI_PK PRIMARY KEY (CODCOMPADI)
);

CREATE TABLE Empleado
(
	CODEMP   INT,
    CONSTRAINT CODEMP_PK PRIMARY KEY (CODEMP)


CREATE TABLE SUCURSAL
(
    CODSUC   INT,
    CONSTRAINT CODSUC_PK PRIMARY KEY (CODSUC)
);



ALTER TABLE cliente_recibo
Add Constraint
PIZZA_CLIENTE_RECIBO_PIZCLIREC
FOREIGN KEY (PIZCLIREC) REFERENCES RECIBO (CODCLI);

ALTER TABLE cliente_ubigeo
Add Constraint
PIZZA_CLIENTE_UBIGEO_PIZCLIUBI
FOREIGN KEY (PIZCLIUBI) REFERENCES UBIGEO (CODcli);

ALTER TABLE PIZZA_RECIBO_EMPLEADO
Add Constraint
PIZZA_RECIBO_EMPLEADO_PIZRECEMP
FOREIGN KEY (PIZRECEMP) REFERENCES EMPLEADO (CODREC);

ALTER TABLE PIZZA_RECIBO_EMPLEADO
Add Constraint
PIZZA_RECIBO_EMPLEADO_PIZRECEMP
FOREIGN KEY (PIZRECEMP) REFERENCES EMPLEADO (CODREC);


ALTER TABLE EMPLEADO_SUCURSAL
Add Constraint
PIZZA_EMPLEADO_SUCURSAL_PIZEMPSUC
FOREIGN KEY (PIZEMPSUC) REFERENCES SUCURSAL (CODEMP);

ALTER TABLE RECIBO_PRODUCTO
Add Constraint
PIZZA_RECIBO_PRODUCTO_PIZRECPROD
FOREIGN KEY (PIZRECPROD) REFERENCES PRODUCTO (CODREC); 
