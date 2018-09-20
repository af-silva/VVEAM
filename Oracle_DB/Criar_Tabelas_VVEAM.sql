/* ================================================================================
   Criar_Tabelas_VVEAM.sql
   Cria as tabelas necessarias para o armazenamento da informação da aplicação

   Aplicação              : VVEAM
   Data de Criacao        : 2012/06/16
   Data da Ultima Revisao : 2012/06/16
   
   ==============================================================================*/
 
 
/* *********************************************************************************
 Seccao 1 - Modulo Localizacao
 ********************************************************************************* */
 

/* ================================================================================
   Cria as tabelas responsaveis por implementar a Localizacao

   Modulo                 : Localizacao
   Dependencias           : N/A
  
   ==============================================================================*/


/* --------------------------------------------------------------------------------
  LOC_Localizacao (*LOCLOC*)
  Tabela que contem as localizacoes segundo a nomenclatura do INE
 --------------------------------------------------------------------------------*/
 
CREATE TABLE LOC_Localizacao
(
 Codigo    NUMBER       CONSTRAINT PK_Localizacao_LOCLOC PRIMARY KEY USING INDEX TABLESPACE VVEAM_INDICE,
 Distrito  NUMBER       CONSTRAINT NN_Distrito_LOCLOC NOT NULL,
 Concelho  NUMBER       CONSTRAINT NN_Concelho_LOCLOC NOT NULL,
 Freguesia NUMBER       CONSTRAINT NN_Freguesia_LOCLOC NOT NULL,
 Nome      VARCHAR2(60) CONSTRAINT NN_Nome_LOCLOC NOT NULL,
 Estado    CHAR(1)      CONSTRAINT NN_Estado_LOCLOC NOT NULL
                        CONSTRAINT CK_Estado_LOCLOC CHECK (Estado IN (0,1))
);


/* *********************************************************************************
 Seccao 2 - Modulo Instituicao
 ********************************************************************************* */

 
/* ================================================================================
   Cria as tabelas responsaveis por implementar a Instituicao

   Modulo                 : Gestao_Instituicoes
   Dependencias           : Localizacao
   
   ==============================================================================*/
   
 /* --------------------------------------------------------------------------------
  OCR_CODU(*OCRCOD*)
  Tabela que contem os loscais do codu
  NOTA: Esta tabela faz parte do modulo ocorrencia.
 -------------------------------------------------------------------------------*/
 
CREATE TABLE OCR_Codu
(
 Codigo NUMBER       CONSTRAINT PK_Codu_OCRCOD PRIMARY KEY USING INDEX TABLESPACE VVEAM_INDICE,
 Nome   VARCHAR2(60) CONSTRAINT NN_Nome_OCRCOD NOT NULL
                     CONSTRAINT UQ_Nome_OCRCOD UNIQUE USING INDEX TABLESPACE VVEAM_INDICE,
 Estado CHAR(1)      CONSTRAINT NN_Estado_OCRCOD NOT NULL
                     CONSTRAINT CK_Estado_OCRCOD CHECK (Estado IN (0,1))
);  
 
 
/* --------------------------------------------------------------------------------
  GI_Servico (*GISEV*)
  Tabela que contem os servicos
 -------------------------------------------------------------------------------*/   

CREATE TABLE GI_Servico
(
 Codigo NUMBER       CONSTRAINT PK_Servico_GISEV PRIMARY KEY USING INDEX TABLESPACE VVEAM_INDICE,
 Sigla  VARCHAR2(20) CONSTRAINT NN_Sigla_GISEV NOT NULL
                     CONSTRAINT UQ_Sigla_GISEV UNIQUE USING INDEX TABLESPACE VVEAM_INDICE,
 Nome   VARCHAR2(60) CONSTRAINT NN_Nome_GISEV NOT NULL
                     CONSTRAINT UQ_Nome_GISEV UNIQUE USING INDEX TABLESPACE VVEAM_INDICE,
 Estado CHAR(1)      CONSTRAINT NN_Estado_GISEV NOT NULL
                     CONSTRAINT CK_Estado_GISEV CHECK (Estado IN (0,1))
);


