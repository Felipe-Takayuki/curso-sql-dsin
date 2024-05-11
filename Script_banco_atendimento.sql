create database if not exists atendimento;

use  atendimento;

CREATE TABLE CDCLIENTE (
    CDCLICODIGO    INTEGER NOT NULL,
    CDCLINOME      VARCHAR(80) NOT NULL,
    CDCLIENDERECO  VARCHAR(80),
    CDCLINUMERO    VARCHAR(6),
    CDCLICEP       VARCHAR(12) NOT NULL,
    CDCLIBAIRRO    VARCHAR(20),
    CDCLICIDADE    VARCHAR(60) NOT NULL,
    CDCLIUF        CHAR(2),
    CDCLIDATANASCIMENTO  DATE,
    CDCLISEXO      CHAR(1),
    CDCLIATIVO     CHAR(1)
);



CREATE TABLE CDFUNCIONARIO (
    CDFCODIGO    INTEGER NOT NULL,
    CDFNOME      VARCHAR(80) NOT NULL,
    CDFENDERECO  VARCHAR(80),
    CDFNUMERO    VARCHAR(6),
    CDFCEP       VARCHAR(12) NOT NULL,
    CDFBAIRRO    VARCHAR(20),
    CDFCIDADE    VARCHAR(60),
    CDFUF        CHAR(2),
    CDFDATANASCIMENTO  DATE,
    CDFSEXO      CHAR(1) NOT NULL
);

CREATE TABLE CDESCOLA (
    CDECODIGO     INTEGER NOT NULL,
    CDEDESCRICAO  VARCHAR(50) NOT NULL
) ;



CREATE TABLE CDDEPENDENTE (
    CDDRESPONSAVEL  INTEGER NOT NULL,
    CDDNOME      VARCHAR(80) NOT NULL,
    CDDSEXO      CHAR(1) NOT NULL,
    CDDDATANASCIMENTO  DATE,
    CDDESCOLA    INTEGER
);

/*
CREATE TABLE CDGENERO (
CDGENCODIGO INTEGER NOT NULL,
CDGENDESCRICAO VARCHAR(80) NOT NULL
);
*/

CREATE TABLE LCATENDIMENTO (
    LCACODIGO         INTEGER NOT NULL,
    LCAFUNCIONARIO    INTEGER NOT NULL,
    LCACLIENTE        INTEGER NOT NULL,
    LCADATAHORA       TIMESTAMP NOT NULL,
    LCAVALOR          NUMERIC(9,2) NOT NULL
);

ALTER TABLE CDCLIENTE ADD CONSTRAINT PK_CDCLIENTE PRIMARY KEY (CDCLICODIGO);
ALTER TABLE CDFUNCIONARIO ADD CONSTRAINT PK_CDFUNCIONARIO PRIMARY KEY (CDFCODIGO);
ALTER TABLE CDESCOLA ADD CONSTRAINT PK_CDESCOLA PRIMARY KEY (CDECODIGO);

ALTER TABLE LCATENDIMENTO ADD CONSTRAINT FK_LCATENDIMENTO_CLIENTE FOREIGN KEY (LCACLIENTE) REFERENCES CDCLIENTE (CDCLICODIGO);
ALTER TABLE LCATENDIMENTO ADD CONSTRAINT FK_LCATENDIMENTO_FUNCIONARIO FOREIGN KEY (LCAFUNCIONARIO) REFERENCES CDFUNCIONARIO (CDFCODIGO);



ALTER TABLE CDDEPENDENTE ADD CONSTRAINT FK_CDDEPENDENTE_ESCOLA FOREIGN KEY (CDDESCOLA) REFERENCES CDESCOLA (CDECODIGO);
ALTER TABLE CDDEPENDENTE ADD CONSTRAINT FK_CDDEPENDENTE_FUNCIONARIO FOREIGN KEY (CDDRESPONSAVEL) REFERENCES CDFUNCIONARIO (CDFCODIGO)