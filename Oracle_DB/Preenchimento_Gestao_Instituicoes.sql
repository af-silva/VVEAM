 /* ================================================================================
   Preenchimento_Gestao_Instituicoes.sql
   
   Aplicacao              : VVEAM
   Modulo                 : Gestao_Instituicao
   Data de Criacao        : 2012/07/02
   Data da Ultima Revisao : 2012/06/02
   
   ==============================================================================*/
 
 /* ------------------------------------------------------------------------------
    GI_Servico
    Preenchimento da tabela GI_Servico
    ------------------------------------------------------------------------------*/

 INSERT INTO GI_Servico (Sigla, Nome, Estado) VALUES ('UCIC','Unidade de Cuidados Intensivos Coron�rios','1');
 INSERT INTO GI_Servico (Sigla, Nome, Estado) VALUES ('Cardiologia','Servi�o de Cardiologia','1');
 INSERT INTO GI_Servico (Sigla, Nome, Estado) VALUES ('CCT','Servi�o de Cirurgia C�rdio-Tor�cica ','1');
 INSERT INTO GI_Servico (Sigla, Nome, Estado) VALUES ('Outro','Outros Servi�os','1');

 
/* ------------------------------------------------------------------------------
   GI_Instituicao
   Preenchimento da tabela GI_Instituicao
   ------------------------------------------------------------------------------*/
   
 INSERT INTO GI_Instituicao (Codu,Sigla, Nome, Numero_Contacto,Estado) VALUES (2,'HUC','Hospitais da Universidade de Coimbra, EPE',212125431,'1');
 INSERT INTO GI_Instituicao (Codu,Sigla, Nome, Numero_Contacto,Estado) VALUES (1,'HB','Hospital Braga',212096226,'1');
 INSERT INTO GI_Instituicao (Codu,Sigla, Nome, Numero_Contacto,Estado) VALUES (4,'HF','Hospital de Faro, EPE',212067021,'1');
 INSERT INTO GI_Instituicao (Codu,Sigla, Nome, Numero_Contacto,Estado) VALUES (3,'HSC','Hospital de Santa Cruz',212037816,'1');
 INSERT INTO GI_Instituicao (Codu,Sigla, Nome, Numero_Contacto,Estado) VALUES (3,'HSM','Hospital de Santa Maria',212008611,'1');
 INSERT INTO GI_Instituicao (Codu,Sigla, Nome, Numero_Contacto,Estado) VALUES (3,'HSMR','Hospital de Santa Marta',211979406,'1');
 INSERT INTO GI_Instituicao (Codu,Sigla, Nome, Numero_Contacto,Estado) VALUES (3,'HSB','Hospital de S�o Bernardo',211950201,'1');
 INSERT INTO GI_Instituicao (Codu,Sigla, Nome, Numero_Contacto,Estado) VALUES (1,'HSJ','Hospital de S�o Jo�o, EPE',211920996,'1');
 INSERT INTO GI_Instituicao (Codu,Sigla, Nome, Numero_Contacto,Estado) VALUES (1,'HSPVR','Hospital de S�o Pedro de Vila Real',211891791,'1');
 INSERT INTO GI_Instituicao (Codu,Sigla, Nome, Numero_Contacto,Estado) VALUES (2,'HST','Hospital de S�o Teot�nio, EPE',211862586,'1');
 INSERT INTO GI_Instituicao (Codu,Sigla, Nome, Numero_Contacto,Estado) VALUES (3,'HES','Hospital do Esp�rito Santo, EPE',211833381,'1');
 INSERT INTO GI_Instituicao (Codu,Sigla, Nome, Numero_Contacto,Estado) VALUES (3,'HDFF','Hospital Doutor Fernando da Fonseca',211804176,'1');
 INSERT INTO GI_Instituicao (Codu,Sigla, Nome, Numero_Contacto,Estado) VALUES (1,'HESS','Hospital Eduardo Santos Silva',211774971,'1');
 INSERT INTO GI_Instituicao (Codu,Sigla, Nome, Numero_Contacto,Estado) VALUES (3,'HGO','Hospital Garcia de Orta, EPE',211745766,'1');
 INSERT INTO GI_Instituicao (Codu,Sigla, Nome, Numero_Contacto,Estado) VALUES (1,'HGSA','Hospital Geral de Santo Ant�nio',211716561,'1');
 INSERT INTO GI_Instituicao (Codu,Sigla, Nome, Numero_Contacto,Estado) VALUES (2,'HGC','Hospital Geral dos Cov�es',211687356,'1');
 INSERT INTO GI_Instituicao (Codu,Sigla, Nome, Numero_Contacto,Estado) VALUES (1,'HPA','Hospital Padre Am�rico',211658151,'1');
