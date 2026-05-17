/*==============================================================*/
/* DBMS name:      MySQL 5.0                                    */
/* Created on:     15/5/2026 10:04:43                           */
/*==============================================================*/


DROP TABLE IF EXISTS FECCP_CABCOM;

DROP TABLE IF EXISTS FECUB_CUEBAN;

DROP TABLE IF EXISTS FEDCO_DETCOM;

DROP TABLE IF EXISTS FEFOP_FORPAG;

DROP TABLE IF EXISTS FEPAG_PAGO;

DROP TABLE IF EXISTS GEEMPPRO_EMPPRO;

DROP TABLE IF EXISTS GEPROY_PROY;

DROP TABLE IF EXISTS PEASIG_ASIGNA;

DROP TABLE IF EXISTS PECAR_CARGO;

DROP TABLE IF EXISTS PEDEP_DEPAR;

DROP TABLE IF EXISTS PEEMP_EMPLE;

DROP TABLE IF EXISTS PEESC_ESTCIV;

DROP TABLE IF EXISTS PEFAM_FAMILI;

DROP TABLE IF EXISTS PESEX_SEXO;

DROP TABLE IF EXISTS XEEST_ESTAD;

DROP TABLE IF EXISTS XEOPC_OPCIO;

DROP TABLE IF EXISTS XEOXP_OPCPE;

DROP TABLE IF EXISTS XEPER_PERFI;

DROP TABLE IF EXISTS XESIS_SISTE;

DROP TABLE IF EXISTS XEUSU_USUAR;

DROP TABLE IF EXISTS XEUXP_USUPE;

/*==============================================================*/
/* Table: FECCP_CABCOM                                          */
/*==============================================================*/
CREATE TABLE FECCP_CABCOM
(
   FECFA_CODIGO         INT NOT NULL,
   FEFOP_CODIGO         CHAR(1) NOT NULL,
   FECFA_FECHA          DATETIME NOT NULL,
   FECFA_NUMER          CHAR(10) NOT NULL,
   FECFA_DESCUS         NUMERIC(9,2) NOT NULL,
   FECFA_SUBTOT         NUMERIC(9,2) NOT NULL,
   FECFA_TOTAL          NUMERIC(9,2) NOT NULL,
   PRIMARY KEY (FECFA_CODIGO)
);

/*==============================================================*/
/* Table: FECUB_CUEBAN                                          */
/*==============================================================*/
CREATE TABLE FECUB_CUEBAN
(
   FECUB_CODIGO         VARCHAR(15) NOT NULL,
   FEFOP_CODIGO         CHAR(1) NOT NULL,
   FECUB_NUMCUE         CHAR(10) NOT NULL,
   FECUB_NOMTIT         VARCHAR(30) NOT NULL,
   FECUB_APETIT         VARCHAR(30) NOT NULL,
   FECUB_CORTIT         VARCHAR(20) NOT NULL,
   FECUB_NOMBAN         VARCHAR(20) NOT NULL,
   PRIMARY KEY (FECUB_CODIGO)
);

/*==============================================================*/
/* Table: FEDCO_DETCOM                                          */
/*==============================================================*/
CREATE TABLE FEDCO_DETCOM
(
   FEDCO_CODIGO         INT NOT NULL,
   FECFA_CODIGO         INT NOT NULL,
   FEDCO_CANTIDA        INT NOT NULL,
   FEDCO_PRECIO         FLOAT(9,2) NOT NULL,
   FEDCO_TOTIMP         FLOAT(9,2),
   PRIMARY KEY (FEDCO_CODIGO)
);

/*==============================================================*/
/* Table: FEFOP_FORPAG                                          */
/*==============================================================*/
CREATE TABLE FEFOP_FORPAG
(
   FEFOP_CODIGO         CHAR(1) NOT NULL,
   FEFOP_DESCRI         VARCHAR(50) NOT NULL,
   PRIMARY KEY (FEFOP_CODIGO)
);

ALTER TABLE FEFOP_FORPAG COMMENT 'Entidad utilizada para gestionar la forma de pago de un sala';

