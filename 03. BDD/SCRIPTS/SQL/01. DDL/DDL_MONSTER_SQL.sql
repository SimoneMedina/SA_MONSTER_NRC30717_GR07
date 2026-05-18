/*==============================================================*/
/* DBMS name:      Microsoft SQL Server 2012                    */
/* Created on:     18/5/2026 9:23:19                            */
/*==============================================================*/


IF EXISTS (SELECT 1
   FROM SYS.SYSREFERENCES R JOIN SYS.SYSOBJECTS O ON (O.ID = R.CONSTID AND O.TYPE = 'F')
   WHERE R.FKEYID = OBJECT_ID('FECCP_CABCOM') AND O.NAME = 'FK_FECCP_CA_FR_FECABC_FEFOP_FO')
ALTER TABLE FECCP_CABCOM
   DROP CONSTRAINT FK_FECCP_CA_FR_FECABC_FEFOP_FO
go

IF EXISTS (SELECT 1
   FROM SYS.SYSREFERENCES R JOIN SYS.SYSOBJECTS O ON (O.ID = R.CONSTID AND O.TYPE = 'F')
   WHERE R.FKEYID = OBJECT_ID('FECUB_CUEBAN') AND O.NAME = 'FK_FECUB_CU_FR_FEFORP_FEFOP_FO')
ALTER TABLE FECUB_CUEBAN
   DROP CONSTRAINT FK_FECUB_CU_FR_FEFORP_FEFOP_FO
go

IF EXISTS (SELECT 1
   FROM SYS.SYSREFERENCES R JOIN SYS.SYSOBJECTS O ON (O.ID = R.CONSTID AND O.TYPE = 'F')
   WHERE R.FKEYID = OBJECT_ID('FEDCO_DETCOM') AND O.NAME = 'FK_FEDCO_DE_FR_FEDETC_FECCP_CA')
ALTER TABLE FEDCO_DETCOM
   DROP CONSTRAINT FK_FEDCO_DE_FR_FEDETC_FECCP_CA
go

IF EXISTS (SELECT 1
   FROM SYS.SYSREFERENCES R JOIN SYS.SYSOBJECTS O ON (O.ID = R.CONSTID AND O.TYPE = 'F')
   WHERE R.FKEYID = OBJECT_ID('FEPAG_PAGO') AND O.NAME = 'FK_FEPAG_PA_FR_FECUEB_FECUB_CU')
ALTER TABLE FEPAG_PAGO
   DROP CONSTRAINT FK_FEPAG_PA_FR_FECUEB_FECUB_CU
go

IF EXISTS (SELECT 1
   FROM SYS.SYSREFERENCES R JOIN SYS.SYSOBJECTS O ON (O.ID = R.CONSTID AND O.TYPE = 'F')
   WHERE R.FKEYID = OBJECT_ID('GEEMPPRO_EMPPRO') AND O.NAME = 'FK_GEEMPPRO_GEEMPPRO__FEDCO_DE')
ALTER TABLE GEEMPPRO_EMPPRO
   DROP CONSTRAINT FK_GEEMPPRO_GEEMPPRO__FEDCO_DE
go

IF EXISTS (SELECT 1
   FROM SYS.SYSREFERENCES R JOIN SYS.SYSOBJECTS O ON (O.ID = R.CONSTID AND O.TYPE = 'F')
   WHERE R.FKEYID = OBJECT_ID('GEEMPPRO_EMPPRO') AND O.NAME = 'FK_GEEMPPRO_GEEMPPRO__PEEMP_EM')
ALTER TABLE GEEMPPRO_EMPPRO
   DROP CONSTRAINT FK_GEEMPPRO_GEEMPPRO__PEEMP_EM
go

IF EXISTS (SELECT 1
   FROM SYS.SYSREFERENCES R JOIN SYS.SYSOBJECTS O ON (O.ID = R.CONSTID AND O.TYPE = 'F')
   WHERE R.FKEYID = OBJECT_ID('GEEMPPRO_EMPPRO') AND O.NAME = 'FK_GEEMPPRO_GEEMPPRO__GEPROY_P')
ALTER TABLE GEEMPPRO_EMPPRO
   DROP CONSTRAINT FK_GEEMPPRO_GEEMPPRO__GEPROY_P
go

IF EXISTS (SELECT 1
   FROM SYS.SYSREFERENCES R JOIN SYS.SYSOBJECTS O ON (O.ID = R.CONSTID AND O.TYPE = 'F')
   WHERE R.FKEYID = OBJECT_ID('GEPROY_PROY') AND O.NAME = 'FK_GEPROY_P_PROYECTO__PEDEP_DE')
ALTER TABLE GEPROY_PROY
   DROP CONSTRAINT FK_GEPROY_P_PROYECTO__PEDEP_DE
go

IF EXISTS (SELECT 1
   FROM SYS.SYSREFERENCES R JOIN SYS.SYSOBJECTS O ON (O.ID = R.CONSTID AND O.TYPE = 'F')
   WHERE R.FKEYID = OBJECT_ID('PEASIG_ASIGNA') AND O.NAME = 'FK_PEASIG_A_PEASIG_AS_PECAR_CA')
ALTER TABLE PEASIG_ASIGNA
   DROP CONSTRAINT FK_PEASIG_A_PEASIG_AS_PECAR_CA
go

IF EXISTS (SELECT 1
   FROM SYS.SYSREFERENCES R JOIN SYS.SYSOBJECTS O ON (O.ID = R.CONSTID AND O.TYPE = 'F')
   WHERE R.FKEYID = OBJECT_ID('PEASIG_ASIGNA') AND O.NAME = 'FK_PEASIG_A_PEASIG_AS_PEEMP_EM')
ALTER TABLE PEASIG_ASIGNA
   DROP CONSTRAINT FK_PEASIG_A_PEASIG_AS_PEEMP_EM
go

IF EXISTS (SELECT 1
   FROM SYS.SYSREFERENCES R JOIN SYS.SYSOBJECTS O ON (O.ID = R.CONSTID AND O.TYPE = 'F')
   WHERE R.FKEYID = OBJECT_ID('PECAR_CARGO') AND O.NAME = 'FK_PECAR_CA_PR_PECAR__PEDEP_DE')
ALTER TABLE PECAR_CARGO
   DROP CONSTRAINT FK_PECAR_CA_PR_PECAR__PEDEP_DE
go

IF EXISTS (SELECT 1
   FROM SYS.SYSREFERENCES R JOIN SYS.SYSOBJECTS O ON (O.ID = R.CONSTID AND O.TYPE = 'F')
   WHERE R.FKEYID = OBJECT_ID('PEEMP_EMPLE') AND O.NAME = 'FK_PEEMP_EM_PR_PEEMP__PEEMP_EM')
ALTER TABLE PEEMP_EMPLE
   DROP CONSTRAINT FK_PEEMP_EM_PR_PEEMP__PEEMP_EM
go

IF EXISTS (SELECT 1
   FROM SYS.SYSREFERENCES R JOIN SYS.SYSOBJECTS O ON (O.ID = R.CONSTID AND O.TYPE = 'F')
   WHERE R.FKEYID = OBJECT_ID('PEEMP_EMPLE') AND O.NAME = 'FK_PEEMP_EM_PR_PEESC__PEESC_ES')
ALTER TABLE PEEMP_EMPLE
   DROP CONSTRAINT FK_PEEMP_EM_PR_PEESC__PEESC_ES
go

IF EXISTS (SELECT 1
   FROM SYS.SYSREFERENCES R JOIN SYS.SYSOBJECTS O ON (O.ID = R.CONSTID AND O.TYPE = 'F')
   WHERE R.FKEYID = OBJECT_ID('PEEMP_EMPLE') AND O.NAME = 'FK_PEEMP_EM_PR_PESEX__PESEX_SE')