/* --------------------------------------------------------------------------------
  GI_Instituicao (*GIINS*)
  Tabela que contem as instituicoes
 -------------------------------------------------------------------------------*/

CREATE TABLE GI_Instituicao
(
 Codigo               NUMBER        CONSTRAINT PK_Instituicao_GIINS PRIMARY KEY USING INDEX TABLESPACE VVEAM_INDICE,
 Codu                 NUMBER        CONSTRAINT NN_Codu_GIINS NOT NULL
                                    CONSTRAINT FK_Codu_GIINS REFERENCES OCR_Codu (Codigo),
 Sigla                VARCHAR2(20)  CONSTRAINT NN_Sigla_GIINS NOT NULL
                                    CONSTRAINT UQ_Sigla_GIINS UNIQUE USING INDEX TABLESPACE VVEAM_INDICE,
 Nome                 VARCHAR2(120) CONSTRAINT NN_Nome_GIINS NOT NULL
                                    CONSTRAINT UQ_Nome_GIINS UNIQUE USING INDEX TABLESPACE VVEAM_INDICE,
 Numero_Contacto      NUMBER        CONSTRAINT NN_Numero_Contacto_GIINS NOT NULL
                                    CONSTRAINT UQ_Numero_Contacto_GIINS UNIQUE USING INDEX TABLESPACE VVEAM_INDICE,
 Estado               CHAR(1)       CONSTRAINT NN_Estado_GIINS NOT NULL
                                    CONSTRAINT CK_Estado_GIINS CHECK (Estado IN (0,1))
);


/* *********************************************************************************
 Seccao 3 - Modulo Autenticacao
 ********************************************************************************* */
 
 
/* ================================================================================
   Cria as tabelas responsaveis por implementar a autenticacao

   Modulo                 : Autenticacao
   Dependencias           : ASP_NET, Gestao_Instituicao
   
   ==============================================================================*/

   
/* --------------------------------------------------------------------------------
  AUT_Utilizador (*AUTUTI*)
  Tabela de Utilizadores 
 -------------------------------------------------------------------------------*/
 /*
CREATE TABLE AUT_Utilizador
(
 Codigo      NUMBER        CONSTRAINT PK_Utilizador_AUTUTI PRIMARY KEY USING INDEX TABLESPACE VVEAM_INDICE,
 Instituicao NUMBER        CONSTRAINT NN_Instituicao_AUTUTI NOT NULL
                           CONSTRAINT FK_Instituicao_AUTUTI REFERENCES GI_Instituicao (Codigo),
 Aspnet_User RAW (16)      CONSTRAINT FK_Aspnet_User_AUTUTI REFERENCES ora_aspnet_Membership (UserId)
                           CONSTRAINT NN_Aspnet_User_AUTUTI NOT NULL,
 Estado      CHAR(1)       CONSTRAINT NN_Estado_AUTUTI NOT NULL
                           CONSTRAINT CK_Estado_AUTUTI CHECK (Estado IN (0,1))
 );
*/
 
/* *********************************************************************************
 Seccao 4 - Modulo Ocorrencia
 ********************************************************************************* */

 
/* ================================================================================
   Cria as tabelas responsaveis por implementar a Ocorrencia

   Modulo                 : Ocorrencia
   Dependencias           : Gestao_Instituicoes, Localizacao, Autenticacao
   
   ==============================================================================*/

 
/* --------------------------------------------------------------------------------
  OCR_Genero (*OCRGEN*)
  Guarda a informação sobre genero do doente (Masculino, Femenino, ...)
 -------------------------------------------------------------------------------*/

CREATE TABLE OCR_Genero
(
 Codigo NUMBER       CONSTRAINT PK_Genero_OCRGEN PRIMARY KEY USING INDEX TABLESPACE VVEAM_INDICE,
 Nome   VARCHAR2(20) CONSTRAINT NN_Nome_OCRGEN NOT NULL
                     CONSTRAINT UQ_Nome_OCRGEN UNIQUE USING INDEX TABLESPACE VVEAM_INDICE
);


/* --------------------------------------------------------------------------------
  OCR_Sintoma (*OCRSIN*)
  Tabela que contem os sintomas que o doente pode apresentar
 -------------------------------------------------------------------------------*/