/*==============================================================*/
/* Table: FEPAG_PAGO                                            */
/*==============================================================*/
CREATE TABLE FEPAG_PAGO
(
   FEPAG_CODIGO         CHAR(15) NOT NULL,
   FECUB_CODIGO         VARCHAR(15) NOT NULL,
   FEPAG_FECPAG         DATE NOT NULL,
   FEPAG_NOMENP         VARCHAR(50) NOT NULL,
   PRIMARY KEY (FEPAG_CODIGO)
);

ALTER TABLE FEPAG_PAGO COMMENT 'Entidad para gestionar el pago';

/*==============================================================*/
/* Table: GEEMPPRO_EMPPRO                                       */
/*==============================================================*/
CREATE TABLE GEEMPPRO_EMPPRO
(
   PEEMP_CODIGO         CHAR(6) NOT NULL,
   GEPROY_CODIGO        CHAR(8) NOT NULL,
   FEDCO_CODIGO         INT NOT NULL,
   GEEMPPRO_HTRABA      NUMERIC(3,0) NOT NULL,
   GEEMPPRO_VHORA       NUMERIC(7,2) NOT NULL,
   PRIMARY KEY (PEEMP_CODIGO, GEPROY_CODIGO, FEDCO_CODIGO)
);

ALTER TABLE GEEMPPRO_EMPPRO COMMENT 'Tabla intermedia en la cual se relaciona el proyecto con los';

/*==============================================================*/
/* Table: GEPROY_PROY                                           */
/*==============================================================*/
CREATE TABLE GEPROY_PROY
(
   GEPROY_CODIGO        CHAR(8) NOT NULL,
   PEDEP_DEPAR          CHAR(3) NOT NULL,
   GEPROY_NOMPRO        VARCHAR(50) NOT NULL,
   GEPROY_COSTO         NUMERIC(7,2) NOT NULL,
   PRIMARY KEY (GEPROY_CODIGO)
);

/*==============================================================*/
/* Table: PEASIG_ASIGNA                                         */
/*==============================================================*/
CREATE TABLE PEASIG_ASIGNA
(
   PEEMP_CODIGO         CHAR(6) NOT NULL,
   PEDEP_DEPAR          CHAR(3) NOT NULL,
   PECAR_CODIGO         CHAR(3) NOT NULL,
   FECINICIO            DATE NOT NULL,
   PRIMARY KEY (PEDEP_DEPAR, PEEMP_CODIGO, PECAR_CODIGO)
);

ALTER TABLE PEASIG_ASIGNA COMMENT 'Esta es una tabla para guardar la fecha del empleado que fue';

/*==============================================================*/
/* Table: PECAR_CARGO                                           */
/*==============================================================*/
CREATE TABLE PECAR_CARGO
(
   PEDEP_DEPAR          CHAR(3) NOT NULL,
   PECAR_CODIGO         CHAR(3) NOT NULL,
   PECAR_DESCRI         VARCHAR(50) NOT NULL,
   PRIMARY KEY (PEDEP_DEPAR, PECAR_CODIGO)
);

/*==============================================================*/
/* Table: PEDEP_DEPAR                                           */
/*==============================================================*/
CREATE TABLE PEDEP_DEPAR
(
   PEDEP_DEPAR          CHAR(3) NOT NULL,
   PEDEP_DESCRI         VARCHAR(50) NOT NULL,
   PRIMARY KEY (PEDEP_DEPAR)
);

/*==============================================================*/
/* Table: PEEMP_EMPLE                                           */
/*==============================================================*/
CREATE TABLE PEEMP_EMPLE
(
   PEEMP_CODIGO         CHAR(6) NOT NULL,
   PEESC_CODIGO         CHAR(1),
   PEE_PEEMP_CODIGO     CHAR(6),
   PESEX_CODIGO         CHAR(1) NOT NULL,
   PEEMP_APELLI         VARCHAR(50) NOT NULL,
   PEEMP_NOMBRE         VARCHAR(50) NOT NULL,
   PEEMP_FECNAC         DATE NOT NULL,
   PEEMP_DIREC          VARCHAR(200) NOT NULL,
   PEEMP_TELEF          VARCHAR(15) NOT NULL,
   PEEMP_EMAIL          VARCHAR(100) NOT NULL,
   PEEMP_CEDULA         VARCHAR(10) NOT NULL,
   PEEMP_DISCAP         BLOB NOT NULL,
   PEEMP_SALARI         NUMERIC(7,2) NOT NULL,
   PRIMARY KEY (PEEMP_CODIGO)
);