ALTER TABLE PEEMP_EMPLE
   DROP CONSTRAINT FK_PEEMP_EM_PR_PESEX__PESEX_SE
go

IF EXISTS (SELECT 1
   FROM SYS.SYSREFERENCES R JOIN SYS.SYSOBJECTS O ON (O.ID = R.CONSTID AND O.TYPE = 'F')
   WHERE R.FKEYID = OBJECT_ID('PEFAM_FAMILI') AND O.NAME = 'FK_PEFAM_FA_EMPLEADO__PEEMP_EM')
ALTER TABLE PEFAM_FAMILI
   DROP CONSTRAINT FK_PEFAM_FA_EMPLEADO__PEEMP_EM
go

IF EXISTS (SELECT 1
   FROM SYS.SYSREFERENCES R JOIN SYS.SYSOBJECTS O ON (O.ID = R.CONSTID AND O.TYPE = 'F')
   WHERE R.FKEYID = OBJECT_ID('PEFAM_FAMILI') AND O.NAME = 'FK_PEFAM_FA_PR_PESEX__PESEX_SE')
ALTER TABLE PEFAM_FAMILI
   DROP CONSTRAINT FK_PEFAM_FA_PR_PESEX__PESEX_SE
go

IF EXISTS (SELECT 1
   FROM SYS.SYSREFERENCES R JOIN SYS.SYSOBJECTS O ON (O.ID = R.CONSTID AND O.TYPE = 'F')
   WHERE R.FKEYID = OBJECT_ID('XEOPC_OPCIO') AND O.NAME = 'FK_XEOPC_OP_XR_XESIS__XESIS_SI')
ALTER TABLE XEOPC_OPCIO
   DROP CONSTRAINT FK_XEOPC_OP_XR_XESIS__XESIS_SI
go

IF EXISTS (SELECT 1
   FROM SYS.SYSREFERENCES R JOIN SYS.SYSOBJECTS O ON (O.ID = R.CONSTID AND O.TYPE = 'F')
   WHERE R.FKEYID = OBJECT_ID('XEOXP_OPCPE') AND O.NAME = 'FK_XEOXP_OP_XR_XEOPC__XEOPC_OP')
ALTER TABLE XEOXP_OPCPE
   DROP CONSTRAINT FK_XEOXP_OP_XR_XEOPC__XEOPC_OP
go

IF EXISTS (SELECT 1
   FROM SYS.SYSREFERENCES R JOIN SYS.SYSOBJECTS O ON (O.ID = R.CONSTID AND O.TYPE = 'F')
   WHERE R.FKEYID = OBJECT_ID('XEOXP_OPCPE') AND O.NAME = 'FK_XEOXP_OP_XR_XEPER__XEPER_PE')
ALTER TABLE XEOXP_OPCPE
   DROP CONSTRAINT FK_XEOXP_OP_XR_XEPER__XEPER_PE
go

IF EXISTS (SELECT 1
   FROM SYS.SYSREFERENCES R JOIN SYS.SYSOBJECTS O ON (O.ID = R.CONSTID AND O.TYPE = 'F')
   WHERE R.FKEYID = OBJECT_ID('XEUSU_USUAR') AND O.NAME = 'FK_XEUSU_US_XR_PEEMP__PEEMP_EM')
ALTER TABLE XEUSU_USUAR
   DROP CONSTRAINT FK_XEUSU_US_XR_PEEMP__PEEMP_EM
go

IF EXISTS (SELECT 1
   FROM SYS.SYSREFERENCES R JOIN SYS.SYSOBJECTS O ON (O.ID = R.CONSTID AND O.TYPE = 'F')
   WHERE R.FKEYID = OBJECT_ID('XEUSU_USUAR') AND O.NAME = 'FK_XEUSU_US_XR_XEEST__XEEST_ES')
ALTER TABLE XEUSU_USUAR
   DROP CONSTRAINT FK_XEUSU_US_XR_XEEST__XEEST_ES
go

IF EXISTS (SELECT 1
   FROM SYS.SYSREFERENCES R JOIN SYS.SYSOBJECTS O ON (O.ID = R.CONSTID AND O.TYPE = 'F')
   WHERE R.FKEYID = OBJECT_ID('XEUXP_USUPE') AND O.NAME = 'FK_XEUXP_US_XR_XEPER__XEPER_PE')
ALTER TABLE XEUXP_USUPE
   DROP CONSTRAINT FK_XEUXP_US_XR_XEPER__XEPER_PE
go

IF EXISTS (SELECT 1
   FROM SYS.SYSREFERENCES R JOIN SYS.SYSOBJECTS O ON (O.ID = R.CONSTID AND O.TYPE = 'F')
   WHERE R.FKEYID = OBJECT_ID('XEUXP_USUPE') AND O.NAME = 'FK_XEUXP_US_XR_XEUSU__XEUSU_US')
ALTER TABLE XEUXP_USUPE
   DROP CONSTRAINT FK_XEUXP_US_XR_XEUSU__XEUSU_US
go

IF EXISTS (SELECT 1
            FROM  SYSINDEXES
           WHERE  ID    = OBJECT_ID('FECCP_CABCOM')
            AND   NAME  = 'FR_FECABCOM_FEFORPAGO_FK'
            AND   INDID > 0
            AND   INDID < 255)
   DROP INDEX FECCP_CABCOM.FR_FECABCOM_FEFORPAGO_FK
go

IF EXISTS (SELECT 1
            FROM  SYSOBJECTS
           WHERE  ID = OBJECT_ID('FECCP_CABCOM')
            AND   TYPE = 'U')
   DROP TABLE FECCP_CABCOM
go

IF EXISTS (SELECT 1
            FROM  SYSINDEXES
           WHERE  ID    = OBJECT_ID('FECUB_CUEBAN')
            AND   NAME  = 'FR_FEFORPAGO_FECUEBAN_FK'
            AND   INDID > 0
            AND   INDID < 255)
   DROP INDEX FECUB_CUEBAN.FR_FEFORPAGO_FECUEBAN_FK
go

IF EXISTS (SELECT 1
            FROM  SYSOBJECTS
           WHERE  ID = OBJECT_ID('FECUB_CUEBAN')
            AND   TYPE = 'U')
   DROP TABLE FECUB_CUEBAN
go

IF EXISTS (SELECT 1
            FROM  SYSINDEXES
           WHERE  ID    = OBJECT_ID('FEDCO_DETCOM')
            AND   NAME  = 'FR_FEDETCOM_FECABCOM_FK'
            AND   INDID > 0
            AND   INDID < 255)
   DROP INDEX FEDCO_DETCOM.FR_FEDETCOM_FECABCOM_FK
go

IF EXISTS (SELECT 1
            FROM  SYSOBJECTS
           WHERE  ID = OBJECT_ID('FEDCO_DETCOM')
            AND   TYPE = 'U')
   DROP TABLE FEDCO_DETCOM
go

IF EXISTS (SELECT 1
            FROM  SYSOBJECTS
           WHERE  ID = OBJECT_ID('FEFOP_FORPAG')
            AND   TYPE = 'U')
   DROP TABLE FEFOP_FORPAG
go

IF EXISTS (SELECT 1
            FROM  SYSINDEXES
           WHERE  ID    = OBJECT_ID('FEPAG_PAGO')
            AND   NAME  = 'FR_FECUEBAN_FEPAGO_FK'
            AND   INDID > 0
            AND   INDID < 255)
   DROP INDEX FEPAG_PAGO.FR_FECUEBAN_FEPAGO_FK
go