CREATE TABLE OCR_Sintoma
(
 Codigo NUMBER      CONSTRAINT PK_Sintoma_OCRSIN PRIMARY KEY USING INDEX TABLESPACE VVEAM_INDICE,
 Nome   VARCHAR(60) CONSTRAINT NN_Nome_OCRSIN NOT NULL
                    CONSTRAINT UQ_Nome_OCRSIN UNIQUE USING INDEX TABLESPACE VVEAM_INDICE,
 Estado CHAR(1)     CONSTRAINT NN_Estado_OCRSIN NOT NULL
                    CONSTRAINT CK_Estado_OCRSIN CHECK (Estado IN (0,1))
);
 
 
/* --------------------------------------------------------------------------------
  OCR_Classe_Killip (*OCRCKP*)
  Tabela que contem as classes killip
 -------------------------------------------------------------------------------*/
 
CREATE TABLE OCR_Classe_Killip
( 
 Codigo NUMBER       CONSTRAINT PK_Classe_Killip_OCRCKP PRIMARY KEY USING INDEX TABLESPACE VVEAM_INDICE,
 Nome   VARCHAR2(60) CONSTRAINT NN_Nome_OCRCKP NOT NULL
                     CONSTRAINT UQ_Nome_OCRCKP UNIQUE USING INDEX TABLESPACE VVEAM_INDICE,
 Estado CHAR(1)      CONSTRAINT NN_Estado_OCRKP NOT NULL
                     CONSTRAINT CK_Estado_OCRKP CHECK (Estado IN (0,1))
); 
 

/* --------------------------------------------------------------------------------
  OCR_Criterio (*OCRCRI*)
  Tabela que contem os criterios
 -------------------------------------------------------------------------------*/

CREATE TABLE OCR_Criterio 
(
 Codigo NUMBER       CONSTRAINT PK_Criterio_OCRCRI PRIMARY KEY USING INDEX TABLESPACE VVEAM_INDICE,
 Nome   VARCHAR2(60) CONSTRAINT NN_Nome_OCRCRI NOT NULL
                     CONSTRAINT UQ_Nome_OCRCRI UNIQUE USING INDEX TABLESPACE VVEAM_INDICE,
 Estado CHAR(1)      CONSTRAINT NN_Estado_OCRCRI NOT NULL
                     CONSTRAINT CK_Estado_OCRCRI CHECK (Estado IN (0,1))
);


/* --------------------------------------------------------------------------------
  OCR_Risco_Hemorragia (*OCRRHE*)
  Tabela que contem os niveis de risco de Hemorragia
 -------------------------------------------------------------------------------*/
 
CREATE TABLE OCR_Risco_Hemorragia
(
 Codigo NUMBER       CONSTRAINT PK_Risco_Hemorragia_OCRRHE PRIMARY KEY USING INDEX TABLESPACE VVEAM_INDICE,
 Nome   VARCHAR2(60) CONSTRAINT NN_Nome_OCRRHE NOT NULL
                     CONSTRAINT UQ_Nome_OCRRHE UNIQUE USING INDEX TABLESPACE VVEAM_INDICE,
 Estado CHAR(1)      CONSTRAINT NN_Estado_OCRRHE NOT NULL
                     CONSTRAINT CK_Estado_OCRRHE CHECK (Estado IN (0,1))					 
);


/* --------------------------------------------------------------------------------
  OCR_Local_Contacto (*OCRLC*)
  Tabela que contem os loscais de contacto mais provaveis
 -------------------------------------------------------------------------------*/

CREATE TABLE OCR_Local_Contacto
(
 Codigo NUMBER       CONSTRAINT PK_Local_Contacto_OCRLC PRIMARY KEY USING INDEX TABLESPACE VVEAM_INDICE,
 Nome   VARCHAR2(60) CONSTRAINT NN_Nome_OCRLC NOT NULL
                     CONSTRAINT UQ_Nome_OCRLC UNIQUE USING INDEX TABLESPACE VVEAM_INDICE,
 Estado CHAR(1)      CONSTRAINT NN_Estado_OCRLC NOT NULL
                     CONSTRAINT CK_Estado_OCRLC CHECK (Estado IN (0,1))					 
);


