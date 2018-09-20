/* ================================================================================
   Criar_TS_USER_VVEAM.sql
   Cria os TABLESAPCE Default e o TABLESPACE para os Indices
   Cria o utilizador e concede premissoes   

   Aplicação              : VVEAM
   Data de Criacao        : 2012/06/12
   Data da Ultima Revisao : 2012/06/12
   
   ==============================================================================*/

--Criar o tablespace
--Já existe o tablespace. A linha tem de ser comentada
--CREATE TABLESPACE VVEAM DATAFILE 'C:\oracle\oradata\XE\VVEAM.dbf' SIZE 50M AUTOEXTEND ON NEXT 512K MAXSIZE 4194300K;

--Criar o tablespace dos indices
--Já existe o tablespace. A linha tem de ser comentada
--CREATE TABLESPACE VVEAM_INDICE DATAFILE 'C:\oracle\oradata\XE\VVEAM_INDICE.dbf' SIZE 50M AUTOEXTEND ON NEXT 512K MAXSIZE 4194300K;

--O utilizador já existe é preciso apagá-lo
DROP USER VVEAM_USER CASCADE;

--Criar o utilizador
CREATE USER VVEAM_USER IDENTIFIED BY VVEAM_USER DEFAULT TABLESPACE VVEAM TEMPORARY TABLESPACE temp;

--Dar privilégios ao utilizador
GRANT CONNECT,RESOURCE,CREATE ANY INDEX,CREATE SYNONYM,CREATE VIEW TO VVEAM_USER;
GRANT CHANGE NOTIFICATION, CREATE JOB, CREAtE PROCEDURE, CREATE ROLE, CREATE SESSION, DROP PUBLIC SYNONYM TO VVEAM_USER;