IF EXISTS (SELECT 1
            FROM  SYSOBJECTS
           WHERE  ID = OBJECT_ID('FEPAG_PAGO')
            AND   TYPE = 'U')
   DROP TABLE FEPAG_PAGO
go

IF EXISTS (SELECT 1
            FROM  SYSINDEXES
           WHERE  ID    = OBJECT_ID('GEEMPPRO_EMPPRO')
            AND   NAME  = 'GEEMPPRO_EMPPRO_FK'
            AND   INDID > 0
            AND   INDID < 255)
   DROP INDEX GEEMPPRO_EMPPRO.GEEMPPRO_EMPPRO_FK
go

IF EXISTS (SELECT 1
            FROM  SYSINDEXES
           WHERE  ID    = OBJECT_ID('GEEMPPRO_EMPPRO')
            AND   NAME  = 'GEEMPPRO_EMPPRO3_FK'
            AND   INDID > 0
            AND   INDID < 255)
   DROP INDEX GEEMPPRO_EMPPRO.GEEMPPRO_EMPPRO3_FK
go

IF EXISTS (SELECT 1
            FROM  SYSINDEXES
           WHERE  ID    = OBJECT_ID('GEEMPPRO_EMPPRO')
            AND   NAME  = 'GEEMPPRO_EMPPRO2_FK'
            AND   INDID > 0
            AND   INDID < 255)
   DROP INDEX GEEMPPRO_EMPPRO.GEEMPPRO_EMPPRO2_FK
go

IF EXISTS (SELECT 1
            FROM  SYSOBJECTS
           WHERE  ID = OBJECT_ID('GEEMPPRO_EMPPRO')
            AND   TYPE = 'U')
   DROP TABLE GEEMPPRO_EMPPRO
go

IF EXISTS (SELECT 1
            FROM  SYSINDEXES
           WHERE  ID    = OBJECT_ID('GEPROY_PROY')
            AND   NAME  = 'PROYECTO_DEPARTAMENTO_FK'
            AND   INDID > 0
            AND   INDID < 255)
   DROP INDEX GEPROY_PROY.PROYECTO_DEPARTAMENTO_FK
go

IF EXISTS (SELECT 1
            FROM  SYSOBJECTS
           WHERE  ID = OBJECT_ID('GEPROY_PROY')
            AND   TYPE = 'U')
   DROP TABLE GEPROY_PROY
go

IF EXISTS (SELECT 1
            FROM  SYSINDEXES
           WHERE  ID    = OBJECT_ID('PEASIG_ASIGNA')
            AND   NAME  = 'PEASIG_ASIGNA_FK'
            AND   INDID > 0
            AND   INDID < 255)
   DROP INDEX PEASIG_ASIGNA.PEASIG_ASIGNA_FK
go

IF EXISTS (SELECT 1
            FROM  SYSINDEXES
           WHERE  ID    = OBJECT_ID('PEASIG_ASIGNA')
            AND   NAME  = 'PEASIG_ASIGNA2_FK'
            AND   INDID > 0
            AND   INDID < 255)
   DROP INDEX PEASIG_ASIGNA.PEASIG_ASIGNA2_FK
go

IF EXISTS (SELECT 1
            FROM  SYSOBJECTS
           WHERE  ID = OBJECT_ID('PEASIG_ASIGNA')
            AND   TYPE = 'U')
   DROP TABLE PEASIG_ASIGNA
go

IF EXISTS (SELECT 1
            FROM  SYSINDEXES
           WHERE  ID    = OBJECT_ID('PECAR_CARGO')
            AND   NAME  = 'PR_PECAR_PEDEP_FK'
            AND   INDID > 0
            AND   INDID < 255)
   DROP INDEX PECAR_CARGO.PR_PECAR_PEDEP_FK
go

IF EXISTS (SELECT 1
            FROM  SYSOBJECTS
           WHERE  ID = OBJECT_ID('PECAR_CARGO')
            AND   TYPE = 'U')
   DROP TABLE PECAR_CARGO
go

IF EXISTS (SELECT 1
            FROM  SYSOBJECTS
           WHERE  ID = OBJECT_ID('PEDEP_DEPAR')
            AND   TYPE = 'U')
   DROP TABLE PEDEP_DEPAR
go

IF EXISTS (SELECT 1
            FROM  SYSINDEXES
           WHERE  ID    = OBJECT_ID('PEEMP_EMPLE')
            AND   NAME  = 'PR_PEEMP_PEEMP_FK'
            AND   INDID > 0
            AND   INDID < 255)
   DROP INDEX PEEMP_EMPLE.PR_PEEMP_PEEMP_FK
go

IF EXISTS (SELECT 1
            FROM  SYSINDEXES
           WHERE  ID    = OBJECT_ID('PEEMP_EMPLE')
            AND   NAME  = 'PR_PEESC_PEEMP_FK'
            AND   INDID > 0
            AND   INDID < 255)
   DROP INDEX PEEMP_EMPLE.PR_PEESC_PEEMP_FK
go

IF EXISTS (SELECT 1
            FROM  SYSINDEXES
           WHERE  ID    = OBJECT_ID('PEEMP_EMPLE')
            AND   NAME  = 'PR_PESEX_PEEMP_FK'
            AND   INDID > 0
            AND   INDID < 255)
   DROP INDEX PEEMP_EMPLE.PR_PESEX_PEEMP_FK
go

IF EXISTS (SELECT 1
            FROM  SYSOBJECTS
           WHERE  ID = OBJECT_ID('PEEMP_EMPLE')
            AND   TYPE = 'U')
   DROP TABLE PEEMP_EMPLE
go

IF EXISTS (SELECT 1
            FROM  SYSOBJECTS
           WHERE  ID = OBJECT_ID('PEESC_ESTCIV')
            AND   TYPE = 'U')
   DROP TABLE PEESC_ESTCIV
go

IF EXISTS (SELECT 1
            FROM  SYSINDEXES
           WHERE  ID    = OBJECT_ID('PEFAM_FAMILI')
            AND   NAME  = 'EMPLEADO_FAMILIAR_FK'
            AND   INDID > 0
            AND   INDID < 255)
   DROP INDEX PEFAM_FAMILI.EMPLEADO_FAMILIAR_FK
go

IF EXISTS (SELECT 1
            FROM  SYSINDEXES
           WHERE  ID    = OBJECT_ID('PEFAM_FAMILI')
            AND   NAME  = 'PR_PESEX_PEFAM_FK'
            AND   INDID > 0
            AND   INDID < 255)
   DROP INDEX PEFAM_FAMILI.PR_PESEX_PEFAM_FK
go

IF EXISTS (SELECT 1
            FROM  SYSOBJECTS
           WHERE  ID = OBJECT_ID('PEFAM_FAMILI')
            AND   TYPE = 'U')
   DROP TABLE PEFAM_FAMILI
go

IF EXISTS (SELECT 1
            FROM  SYSOBJECTS
           WHERE  ID = OBJECT_ID('PESEX_SEXO')
            AND   TYPE = 'U')
   DROP TABLE PESEX_SEXO
go

IF EXISTS (SELECT 1
            FROM  SYSOBJECTS
           WHERE  ID = OBJECT_ID('XEEST_ESTAD')
            AND   TYPE = 'U')
   DROP TABLE XEEST_ESTAD
go

IF EXISTS (SELECT 1
            FROM  SYSINDEXES
           WHERE  ID    = OBJECT_ID('XEOPC_OPCIO')
            AND   NAME  = 'XR_XESIS_XEOPC_FK'
            AND   INDID > 0
            AND   INDID < 255)
   DROP INDEX XEOPC_OPCIO.XR_XESIS_XEOPC_FK
go