/* --------------------------------------------------------------------------------
  OCR_Tipo_Veiculo(*OCRTVL*)
  Tabela que contem os tipos de veiculos disponiveis
 -------------------------------------------------------------------------------*/

CREATE TABLE OCR_Tipo_Veiculo
(
 Codigo NUMBER       CONSTRAINT PK_Tipo_Veiculo_OCRTVL PRIMARY KEY USING INDEX TABLESPACE VVEAM_INDICE,
 Nome   VARCHAR2(60) CONSTRAINT NN_Nome_OCRTVL NOT NULL
                     CONSTRAINT UQ_Nome_OCRTVL UNIQUE USING INDEX TABLESPACE VVEAM_INDICE,
 Sigla  VARCHAR(20)  CONSTRAINT NN_Sigla_OCRTVL NOT NULL
                     CONSTRAINT UQ_Sigla_OCRTVL UNIQUE USING INDEX TABLESPACE VVEAM_INDICE,
 Estado CHAR(1)      CONSTRAINT NN_Estado_OCRTVL NOT NULL
                     CONSTRAINT CK_Estado_OCRTVL CHECK (Estado IN (0,1))	
);


/* --------------------------------------------------------------------------------
  OCR_Razao(*OCRRAZ*)
  Tabela que contem as possiveis razoes de recusa do doente
 -------------------------------------------------------------------------------*/
 
CREATE TABLE OCR_Razao
(
 Codigo NUMBER       CONSTRAINT PK_Razao_OCRRAZ PRIMARY KEY USING INDEX TABLESPACE VVEAM_INDICE,
 Nome   VARCHAR2(60) CONSTRAINT NN_Nome_OCRRAZ NOT NULL
                     CONSTRAINT UQ_Nome_OCRRAZ UNIQUE USING INDEX TABLESPACE VVEAM_INDICE,
 Estado CHAR(1)      CONSTRAINT NN_Estado_OCRRAZ NOT NULL
                     CONSTRAINT CK_Estado_OCRRAZ CHECK (Estado IN (0,1))
);


/* --------------------------------------------------------------------------------
  OCR_Tipo_Tripulante(*OCRTTR*)
  Tabela que contem os tipos de tripulantes
 -------------------------------------------------------------------------------*/

CREATE TABLE OCR_Tipo_Tripulante
(
 Codigo NUMBER        CONSTRAINT PK_Tipo_Tripulante_OCRTTR PRIMARY KEY USING INDEX TABLESPACE VVEAM_INDICE,
 Nome   VARCHAR2(120) CONSTRAINT NN_Nome_OCRTTR NOT NULL
                      CONSTRAINT UQ_Nome_OCRTTR UNIQUE USING INDEX TABLESPACE VVEAM_INDICE,
 Estado CHAR(1)       CONSTRAINT NN_Estado_OCRTTR NOT NULL
                      CONSTRAINT CK_Estado_OCRTTR CHECK (Estado IN (0,1))
);


/* --------------------------------------------------------------------------------
  OCR_Tripulante(*OCRTRI*)
  Tabela que contem os tripulantes
 -------------------------------------------------------------------------------*/

CREATE TABLE OCR_Tripulante
(
 Codigo          NUMBER        CONSTRAINT PK_Tripulante_OCRTRI PRIMARY KEY USING INDEX TABLESPACE VVEAM_INDICE,
 Tipo_Tripulante NUMBER        CONSTRAINT NN_Tipo_Tripulante_OCRTRI NOT NULL
                               CONSTRAINT FK_Tipo_Tripulante_OCRTRI REFERENCES OCR_Tipo_Tripulante (Codigo),
 Codu            NUMBER        CONSTRAINT NN_Codu_AUTUTI NOT NULL
                               CONSTRAINT FK_Codu_AUTUTI REFERENCES OCR_Codu (Codigo),
 Numero_Pessoal  NUMBER        CONSTRAINT NN_Numero_Pessoal_OCRTRI NOT NULL
                               CONSTRAINT UQ_Numero_Pessoal_OCRTRI UNIQUE USING INDEX TABLESPACE VVEAM_INDICE,
 Nome            VARCHAR2(120) CONSTRAINT NN_Nome_OCRTRI NOT NULL,
 Estado          CHAR(1)       CONSTRAINT NN_Estado_OCRTRI NOT NULL
                               CONSTRAINT CK_Estado_OCRTRI CHECK (Estado IN (0,1))
);


