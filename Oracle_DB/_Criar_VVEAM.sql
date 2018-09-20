/* ================================================================================
   Criar_VVEAM.sql
   Chama os Cria_*  aplicacao

   Aplicacao              : VVEAM
   Data de Criacao        : 2012/06/01
   Data da Ultima Revisao : 2012/06/01
   
   ==============================================================================*/
   
/*Cria as tabelas utilizadas pelo Membership Asp.net */
@@InstallAllOracleASPNETProviders.sql

/*Cria as tabelas utilizadas pela aplciacao VVEAM */
@@Criar_Tabelas_VVEAM.sql
@@Criar_Index_VVEAM.sql
@@Criar_Sequencias_VVEAM.sql
@@Criar_Triggers_VVEAM.sql