ALTER TABLE PEEMP_EMPLE COMMENT 'Entidad para realizar la gestion de empleados
';

/*==============================================================*/
/* Table: PEESC_ESTCIV                                          */
/*==============================================================*/
CREATE TABLE PEESC_ESTCIV
(
   PEESC_CODIGO         CHAR(1) NOT NULL,
   PEESC_DESCRI         VARCHAR(50) NOT NULL,
   PRIMARY KEY (PEESC_CODIGO)
);

/*==============================================================*/
/* Table: PEFAM_FAMILI                                          */
/*==============================================================*/
CREATE TABLE PEFAM_FAMILI
(
   PEEMP_CODIGO         CHAR(6) NOT NULL,
   PEFAM_CODIGO         CHAR(6) NOT NULL,
   PESEX_CODIGO         CHAR(1) NOT NULL,
   PEFAM_CEDULA         CHAR(10) NOT NULL,
   PEFAM_APELLI         VARCHAR(20) NOT NULL,
   PEFAM_NOMBRE         VARCHAR(20) NOT NULL,
   PEFAM_FENAC          DATE NOT NULL,
   PRIMARY KEY (PEEMP_CODIGO, PEFAM_CODIGO)
);

ALTER TABLE PEFAM_FAMILI COMMENT 'Familiar anclado con un Empleado por parentesco directo';

/*==============================================================*/
/* Table: PESEX_SEXO                                            */
/*==============================================================*/
CREATE TABLE PESEX_SEXO
(
   PESEX_CODIGO         CHAR(1) NOT NULL,
   PESEX_DESCRI         VARCHAR(50) NOT NULL,
   PRIMARY KEY (PESEX_CODIGO)
);

ALTER TABLE PESEX_SEXO COMMENT 'Gestión del sexo o género de una persona
';

/*==============================================================*/
/* Table: XEEST_ESTAD                                           */
/*==============================================================*/
CREATE TABLE XEEST_ESTAD
(
   XEEST_CODIGO         CHAR(1) NOT NULL,
   XEEST_DESCRI         VARCHAR(50) NOT NULL,
   PRIMARY KEY (XEEST_CODIGO)
);

ALTER TABLE XEEST_ESTAD COMMENT 'Entidad utilizada para gestionar el estado de las difetrente';

/*==============================================================*/
/* Table: XEOPC_OPCIO                                           */
/*==============================================================*/
CREATE TABLE XEOPC_OPCIO
(
   XEOPC_CODIGO         CHAR(3) NOT NULL,
   XESIS_CODIGO         CHAR(1) NOT NULL,
   XEOPC_DESCRI         VARCHAR(100) NOT NULL,
   PRIMARY KEY (XEOPC_CODIGO)
);

ALTER TABLE XEOPC_OPCIO COMMENT 'Entidad utilizada para realizar el registro de las diferente';

/*==============================================================*/
/* Table: XEOXP_OPCPE                                           */
/*==============================================================*/
CREATE TABLE XEOXP_OPCPE
(
   XEPER_CODIGO         CHAR(8) NOT NULL,
   XEOPC_CODIGO         CHAR(3) NOT NULL,
   XEOXP_FECASI         DATE NOT NULL,
   XEOXP_FECRET         DATE,
   PRIMARY KEY (XEPER_CODIGO, XEOPC_CODIGO, XEOXP_FECASI)
);

ALTER TABLE XEOXP_OPCPE COMMENT 'Entidad utilizada para llevar el registro de las opciones qu';