/* --------------------------------------------------------------------------------
  OCR_Veiculo(*OCRVEI*)
  Tabela que contem os Veiculos disponiveis
 -------------------------------------------------------------------------------*/

CREATE TABLE OCR_Veiculo
(
 Codigo       NUMBER        CONSTRAINT PK_Veiculo_OCRVEI PRIMARY KEY USING INDEX TABLESPACE VVEAM_INDICE,
 Tipo_Veiculo NUMBER        CONSTRAINT NN_Tipo_Veiculo_OCRVEI NOT NULL
                            CONSTRAINT FK_Tipo_Veiculo_OCRVEI REFERENCES OCR_Tipo_Veiculo (Codigo),
 Codu         NUMBER        CONSTRAINT NN_Codu_OCRVEI NOT NULL
                            CONSTRAINT FK_Codu_OCRVEI REFERENCES OCR_Codu (Codigo),
 Nome         VARCHAR2(120) CONSTRAINT NN_Nome_OCRVEI NOT NULL,
 Estado       CHAR(1)       CONSTRAINT NN_Estado_OCRVEI NOT NULL
                            CONSTRAINT CK_Estado_OCRVEI CHECK (Estado IN (0,1))
);


/* --------------------------------------------------------------------------------
  OCR_Ocorrencia(*OCROCR*)
  Tabela que contem os dados referentes a ocorrencia (tabela principal)
 -------------------------------------------------------------------------------*/

CREATE TABLE OCR_Ocorrencia
(
 Codigo                NUMBER        CONSTRAINT PK_Ocorrencia_OCROCR PRIMARY KEY USING INDEX TABLESPACE VVEAM_INDICE,
 Data_Sistema          DATE          CONSTRAINT NN_Data_Sistema_OCROCR NOT NULL,
 Genero                NUMBER        CONSTRAINT NN_Genero_OCROCR NOT NULL
                                     CONSTRAINT FK_Genero_OCROCR REFERENCES OCR_Genero (Codigo),
 Codu                  NUMBER        CONSTRAINT NN_Codu_OCROCR NOT NULL
                                     CONSTRAINT FK_Codu_OCROCR REFERENCES OCR_Codu (Codigo),
 Localizacao           NUMBER        CONSTRAINT NN_Localizacao_OCROCR NOT NULL
                                     CONSTRAINT FK_Localizacao_OCROCR REFERENCES LOC_Localizacao (Codigo),
 Local_Contacto        NUMBER        CONSTRAINT NN_Local_Contacto_OCROCR NOT NULL
                                     CONSTRAINT FK_Local_Contacto_OCROCR REFERENCES OCR_Local_Contacto (Codigo),
 Veiculo               NUMBER        CONSTRAINT NN_Veiculo_OCROCR NOT NULL
                                     CONSTRAINT FK_Veiculo_OCROCR REFERENCES OCR_Veiculo (Codigo),
 Aspnet_User           RAW (16)      CONSTRAINT NN_Aspnet_User_OCROCR NOT NULL
                                     CONSTRAINT FK_Aspnet_User_OCROCR REFERENCES ora_aspnet_Users (UserId),
 Ficha_CODU            NUMBER        CONSTRAINT NN_Ficha_CODU_OCROCR NOT NULL
                                     CONSTRAINT UQ_Ficha_CODU_OCROCR UNIQUE USING INDEX TABLESPACE VVEAM_INDICE,
 ECG_Realizado         CHAR(1)       CONSTRAINT NN_ECG_Realizado_OCRECG NOT NULL,
                                     CONSTRAINT CK_ECG_Realizado_OCRECG CHECK (ECG_Realizado IN (0,1)),
 Data_Ocorrencia       DATE          CONSTRAINT NN_Data_Ocorrencia_OCROCR NOT NULL,
 Instante_Contacto_112 DATE          CONSTRAINT NN_Inst_Contacto_112_OCROCR NOT NULL,
 Idade                 NUMBER        CONSTRAINT NN_Idade_OCROCR NOT NULL,
 Data_Nascimento       DATE,         
 Inicio_Sintomas       DATE          CONSTRAINT NN_Inicio_Sintomas_OCROCR NOT NULL,
 Estado	               CHAR(1)       CONSTRAINT NN_Estado_OCRECG NOT NULL,
                                     CONSTRAINT CK_Estado_OCRECG CHECK (ECG_Realizado IN (0,1)),
 Observacao            VARCHAR2(255)
);