IF EXISTS (SELECT 1
            FROM  SYSOBJECTS
           WHERE  ID = OBJECT_ID('XEOPC_OPCIO')
            AND   TYPE = 'U')
   DROP TABLE XEOPC_OPCIO
go

IF EXISTS (SELECT 1
            FROM  SYSINDEXES
           WHERE  ID    = OBJECT_ID('XEOXP_OPCPE')
            AND   NAME  = 'XR_XEOPC_XEOXP_FK'
            AND   INDID > 0
            AND   INDID < 255)
   DROP INDEX XEOXP_OPCPE.XR_XEOPC_XEOXP_FK
go

IF EXISTS (SELECT 1
            FROM  SYSINDEXES
           WHERE  ID    = OBJECT_ID('XEOXP_OPCPE')
            AND   NAME  = 'XR_XEPER_XEOXP_FK'
            AND   INDID > 0
            AND   INDID < 255)
   DROP INDEX XEOXP_OPCPE.XR_XEPER_XEOXP_FK
go

IF EXISTS (SELECT 1
            FROM  SYSOBJECTS
           WHERE  ID = OBJECT_ID('XEOXP_OPCPE')
            AND   TYPE = 'U')
   DROP TABLE XEOXP_OPCPE
go

IF EXISTS (SELECT 1
            FROM  SYSOBJECTS
           WHERE  ID = OBJECT_ID('XEPER_PERFI')
            AND   TYPE = 'U')
   DROP TABLE XEPER_PERFI
go

IF EXISTS (SELECT 1
            FROM  SYSOBJECTS
           WHERE  ID = OBJECT_ID('XESIS_SISTE')
            AND   TYPE = 'U')
   DROP TABLE XESIS_SISTE
go

IF EXISTS (SELECT 1
            FROM  SYSINDEXES
           WHERE  ID    = OBJECT_ID('XEUSU_USUAR')
            AND   NAME  = 'XR_XEEST_XEUSU_FK'
            AND   INDID > 0
            AND   INDID < 255)
   DROP INDEX XEUSU_USUAR.XR_XEEST_XEUSU_FK
go

IF EXISTS (SELECT 1
            FROM  SYSOBJECTS
           WHERE  ID = OBJECT_ID('XEUSU_USUAR')
            AND   TYPE = 'U')
   DROP TABLE XEUSU_USUAR
go

IF EXISTS (SELECT 1
            FROM  SYSINDEXES
           WHERE  ID    = OBJECT_ID('XEUXP_USUPE')
            AND   NAME  = 'XR_XEUSU_XEUXP_FK'
            AND   INDID > 0
            AND   INDID < 255)
   DROP INDEX XEUXP_USUPE.XR_XEUSU_XEUXP_FK
go

IF EXISTS (SELECT 1
            FROM  SYSINDEXES
           WHERE  ID    = OBJECT_ID('XEUXP_USUPE')
            AND   NAME  = 'XR_XEPER_XEUXP_FK'
            AND   INDID > 0
            AND   INDID < 255)
   DROP INDEX XEUXP_USUPE.XR_XEPER_XEUXP_FK
go

IF EXISTS (SELECT 1
            FROM  SYSOBJECTS
           WHERE  ID = OBJECT_ID('XEUXP_USUPE')
            AND   TYPE = 'U')
   DROP TABLE XEUXP_USUPE
go

/*==============================================================*/
/* Table: FECCP_CABCOM                                          */
/*==============================================================*/
CREATE TABLE FECCP_CABCOM (
   FECFA_CODIGO         INT                  NOT NULL,
   FEFOP_CODIGO         CHAR(1)              NOT NULL,
   FECFA_FECHA          DATETIME             NOT NULL,
   FECFA_NUMER          CHAR(10)             NOT NULL,
   FECFA_DESCUS         NUMERIC(9,2)         NOT NULL,
   FECFA_SUBTOT         NUMERIC(9,2)         NOT NULL,
   FECFA_TOTAL          NUMERIC(9,2)         NOT NULL,
   CONSTRAINT PK_FECCP_CABCOM PRIMARY KEY NONCLUSTERED (FECFA_CODIGO)
)
go

/*==============================================================*/
/* Index: FR_FECABCOM_FEFORPAGO_FK                              */
/*==============================================================*/
CREATE INDEX FR_FECABCOM_FEFORPAGO_FK ON FECCP_CABCOM (
FEFOP_CODIGO ASC
)
go

/*==============================================================*/
/* Table: FECUB_CUEBAN                                          */
/*==============================================================*/
CREATE TABLE FECUB_CUEBAN (
   FECUB_CODIGO         VARCHAR(15)          NOT NULL,
   FEFOP_CODIGO         CHAR(1)              NOT NULL,
   FECUB_NUMCUE         CHAR(10)             NOT NULL,
   FECUB_NOMTIT         VARCHAR(30)          NOT NULL,
   FECUB_APETIT         VARCHAR(30)          NOT NULL,
   FECUB_CORTIT         VARCHAR(20)          NOT NULL,
   FECUB_NOMBAN         VARCHAR(20)          NOT NULL,
   CONSTRAINT PK_FECUB_CUEBAN PRIMARY KEY NONCLUSTERED (FECUB_CODIGO)
)
go

/*==============================================================*/
/* Index: FR_FEFORPAGO_FECUEBAN_FK                              */
/*==============================================================*/
CREATE INDEX FR_FEFORPAGO_FECUEBAN_FK ON FECUB_CUEBAN (
FEFOP_CODIGO ASC
)
go

/*==============================================================*/
/* Table: FEDCO_DETCOM                                          */
/*==============================================================*/
CREATE TABLE FEDCO_DETCOM (
   FEDCO_CODIGO         INT                  NOT NULL,
   FECFA_CODIGO         INT                  NOT NULL,
   FEDCO_CANTIDA        INT                  NOT NULL,
   FEDCO_PRECIO         FLOAT(9)             NOT NULL,
   FEDCO_TOTIMP         FLOAT(9)             NULL,
   CONSTRAINT PK_FEDCO_DETCOM PRIMARY KEY NONCLUSTERED (FEDCO_CODIGO)
)
go

/*==============================================================*/
/* Index: FR_FEDETCOM_FECABCOM_FK                               */
/*==============================================================*/
CREATE INDEX FR_FEDETCOM_FECABCOM_FK ON FEDCO_DETCOM (
FECFA_CODIGO ASC
)
go

/*==============================================================*/
/* Table: FEFOP_FORPAG                                          */
/*==============================================================*/
CREATE TABLE FEFOP_FORPAG (
   FEFOP_CODIGO         CHAR(1)              NOT NULL,
   FEFOP_DESCRI         VARCHAR(50)          NOT NULL,
   CONSTRAINT PK_FEFOP_FORPAG PRIMARY KEY NONCLUSTERED (FEFOP_CODIGO)
)
go

IF EXISTS (SELECT 1 FROM  SYS.EXTENDED_PROPERTIES
           WHERE MAJOR_ID = OBJECT_ID('FEFOP_FORPAG') AND MINOR_ID = 0)
BEGIN 
   DECLARE @CURRENTUSER SYSNAME 
SELECT @CURRENTUSER = USER_NAME() 
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description',  
   'user', @CURRENTUSER, 'table', 'FEFOP_FORPAG' 
 
END 


SELECT @CURRENTUSER = USER_NAME() 
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description',  
   'Entidad utilizada para gestionar la forma de pago de un salario', 
   'user', @CURRENTUSER, 'table', 'FEFOP_FORPAG'
go