/*==============================================================*/
/* Table: XEPER_PERFI                                           */
/*==============================================================*/
CREATE TABLE XEPER_PERFI
(
   XEPER_CODIGO         CHAR(8) NOT NULL,
   XEPER_DESCRI         VARCHAR(100) NOT NULL,
   XEPER_OBSER          TEXT,
   PRIMARY KEY (XEPER_CODIGO)
);

ALTER TABLE XEPER_PERFI COMMENT 'Entidad utilizada para realizar la gestión de los diferentes';

/*==============================================================*/
/* Table: XESIS_SISTE                                           */
/*==============================================================*/
CREATE TABLE XESIS_SISTE
(
   XESIS_CODIGO         CHAR(1) NOT NULL,
   XESIS_DESCRI         VARCHAR(50) NOT NULL,
   PRIMARY KEY (XESIS_CODIGO)
);

ALTER TABLE XESIS_SISTE COMMENT 'Entidad utilizada para realziar la gestión de los diferentes';

/*==============================================================*/
/* Table: XEUSU_USUAR                                           */
/*==============================================================*/
CREATE TABLE XEUSU_USUAR
(
   XEUSU_PASWD          VARCHAR(16) NOT NULL,
   PEEMP_CODIGO         CHAR(6) NOT NULL,
   XEEST_CODIGO         CHAR(1) NOT NULL,
   XEUSU_FECCRE         DATETIME NOT NULL,
   XEUSU_FECMOD         DATETIME NOT NULL,
   XEUSU_PIEFIR         VARCHAR(100) NOT NULL,
   PRIMARY KEY (XEUSU_PASWD)
);

ALTER TABLE XEUSU_USUAR COMMENT 'Entidad relacionada para gentionar los usuario que ingrsan a';

/*==============================================================*/
/* Table: XEUXP_USUPE                                           */
/*==============================================================*/
CREATE TABLE XEUXP_USUPE
(
   XEPER_CODIGO         CHAR(8) NOT NULL,
   XEUSU_PASWD          VARCHAR(16) NOT NULL,
   XEUXP_FECASI         DATE NOT NULL,
   XEUXP_FECRET         DATE,
   PRIMARY KEY (XEPER_CODIGO, XEUSU_PASWD, XEUXP_FECASI)
);

ALTER TABLE XEUXP_USUPE COMMENT 'Entidad utilizada para realizar el registro de los diferente';