/* --------------------------------------------------------------------------------
  OCR_Hospital(*OCRHOP*)
  Tabela que contem os dados referentes a admissao do doente
 -------------------------------------------------------------------------------*/

CREATE TABLE OCR_Hospital
(
 Ocorrencia        NUMBER CONSTRAINT PK_OCR_Hospital PRIMARY KEY USING INDEX TABLESPACE VVEAM_INDICE
                          CONSTRAINT FK_Ocorrencia_OCRHOP REFERENCES OCR_Ocorrencia (Codigo),
 Instituicao       NUMBER CONSTRAINT NN_Instituicao_OCRHOP NOT NULL
                          CONSTRAINT FK_Instituicao_OCRHOP REFERENCES GI_Instituicao (Codigo),
 Servico           NUMBER CONSTRAINT NN_Servico_OCRHOP NOT NULL
                          CONSTRAINT FK_Servico_OCRHOP REFERENCES GI_Servico (Codigo),
 Instante_Admissao DATE   CONSTRAINT NN_Hora_Admissao_OCRHOP NOT NULL,
 Numero_Episodio   NUMBER CONSTRAINT NN_Numero_Episodio_OCRHOP NOT NULL
                          CONSTRAINT UQ_Numero_Episodio_OCRHOP UNIQUE USING INDEX TABLESPACE VVEAM_INDICE
);


/* --------------------------------------------------------------------------------
  OCR_Decisao(*OCRPD*)
  Tabela que contem os dados referentes aos pedidos
 -------------------------------------------------------------------------------*/
CREATE TABLE OCR_Pedido
(
 Codigo            NUMBER        CONSTRAINT PK_OCR_Pedido_OCRPD PRIMARY KEY USING INDEX TABLESPACE VVEAM_INDICE,
 Aspnet_User       RAW (16)      CONSTRAINT FK_Aspnet_User_OCRPD REFERENCES ora_aspnet_Users (UserId),
 Ocorrencia        NUMBER        CONSTRAINT FK_Ocorrencia_OCRPD REFERENCES OCR_Ocorrencia (Codigo)
                                 CONSTRAINT NN_Ocorrencia_OCRPD NOT NULL,
 Instituicao       NUMBER        CONSTRAINT FK_Instituicao_OCRPD REFERENCES GI_Instituicao (Codigo)
                                 CONSTRAINT NN_Instituicao_OCRPD NOT NULL,
 Instante_Pedido   DATE          CONSTRAINT NN_Instante_Pedido_OCRPD NOT NULL,
 Decisao           CHAR(1)       CONSTRAINT CK_Decisao_OCRPD CHECK (Decisao IN (0,1,2)),
 Razao             NUMBER        CONSTRAINT FK_Razao_OCRPD REFERENCES OCR_Razao (Codigo),
 Instante_Resposta DATE,
 Observacao        VARCHAR2(255)    
);


/* --------------------------------------------------------------------------------
  OCR_ECG (*OCRECG*)
  Tabela que contem informacao do ECG
 -------------------------------------------------------------------------------*/