/*==============================================================*/
/* Table: FEPAG_PAGO                                            */
/*==============================================================*/
CREATE TABLE FEPAG_PAGO (
   FEPAG_CODIGO         CHAR(15)             NOT NULL,
   FECUB_CODIGO         VARCHAR(15)          NOT NULL,
   FEPAG_FECPAG         DATETIME             NOT NULL,
   FEPAG_NOMENP         VARCHAR(50)          NOT NULL,
   CONSTRAINT PK_FEPAG_PAGO PRIMARY KEY NONCLUSTERED (FEPAG_CODIGO)
)
go

IF EXISTS (SELECT 1 FROM  SYS.EXTENDED_PROPERTIES
           WHERE MAJOR_ID = OBJECT_ID('FEPAG_PAGO') AND MINOR_ID = 0)
BEGIN 
   DECLARE @CURRENTUSER SYSNAME 
SELECT @CURRENTUSER = USER_NAME() 
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description',  
   'user', @CURRENTUSER, 'table', 'FEPAG_PAGO' 
 
END 


SELECT @CURRENTUSER = USER_NAME() 
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description',  
   'Entidad para gestionar el pago', 
   'user', @CURRENTUSER, 'table', 'FEPAG_PAGO'
go

/*==============================================================*/
/* Index: FR_FECUEBAN_FEPAGO_FK                                 */
/*==============================================================*/
CREATE INDEX FR_FECUEBAN_FEPAGO_FK ON FEPAG_PAGO (
FECUB_CODIGO ASC
)
go

/*==============================================================*/
/* Table: GEEMPPRO_EMPPRO                                       */
/*==============================================================*/
CREATE TABLE GEEMPPRO_EMPPRO (
   PEEMP_CODIGO         CHAR(6)              NOT NULL,
   GEPROY_CODIGO        CHAR(8)              NOT NULL,
   FEDCO_CODIGO         INT                  NOT NULL,
   GEEMPPRO_HTRABA      NUMERIC(3,0)         NOT NULL,
   GEEMPPRO_VHORA       NUMERIC(7,2)         NOT NULL,
   CONSTRAINT PK_GEEMPPRO_EMPPRO PRIMARY KEY NONCLUSTERED (PEEMP_CODIGO, GEPROY_CODIGO, FEDCO_CODIGO)
)
go

IF EXISTS (SELECT 1 FROM  SYS.EXTENDED_PROPERTIES
           WHERE MAJOR_ID = OBJECT_ID('GEEMPPRO_EMPPRO') AND MINOR_ID = 0)
BEGIN 
   DECLARE @CURRENTUSER SYSNAME 
SELECT @CURRENTUSER = USER_NAME() 
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description',  
   'user', @CURRENTUSER, 'table', 'GEEMPPRO_EMPPRO' 
 
END 


SELECT @CURRENTUSER = USER_NAME() 
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description',  
   'Tabla intermedia en la cual se relaciona el proyecto con los empleados, ya que empleados de diferentes departamentos que no son los designados al proyecto pueden colaborar en el mismo
   ', 
   'user', @CURRENTUSER, 'table', 'GEEMPPRO_EMPPRO'
go

/*==============================================================*/
/* Index: GEEMPPRO_EMPPRO2_FK                                   */
/*==============================================================*/
CREATE INDEX GEEMPPRO_EMPPRO2_FK ON GEEMPPRO_EMPPRO (
PEEMP_CODIGO ASC
)
go

/*==============================================================*/
/* Index: GEEMPPRO_EMPPRO3_FK                                   */
/*==============================================================*/
CREATE INDEX GEEMPPRO_EMPPRO3_FK ON GEEMPPRO_EMPPRO (
GEPROY_CODIGO ASC
)
go

/*==============================================================*/
/* Index: GEEMPPRO_EMPPRO_FK                                    */
/*==============================================================*/
CREATE INDEX GEEMPPRO_EMPPRO_FK ON GEEMPPRO_EMPPRO (
FEDCO_CODIGO ASC
)
go

/*==============================================================*/
/* Table: GEPROY_PROY                                           */
/*==============================================================*/
CREATE TABLE GEPROY_PROY (
   GEPROY_CODIGO        CHAR(8)              NOT NULL,
   PEDEP_DEPAR          CHAR(3)              NOT NULL,
   GEPROY_NOMPRO        VARCHAR(50)          NOT NULL,
   GEPROY_COSTO         NUMERIC(7,2)         NOT NULL,
   CONSTRAINT PK_GEPROY_PROY PRIMARY KEY NONCLUSTERED (GEPROY_CODIGO)
)
go

/*==============================================================*/
/* Index: PROYECTO_DEPARTAMENTO_FK                              */
/*==============================================================*/
CREATE INDEX PROYECTO_DEPARTAMENTO_FK ON GEPROY_PROY (
PEDEP_DEPAR ASC
)
go

/*==============================================================*/
/* Table: PEASIG_ASIGNA                                         */
/*==============================================================*/
CREATE TABLE PEASIG_ASIGNA (
   PEEMP_CODIGO         CHAR(6)              NOT NULL,
   PEDEP_DEPAR          CHAR(3)              NOT NULL,
   PECAR_CODIGO         CHAR(3)              NOT NULL,
   FECINICIO            DATETIME             NOT NULL,
   CONSTRAINT PK_PEASIG_ASIGNA PRIMARY KEY NONCLUSTERED (PEEMP_CODIGO, PEDEP_DEPAR, PECAR_CODIGO)
)
go

IF EXISTS (SELECT 1 FROM  SYS.EXTENDED_PROPERTIES
           WHERE MAJOR_ID = OBJECT_ID('PEASIG_ASIGNA') AND MINOR_ID = 0)
BEGIN 
   DECLARE @CURRENTUSER SYSNAME 
SELECT @CURRENTUSER = USER_NAME() 
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description',  
   'user', @CURRENTUSER, 'table', 'PEASIG_ASIGNA' 
 
END 


SELECT @CURRENTUSER = USER_NAME() 
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description',  
   'Esta es una tabla para guardar la fecha del empleado que fue asignado a un cargo
   ', 
   'user', @CURRENTUSER, 'table', 'PEASIG_ASIGNA'
go

/*==============================================================*/
/* Index: PEASIG_ASIGNA2_FK                                     */
/*==============================================================*/
CREATE INDEX PEASIG_ASIGNA2_FK ON PEASIG_ASIGNA (
PEEMP_CODIGO ASC
)
go

/*==============================================================*/
/* Index: PEASIG_ASIGNA_FK                                      */
/*==============================================================*/
CREATE INDEX PEASIG_ASIGNA_FK ON PEASIG_ASIGNA (
PEDEP_DEPAR ASC,
PECAR_CODIGO ASC
)
go

/*==============================================================*/
/* Table: PECAR_CARGO                                           */
/*==============================================================*/
CREATE TABLE PECAR_CARGO (
   PEDEP_DEPAR          CHAR(3)              NOT NULL,
   PECAR_CODIGO         CHAR(3)              NOT NULL,
   PECAR_DESCRI         VARCHAR(50)          NOT NULL,
   CONSTRAINT PK_PECAR_CARGO PRIMARY KEY NONCLUSTERED (PEDEP_DEPAR, PECAR_CODIGO)
)
go

/*==============================================================*/
/* Index: PR_PECAR_PEDEP_FK                                     */
/*==============================================================*/
CREATE INDEX PR_PECAR_PEDEP_FK ON PECAR_CARGO (
PEDEP_DEPAR ASC
)
go

/*==============================================================*/
/* Table: PEDEP_DEPAR                                           */
/*==============================================================*/
CREATE TABLE PEDEP_DEPAR (
   PEDEP_DEPAR          CHAR(3)              NOT NULL,
   PEDEP_DESCRI         VARCHAR(50)          NOT NULL,
   CONSTRAINT PK_PEDEP_DEPAR PRIMARY KEY NONCLUSTERED (PEDEP_DEPAR)
)
go