ALTER TABLE FECCP_CABCOM ADD CONSTRAINT FK_FR_FECABCOM_FEFORPAGO FOREIGN KEY (FEFOP_CODIGO)
      REFERENCES FEFOP_FORPAG (FEFOP_CODIGO) ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE FECUB_CUEBAN ADD CONSTRAINT FK_FR_FEFORPAGO_FECUEBAN FOREIGN KEY (FEFOP_CODIGO)
      REFERENCES FEFOP_FORPAG (FEFOP_CODIGO) ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE FEDCO_DETCOM ADD CONSTRAINT FK_FR_FEDETCOM_FECABCOM FOREIGN KEY (FECFA_CODIGO)
      REFERENCES FECCP_CABCOM (FECFA_CODIGO) ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE FEPAG_PAGO ADD CONSTRAINT FK_FR_FECUEBAN_FEPAGO FOREIGN KEY (FECUB_CODIGO)
      REFERENCES FECUB_CUEBAN (FECUB_CODIGO) ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE GEEMPPRO_EMPPRO ADD CONSTRAINT FK_GEEMPPRO_EMPPRO FOREIGN KEY (PEEMP_CODIGO)
      REFERENCES PEEMP_EMPLE (PEEMP_CODIGO) ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE GEEMPPRO_EMPPRO ADD CONSTRAINT FK_GEEMPPRO_EMPPRO2 FOREIGN KEY (GEPROY_CODIGO)
      REFERENCES GEPROY_PROY (GEPROY_CODIGO) ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE GEEMPPRO_EMPPRO ADD CONSTRAINT FK_GEEMPPRO_EMPPRO3 FOREIGN KEY (FEDCO_CODIGO)
      REFERENCES FEDCO_DETCOM (FEDCO_CODIGO) ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE GEPROY_PROY ADD CONSTRAINT FK_PROYECTO_DEPARTAMENTO FOREIGN KEY (PEDEP_DEPAR)
      REFERENCES PEDEP_DEPAR (PEDEP_DEPAR) ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE PEASIG_ASIGNA ADD CONSTRAINT FK_PEASIG_ASIGNA FOREIGN KEY (PEEMP_CODIGO)
      REFERENCES PEEMP_EMPLE (PEEMP_CODIGO) ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE PEASIG_ASIGNA ADD CONSTRAINT FK_PEASIG_ASIGNA2 FOREIGN KEY (PEDEP_DEPAR, PECAR_CODIGO)
      REFERENCES PECAR_CARGO (PEDEP_DEPAR, PECAR_CODIGO) ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE PECAR_CARGO ADD CONSTRAINT FK_PR_PECAR_PEDEP FOREIGN KEY (PEDEP_DEPAR)
      REFERENCES PEDEP_DEPAR (PEDEP_DEPAR) ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE PEEMP_EMPLE ADD CONSTRAINT FK_PR_PEEMP_PEEMP FOREIGN KEY (PEE_PEEMP_CODIGO)
      REFERENCES PEEMP_EMPLE (PEEMP_CODIGO) ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE PEEMP_EMPLE ADD CONSTRAINT FK_PR_PEESC_PEEMP FOREIGN KEY (PEESC_CODIGO)
      REFERENCES PEESC_ESTCIV (PEESC_CODIGO) ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE PEEMP_EMPLE ADD CONSTRAINT FK_PR_PESEX_PEEMP FOREIGN KEY (PESEX_CODIGO)
      REFERENCES PESEX_SEXO (PESEX_CODIGO) ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE PEFAM_FAMILI ADD CONSTRAINT FK_EMPLEADO_FAMILIAR FOREIGN KEY (PEEMP_CODIGO)
      REFERENCES PEEMP_EMPLE (PEEMP_CODIGO) ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE PEFAM_FAMILI ADD CONSTRAINT FK_PR_PESEX_PEFAM FOREIGN KEY (PESEX_CODIGO)
      REFERENCES PESEX_SEXO (PESEX_CODIGO) ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE XEOPC_OPCIO ADD CONSTRAINT FK_XR_XESIS_XEOPC FOREIGN KEY (XESIS_CODIGO)
      REFERENCES XESIS_SISTE (XESIS_CODIGO) ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE XEOXP_OPCPE ADD CONSTRAINT FK_XR_XEOPC_XEOXP FOREIGN KEY (XEOPC_CODIGO)
      REFERENCES XEOPC_OPCIO (XEOPC_CODIGO) ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE XEOXP_OPCPE ADD CONSTRAINT FK_XR_XEPER_XEOXP FOREIGN KEY (XEPER_CODIGO)
      REFERENCES XEPER_PERFI (XEPER_CODIGO) ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE XEUSU_USUAR ADD CONSTRAINT FK_XR_PEEMP_XEUSU FOREIGN KEY (PEEMP_CODIGO)
      REFERENCES PEEMP_EMPLE (PEEMP_CODIGO) ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE XEUSU_USUAR ADD CONSTRAINT FK_XR_XEEST_XEUSU FOREIGN KEY (XEEST_CODIGO)
      REFERENCES XEEST_ESTAD (XEEST_CODIGO) ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE XEUXP_USUPE ADD CONSTRAINT FK_XR_XEPER_XEUXP FOREIGN KEY (XEPER_CODIGO)
      REFERENCES XEPER_PERFI (XEPER_CODIGO) ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE XEUXP_USUPE ADD CONSTRAINT FK_XR_XEUSU_XEUXP FOREIGN KEY (XEUSU_PASWD)
      REFERENCES XEUSU_USUAR (XEUSU_PASWD) ON DELETE RESTRICT ON UPDATE RESTRICT;