CREATE TABLE OCR_ECG
(
 Ocorrencia           NUMBER        CONSTRAINT PK_OCR_ECG PRIMARY KEY USING INDEX TABLESPACE VVEAM_INDICE
                                    CONSTRAINT FK_Ocorrencia_OCRECG REFERENCES OCR_Ocorrencia (Codigo),
 Aspnet_User          RAW (16)      CONSTRAINT FK_Aspnet_User_OCRECG REFERENCES ora_aspnet_Users (UserId)
                                    CONSTRAINT NN_Aspnet_User_OCRECG NOT NULL,                                    
 Instante_Realizado   DATE          CONSTRAINT NN_Data_Realizado NOT NULL,
 Caminho_Ficheiro     VARCHAR2(255) CONSTRAINT UQ_Caminho_Ficheiro_OCRECG UNIQUE USING INDEX TABLESPACE VVEAM_INDICE,
 Normal               CHAR(1)       CONSTRAINT NN_Normal_OCRECG NOT NULL
                                    CONSTRAINT CK_Normal_OCRECG CHECK (Normal IN (0,1)),
 Deriv_Ant_Supra_St   CHAR(1)       CONSTRAINT NN_Deriv_Ant_Supra_St_OCRECG NOT NULL
                                    CONSTRAINT CK_Deriv_And_Supra_St_OCRECG CHECK (Deriv_Ant_Supra_St IN (0,1)),
 Deriv_Inf_Supra_St   CHAR(1)       CONSTRAINT NN_Deriv_Inf_Supra_St_OCRECG NOT NULL,
                                    CONSTRAINT CK_Deriv_Inf_Supra_St_OCRECG CHECK (Deriv_Inf_Supra_St IN (0,1)),
 Deriv_Lat_Supra_St   CHAR(1)       CONSTRAINT NN_Deriv_Lat_Supra_St_OCRECG NOT NULL,
                                    CONSTRAINT CK_Deriv_Lat_Supra_St_OCRECG CHECK (Deriv_Lat_Supra_St IN (0,1)),
 Deriv_Ant_Infra_St   CHAR(1)       CONSTRAINT NN_Deriv_Ant_Infra_St_OCRECG NOT NULL,
                                    CONSTRAINT CK_Deriv_Ant_Infra_St_OCRECG CHECK (Deriv_Ant_Infra_St IN (0,1)),
 Deriv_Inf_Infra_St   CHAR(1)       CONSTRAINT NN_Deriv_Inf_Infra_St_OCRECG NOT NULL,
                                    CONSTRAINT CK_Deriv_Inf_Infra_St_OCRECG CHECK (Deriv_Inf_Infra_St IN (0,1)),
 Deriv_Lat_Infra_St   CHAR(1)       CONSTRAINT NN_Deriv_Lat_Infra_St_OCRECG NOT NULL,
                                    CONSTRAINT CK_Deriv_Lat_Infra_St_OCRECG CHECK (Deriv_Lat_Infra_St IN (0,1)),
 Deriv_Ant_Outros_Alt CHAR(1)       CONSTRAINT NN_Deriv_Ant_Outros_Alt_OCRECG NOT NULL,
                                    CONSTRAINT CK_Deriv_Ant_Outros_Alt_OCRECG CHECK (Deriv_Ant_Outros_Alt IN (0,1)),
 Deriv_Inf_Outros_Alt CHAR(1)       CONSTRAINT NN_Deriv_Inf_Outros_Alt_OCRECG NOT NULL,
                                    CONSTRAINT CK_Deriv_Inf_Outros_Alt_OCRECG CHECK (Deriv_Inf_Outros_Alt IN (0,1)),
 Deriv_Lat_Outros_Alt CHAR(1)       CONSTRAINT NN_Deriv_Lat_Outros_Alt_OCRECG NOT NULL
                                    CONSTRAINT CK_Deriv_Lat_Outros_Alt_OCRECG CHECK (Deriv_Lat_Outros_Alt IN (0,1))
);


/* --------------------------------------------------------------------------------
  OCR_Local(*OCRLOC*)
  Tabela que contem os dados do doente recolhidos no local
 -------------------------------------------------------------------------------*/