/*==============================================================*/
/* Table: PEEMP_EMPLE                                           */
/*==============================================================*/
CREATE TABLE PEEMP_EMPLE (
   PEEMP_CODIGO         CHAR(6)              NOT NULL,
   PESEX_CODIGO         CHAR(1)              NOT NULL,
   PEESC_CODIGO         CHAR(1)              NULL,
   PEE_PEEMP_CODIGO     CHAR(6)              NULL,
   PEEMP_APELLI         VARCHAR(50)          NOT NULL,
   PEEMP_NOMBRE         VARCHAR(50)          NOT NULL,
   PEEMP_FECNAC         DATETIME             NOT NULL,
   PEEMP_DIREC          VARCHAR(200)         NOT NULL,
   PEEMP_TELEF          VARCHAR(15)          NOT NULL,
   PEEMP_EMAIL          VARCHAR(100)         NOT NULL,
   PEEMP_CEDULA         VARCHAR(10)          NOT NULL,
   PEEMP_DISCAP         BINARY(1)            NOT NULL,
   PEEMP_SALARI         NUMERIC(7,2)         NOT NULL,
   CONSTRAINT PK_PEEMP_EMPLE PRIMARY KEY NONCLUSTERED (PEEMP_CODIGO)
)
go

IF EXISTS (SELECT 1 FROM  SYS.EXTENDED_PROPERTIES
           WHERE MAJOR_ID = OBJECT_ID('PEEMP_EMPLE') AND MINOR_ID = 0)
BEGIN 
   DECLARE @CURRENTUSER SYSNAME 
SELECT @CURRENTUSER = USER_NAME() 
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description',  
   'user', @CURRENTUSER, 'table', 'PEEMP_EMPLE' 
 
END 


SELECT @CURRENTUSER = USER_NAME() 
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description',  
   'Entidad para realizar la gestion de empleados
   ', 
   'user', @CURRENTUSER, 'table', 'PEEMP_EMPLE'
go

/*==============================================================*/
/* Index: PR_PESEX_PEEMP_FK                                     */
/*==============================================================*/
CREATE INDEX PR_PESEX_PEEMP_FK ON PEEMP_EMPLE (
PESEX_CODIGO ASC
)
go

/*==============================================================*/
/* Index: PR_PEESC_PEEMP_FK                                     */
/*==============================================================*/
CREATE INDEX PR_PEESC_PEEMP_FK ON PEEMP_EMPLE (
PEESC_CODIGO ASC
)
go

/*==============================================================*/
/* Index: PR_PEEMP_PEEMP_FK                                     */
/*==============================================================*/
CREATE INDEX PR_PEEMP_PEEMP_FK ON PEEMP_EMPLE (
PEE_PEEMP_CODIGO ASC
)
go

/*==============================================================*/
/* Table: PEESC_ESTCIV                                          */
/*==============================================================*/
CREATE TABLE PEESC_ESTCIV (
   PEESC_CODIGO         CHAR(1)              NOT NULL,
   PEESC_DESCRI         VARCHAR(50)          NOT NULL,
   CONSTRAINT PK_PEESC_ESTCIV PRIMARY KEY NONCLUSTERED (PEESC_CODIGO)
)
go

/*==============================================================*/
/* Table: PEFAM_FAMILI                                          */
/*==============================================================*/
CREATE TABLE PEFAM_FAMILI (
   PEEMP_CODIGO         CHAR(6)              NOT NULL,
   PEFAM_CODIGO         CHAR(6)              NOT NULL,
   PESEX_CODIGO         CHAR(1)              NOT NULL,
   PEFAM_CEDULA         CHAR(10)             NOT NULL,
   PEFAM_APELLI         VARCHAR(20)          NOT NULL,
   PEFAM_NOMBRE         VARCHAR(20)          NOT NULL,
   PEFAM_FENAC          DATETIME             NOT NULL,
   CONSTRAINT PK_PEFAM_FAMILI PRIMARY KEY NONCLUSTERED (PEEMP_CODIGO, PEFAM_CODIGO)
)
go

IF EXISTS (SELECT 1 FROM  SYS.EXTENDED_PROPERTIES
           WHERE MAJOR_ID = OBJECT_ID('PEFAM_FAMILI') AND MINOR_ID = 0)
BEGIN 
   DECLARE @CURRENTUSER SYSNAME 
SELECT @CURRENTUSER = USER_NAME() 
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description',  
   'user', @CURRENTUSER, 'table', 'PEFAM_FAMILI' 
 
END 


SELECT @CURRENTUSER = USER_NAME() 
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description',  
   'Familiar anclado con un Empleado por parentesco directo', 
   'user', @CURRENTUSER, 'table', 'PEFAM_FAMILI'
go

/*==============================================================*/
/* Index: PR_PESEX_PEFAM_FK                                     */
/*==============================================================*/
CREATE INDEX PR_PESEX_PEFAM_FK ON PEFAM_FAMILI (
PESEX_CODIGO ASC
)
go

/*==============================================================*/
/* Index: EMPLEADO_FAMILIAR_FK                                  */
/*==============================================================*/
CREATE INDEX EMPLEADO_FAMILIAR_FK ON PEFAM_FAMILI (
PEEMP_CODIGO ASC
)
go

/*==============================================================*/
/* Table: PESEX_SEXO                                            */
/*==============================================================*/
CREATE TABLE PESEX_SEXO (
   PESEX_CODIGO         CHAR(1)              NOT NULL,
   PESEX_DESCRI         VARCHAR(50)          NOT NULL,
   CONSTRAINT PK_PESEX_SEXO PRIMARY KEY NONCLUSTERED (PESEX_CODIGO)
)
go

IF EXISTS (SELECT 1 FROM  SYS.EXTENDED_PROPERTIES
           WHERE MAJOR_ID = OBJECT_ID('PESEX_SEXO') AND MINOR_ID = 0)
BEGIN 
   DECLARE @CURRENTUSER SYSNAME 
SELECT @CURRENTUSER = USER_NAME() 
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description',  
   'user', @CURRENTUSER, 'table', 'PESEX_SEXO' 
 
END 


SELECT @CURRENTUSER = USER_NAME() 
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description',  
   'Gestión del sexo o género de una persona
   ', 
   'user', @CURRENTUSER, 'table', 'PESEX_SEXO'
go

/*==============================================================*/
/* Table: XEEST_ESTAD                                           */
/*==============================================================*/
CREATE TABLE XEEST_ESTAD (
   XEEST_CODIGO         CHAR(1)              NOT NULL,
   XEEST_DESCRI         VARCHAR(50)          NOT NULL,
   CONSTRAINT PK_XEEST_ESTAD PRIMARY KEY NONCLUSTERED (XEEST_CODIGO)
)
go

IF EXISTS (SELECT 1 FROM  SYS.EXTENDED_PROPERTIES
           WHERE MAJOR_ID = OBJECT_ID('XEEST_ESTAD') AND MINOR_ID = 0)
BEGIN 
   DECLARE @CURRENTUSER SYSNAME 
SELECT @CURRENTUSER = USER_NAME() 
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description',  
   'user', @CURRENTUSER, 'table', 'XEEST_ESTAD' 
 
END 


SELECT @CURRENTUSER = USER_NAME() 
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description',  
   'Entidad utilizada para gestionar el estado de las difetrentes tablas', 
   'user', @CURRENTUSER, 'table', 'XEEST_ESTAD'
go

/*==============================================================*/
/* Table: XEOPC_OPCIO                                           */
/*==============================================================*/
CREATE TABLE XEOPC_OPCIO (
   XEOPC_CODIGO         CHAR(3)              NOT NULL,
   XESIS_CODIGO         CHAR(1)              NOT NULL,
   XEOPC_DESCRI         VARCHAR(100)         NOT NULL,
   CONSTRAINT PK_XEOPC_OPCIO PRIMARY KEY NONCLUSTERED (XEOPC_CODIGO)
)
go

IF EXISTS (SELECT 1 FROM  SYS.EXTENDED_PROPERTIES
           WHERE MAJOR_ID = OBJECT_ID('XEOPC_OPCIO') AND MINOR_ID = 0)
BEGIN 
   DECLARE @CURRENTUSER SYSNAME 
SELECT @CURRENTUSER = USER_NAME() 
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description',  
   'user', @CURRENTUSER, 'table', 'XEOPC_OPCIO' 
 
END 


SELECT @CURRENTUSER = USER_NAME() 
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description',  
   'Entidad utilizada para realizar el registro de las diferentes opciones de un sistema', 
   'user', @CURRENTUSER, 'table', 'XEOPC_OPCIO'
go

/*==============================================================*/
/* Index: XR_XESIS_XEOPC_FK                                     */
/*==============================================================*/
CREATE INDEX XR_XESIS_XEOPC_FK ON XEOPC_OPCIO (
XESIS_CODIGO ASC
)
go

/*==============================================================*/
/* Table: XEOXP_OPCPE                                           */
/*==============================================================*/
CREATE TABLE XEOXP_OPCPE (
   XEOPC_CODIGO         CHAR(3)              NOT NULL,
   XEPER_CODIGO         CHAR(8)              NOT NULL,
   XEOXP_FECASI         DATETIME             NOT NULL,
   XEOXP_FECRET         DATETIME             NULL,
   CONSTRAINT PK_XEOXP_OPCPE PRIMARY KEY NONCLUSTERED (XEOPC_CODIGO, XEPER_CODIGO)
)
go

IF EXISTS (SELECT 1 FROM  SYS.EXTENDED_PROPERTIES
           WHERE MAJOR_ID = OBJECT_ID('XEOXP_OPCPE') AND MINOR_ID = 0)
BEGIN 
   DECLARE @CURRENTUSER SYSNAME 
SELECT @CURRENTUSER = USER_NAME() 
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description',  
   'user', @CURRENTUSER, 'table', 'XEOXP_OPCPE' 
 
END 


SELECT @CURRENTUSER = USER_NAME() 
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description',  
   'Entidad utilizada para llevar el registro de las opciones que pertenecen a un perfil', 
   'user', @CURRENTUSER, 'table', 'XEOXP_OPCPE'
go

/*==============================================================*/
/* Index: XR_XEPER_XEOXP_FK                                     */
/*==============================================================*/
CREATE INDEX XR_XEPER_XEOXP_FK ON XEOXP_OPCPE (
XEPER_CODIGO ASC
)
go

/*==============================================================*/
/* Index: XR_XEOPC_XEOXP_FK                                     */
/*==============================================================*/
CREATE INDEX XR_XEOPC_XEOXP_FK ON XEOXP_OPCPE (
XEOPC_CODIGO ASC
)
go

/*==============================================================*/
/* Table: XEPER_PERFI                                           */
/*==============================================================*/
CREATE TABLE XEPER_PERFI (
   XEPER_CODIGO         CHAR(8)              NOT NULL,
   XEPER_DESCRI         VARCHAR(100)         NOT NULL,
   XEPER_OBSER          TEXT                 NULL,
   CONSTRAINT PK_XEPER_PERFI PRIMARY KEY NONCLUSTERED (XEPER_CODIGO)
)
go

IF EXISTS (SELECT 1 FROM  SYS.EXTENDED_PROPERTIES
           WHERE MAJOR_ID = OBJECT_ID('XEPER_PERFI') AND MINOR_ID = 0)
BEGIN 
   DECLARE @CURRENTUSER SYSNAME 
SELECT @CURRENTUSER = USER_NAME() 
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description',  
   'user', @CURRENTUSER, 'table', 'XEPER_PERFI' 
 
END 


SELECT @CURRENTUSER = USER_NAME() 
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description',  
   'Entidad utilizada para realizar la gestión de los diferentes perfiles', 
   'user', @CURRENTUSER, 'table', 'XEPER_PERFI'
go

/*==============================================================*/
/* Table: XESIS_SISTE                                           */
/*==============================================================*/
CREATE TABLE XESIS_SISTE (
   XESIS_CODIGO         CHAR(1)              NOT NULL,
   XESIS_DESCRI         VARCHAR(50)          NOT NULL,
   CONSTRAINT PK_XESIS_SISTE PRIMARY KEY NONCLUSTERED (XESIS_CODIGO)
)
go

IF EXISTS (SELECT 1 FROM  SYS.EXTENDED_PROPERTIES
           WHERE MAJOR_ID = OBJECT_ID('XESIS_SISTE') AND MINOR_ID = 0)
BEGIN 
   DECLARE @CURRENTUSER SYSNAME 
SELECT @CURRENTUSER = USER_NAME() 
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description',  
   'user', @CURRENTUSER, 'table', 'XESIS_SISTE' 
 
END 


SELECT @CURRENTUSER = USER_NAME() 
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description',  
   'Entidad utilizada para realziar la gestión de los diferentes subsistemas', 
   'user', @CURRENTUSER, 'table', 'XESIS_SISTE'
go

/*==============================================================*/
/* Table: XEUSU_USUAR                                           */
/*==============================================================*/
CREATE TABLE XEUSU_USUAR (
   PEEMP_CODIGO         CHAR(6)              NOT NULL,
   XEEST_CODIGO         CHAR(1)              NOT NULL,
   XEUSU_PASWD          VARCHAR(16)          NOT NULL,
   XEUSU_FECCRE         DATETIME             NOT NULL,
   XEUSU_FECMOD         DATETIME             NOT NULL,
   XEUSU_PIEFIR         VARCHAR(100)         NOT NULL,
   CONSTRAINT PK_XEUSU_USUAR PRIMARY KEY NONCLUSTERED (PEEMP_CODIGO)
)
go

IF EXISTS (SELECT 1 FROM  SYS.EXTENDED_PROPERTIES
           WHERE MAJOR_ID = OBJECT_ID('XEUSU_USUAR') AND MINOR_ID = 0)
BEGIN 
   DECLARE @CURRENTUSER SYSNAME 
SELECT @CURRENTUSER = USER_NAME() 
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description',  
   'user', @CURRENTUSER, 'table', 'XEUSU_USUAR' 
 
END 


SELECT @CURRENTUSER = USER_NAME() 
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description',  
   'Entidad relacionada para gentionar los usuario que ingrsan al sistema', 
   'user', @CURRENTUSER, 'table', 'XEUSU_USUAR'
go

/*==============================================================*/
/* Index: XR_XEEST_XEUSU_FK                                     */
/*==============================================================*/
CREATE INDEX XR_XEEST_XEUSU_FK ON XEUSU_USUAR (
XEEST_CODIGO ASC
)
go

/*==============================================================*/
/* Table: XEUXP_USUPE                                           */
/*==============================================================*/
CREATE TABLE XEUXP_USUPE (
   PEEMP_CODIGO         CHAR(6)              NOT NULL,
   XEPER_CODIGO         CHAR(8)              NOT NULL,
   XEUXP_FECASI         DATETIME             NOT NULL,
   XEUXP_FECRET         DATETIME             NULL,
   CONSTRAINT PK_XEUXP_USUPE PRIMARY KEY NONCLUSTERED (PEEMP_CODIGO, XEPER_CODIGO)
)
go

IF EXISTS (SELECT 1 FROM  SYS.EXTENDED_PROPERTIES
           WHERE MAJOR_ID = OBJECT_ID('XEUXP_USUPE') AND MINOR_ID = 0)