CREATE TABLE OCR_Local
(
 Ocorrencia               NUMBER        CONSTRAINT PK_OCR_Local PRIMARY KEY USING INDEX TABLESPACE VVEAM_INDICE
                                        CONSTRAINT FK_Ocorrencia_OCRLOC REFERENCES OCR_Ocorrencia (Codigo),
 Risco_Hemorragia         NUMBER        CONSTRAINT NN_Risco_Hemorragia_OCRLOC NOT NULL
                                        CONSTRAINT FK_Risco_Hemorragia_OCRLOC REFERENCES OCR_Risco_Hemorragia (Codigo),
 Class_Killip             NUMBER        CONSTRAINT NN_Class_Killip_OCRLOC NOT NULL
                                        CONSTRAINT FK_Class_Killip_OCRLOC REFERENCES OCR_Classe_Killip (Codigo),
 Aspnet_User              RAW (16)      CONSTRAINT NN_Aspnet_User_OCRLOC NOT NULL
                                        CONSTRAINT FK_Aspnet_User_OCRLOC REFERENCES ora_aspnet_Users (UserId),
 Sistolica                NUMBER        CONSTRAINT NN_Sistolica_OCRLOC NOT NULL, 
 Diastolica               NUMBER        CONSTRAINT NN_Diastolica_OCRLOC NOT NULL,
 Instante_Contacto_Fisico DATE          CONSTRAINT NN_Contacto_Fisico_OCRLOC NOT NULL,
 Observacao               VARCHAR2(255)  
);


/* --------------------------------------------------------------------------------
  OCR_Ocorrencia_Criterio (*OCROC*)
  Tabela que relaciona a tabela OCR_Ocorrencia com OCR_Criterio
 -------------------------------------------------------------------------------*/

CREATE TABLE OCR_Ocorrencia_Criterio
(
 Ocorrencia NUMBER CONSTRAINT NN_Ocorrencia_OCROC NOT NULL
                   CONSTRAINT FK_Ocorrencia_OCROC REFERENCES OCR_Ocorrencia (Codigo),
 Criterio   NUMBER CONSTRAINT NN_Criterio_OCROC NOT NULL
                   CONSTRAINT FK_Criterio_OCROC REFERENCES OCR_Criterio (Codigo)
);

ALTER TABLE OCR_Ocorrencia_Criterio ADD CONSTRAINT PK_OCR_Ocorrencia_Criterio PRIMARY KEY (Ocorrencia, Criterio) USING INDEX TABLESPACE VVEAM_INDICE;

/* --------------------------------------------------------------------------------
  OCR_Ocorrencia_Sintoma (*OCROS*)
   Tabela que relaciona a tabela OCR_Ocorrencia com OCR_Sintoma
 -------------------------------------------------------------------------------*/
 
CREATE TABLE OCR_Ocorrencia_Sintoma
(
 Ocorrencia NUMBER CONSTRAINT NN_Ocorrencia_OCROS NOT NULL
                   CONSTRAINT FK_Ocorrencia_OCROS REFERENCES OCR_Ocorrencia (Codigo),
 Sintoma    NUMBER CONSTRAINT NN_Sintoma_OCROS NOT NULL
                   CONSTRAINT FK_Sintoma_OCROS REFERENCES OCR_Sintoma (Codigo)
);

ALTER TABLE OCR_Ocorrencia_Sintoma ADD CONSTRAINT PK_OCR_Ocorrencia_Sintoma PRIMARY KEY (Ocorrencia, Sintoma) USING INDEX TABLESPACE VVEAM_INDICE;

/* --------------------------------------------------------------------------------
  OCR_Tripulante_Ocorrencia (*OCRTO*)
   Tabela que relaciona a tabela OCR_Tripulante com OCR_Ocorrencia
 -------------------------------------------------------------------------------*/
 
CREATE TABLE OCR_Tripulante_Ocorrencia
(
 Tripulante NUMBER CONSTRAINT NN_Tripulante_OCRTO NOT NULL
                   CONSTRAINT FK_Tripulante_OCRTO REFERENCES OCR_Tripulante (Codigo),
 Ocorrencia NUMBER CONSTRAINT NN_Ocorrencia_OCRTO NOT NULL
                   CONSTRAINT FK_Ocorrencia_OCRTO REFERENCES OCR_Ocorrencia (Codigo)
);

ALTER TABLE OCR_Tripulante_Ocorrencia ADD CONSTRAINT PK_OCR_Tripulante_Ocorrencia PRIMARY KEY (Tripulante, Ocorrencia) USING INDEX TABLESPACE VVEAM_INDICE;