BEGIN 
   DECLARE @CURRENTUSER SYSNAME 
SELECT @CURRENTUSER = USER_NAME() 
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description',  
   'user', @CURRENTUSER, 'table', 'XEUXP_USUPE' 
 
END 


SELECT @CURRENTUSER = USER_NAME() 
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description',  
   'Entidad utilizada para realizar el registro de los diferentes usuarios que pertenecen a un perfil', 
   'user', @CURRENTUSER, 'table', 'XEUXP_USUPE'
go

/*==============================================================*/
/* Index: XR_XEPER_XEUXP_FK                                     */
/*==============================================================*/
CREATE INDEX XR_XEPER_XEUXP_FK ON XEUXP_USUPE (
XEPER_CODIGO ASC
)
go

/*==============================================================*/
/* Index: XR_XEUSU_XEUXP_FK                                     */
/*==============================================================*/
CREATE INDEX XR_XEUSU_XEUXP_FK ON XEUXP_USUPE (
PEEMP_CODIGO ASC
)
go

ALTER TABLE FECCP_CABCOM
   ADD CONSTRAINT FK_FECCP_CA_FR_FECABC_FEFOP_FO FOREIGN KEY (FEFOP_CODIGO)
      REFERENCES FEFOP_FORPAG (FEFOP_CODIGO)
go

ALTER TABLE FECUB_CUEBAN
   ADD CONSTRAINT FK_FECUB_CU_FR_FEFORP_FEFOP_FO FOREIGN KEY (FEFOP_CODIGO)
      REFERENCES FEFOP_FORPAG (FEFOP_CODIGO)
go

ALTER TABLE FEDCO_DETCOM
   ADD CONSTRAINT FK_FEDCO_DE_FR_FEDETC_FECCP_CA FOREIGN KEY (FECFA_CODIGO)
      REFERENCES FECCP_CABCOM (FECFA_CODIGO)
go

ALTER TABLE FEPAG_PAGO
   ADD CONSTRAINT FK_FEPAG_PA_FR_FECUEB_FECUB_CU FOREIGN KEY (FECUB_CODIGO)
      REFERENCES FECUB_CUEBAN (FECUB_CODIGO)
go

ALTER TABLE GEEMPPRO_EMPPRO
   ADD CONSTRAINT FK_GEEMPPRO_GEEMPPRO__FEDCO_DE FOREIGN KEY (FEDCO_CODIGO)
      REFERENCES FEDCO_DETCOM (FEDCO_CODIGO)
go

ALTER TABLE GEEMPPRO_EMPPRO
   ADD CONSTRAINT FK_GEEMPPRO_GEEMPPRO__PEEMP_EM FOREIGN KEY (PEEMP_CODIGO)
      REFERENCES PEEMP_EMPLE (PEEMP_CODIGO)
go

ALTER TABLE GEEMPPRO_EMPPRO
   ADD CONSTRAINT FK_GEEMPPRO_GEEMPPRO__GEPROY_P FOREIGN KEY (GEPROY_CODIGO)
      REFERENCES GEPROY_PROY (GEPROY_CODIGO)
go

ALTER TABLE GEPROY_PROY
   ADD CONSTRAINT FK_GEPROY_P_PROYECTO__PEDEP_DE FOREIGN KEY (PEDEP_DEPAR)
      REFERENCES PEDEP_DEPAR (PEDEP_DEPAR)
go

ALTER TABLE PEASIG_ASIGNA
   ADD CONSTRAINT FK_PEASIG_A_PEASIG_AS_PECAR_CA FOREIGN KEY (PEDEP_DEPAR, PECAR_CODIGO)
      REFERENCES PECAR_CARGO (PEDEP_DEPAR, PECAR_CODIGO)
go

ALTER TABLE PEASIG_ASIGNA
   ADD CONSTRAINT FK_PEASIG_A_PEASIG_AS_PEEMP_EM FOREIGN KEY (PEEMP_CODIGO)
      REFERENCES PEEMP_EMPLE (PEEMP_CODIGO)
go

ALTER TABLE PECAR_CARGO
   ADD CONSTRAINT FK_PECAR_CA_PR_PECAR__PEDEP_DE FOREIGN KEY (PEDEP_DEPAR)
      REFERENCES PEDEP_DEPAR (PEDEP_DEPAR)
go

ALTER TABLE PEEMP_EMPLE
   ADD CONSTRAINT FK_PEEMP_EM_PR_PEEMP__PEEMP_EM FOREIGN KEY (PEE_PEEMP_CODIGO)
      REFERENCES PEEMP_EMPLE (PEEMP_CODIGO)
go

ALTER TABLE PEEMP_EMPLE
   ADD CONSTRAINT FK_PEEMP_EM_PR_PEESC__PEESC_ES FOREIGN KEY (PEESC_CODIGO)
      REFERENCES PEESC_ESTCIV (PEESC_CODIGO)
go

ALTER TABLE PEEMP_EMPLE
   ADD CONSTRAINT FK_PEEMP_EM_PR_PESEX__PESEX_SE FOREIGN KEY (PESEX_CODIGO)
      REFERENCES PESEX_SEXO (PESEX_CODIGO)
go

ALTER TABLE PEFAM_FAMILI
   ADD CONSTRAINT FK_PEFAM_FA_EMPLEADO__PEEMP_EM FOREIGN KEY (PEEMP_CODIGO)
      REFERENCES PEEMP_EMPLE (PEEMP_CODIGO)
go

ALTER TABLE PEFAM_FAMILI
   ADD CONSTRAINT FK_PEFAM_FA_PR_PESEX__PESEX_SE FOREIGN KEY (PESEX_CODIGO)
      REFERENCES PESEX_SEXO (PESEX_CODIGO)
go

ALTER TABLE XEOPC_OPCIO
   ADD CONSTRAINT FK_XEOPC_OP_XR_XESIS__XESIS_SI FOREIGN KEY (XESIS_CODIGO)
      REFERENCES XESIS_SISTE (XESIS_CODIGO)
go

ALTER TABLE XEOXP_OPCPE
   ADD CONSTRAINT FK_XEOXP_OP_XR_XEOPC__XEOPC_OP FOREIGN KEY (XEOPC_CODIGO)
      REFERENCES XEOPC_OPCIO (XEOPC_CODIGO)
go

ALTER TABLE XEOXP_OPCPE
   ADD CONSTRAINT FK_XEOXP_OP_XR_XEPER__XEPER_PE FOREIGN KEY (XEPER_CODIGO)
      REFERENCES XEPER_PERFI (XEPER_CODIGO)
go

ALTER TABLE XEUSU_USUAR
   ADD CONSTRAINT FK_XEUSU_US_XR_PEEMP__PEEMP_EM FOREIGN KEY (PEEMP_CODIGO)
      REFERENCES PEEMP_EMPLE (PEEMP_CODIGO)
go

ALTER TABLE XEUSU_USUAR
   ADD CONSTRAINT FK_XEUSU_US_XR_XEEST__XEEST_ES FOREIGN KEY (XEEST_CODIGO)
      REFERENCES XEEST_ESTAD (XEEST_CODIGO)
go

ALTER TABLE XEUXP_USUPE
   ADD CONSTRAINT FK_XEUXP_US_XR_XEPER__XEPER_PE FOREIGN KEY (XEPER_CODIGO)
      REFERENCES XEPER_PERFI (XEPER_CODIGO)
go

ALTER TABLE XEUXP_USUPE
   ADD CONSTRAINT FK_XEUXP_US_XR_XEUSU__XEUSU_US FOREIGN KEY (PEEMP_CODIGO)
      REFERENCES XEUSU_USUAR (PEEMP_CODIGO)
go

