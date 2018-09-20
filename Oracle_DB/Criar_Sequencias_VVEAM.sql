/* ================================================================================
   Criar_Sequencias_VVEAM.sql
   Cria as tabelas responsaveis por implementar a Ocorrencia

   Aplicacao              : VVEAM
   Dependencias           : Ocorrencia, Gestao_Instituicoes, Localizacao, Autenticacao
   Data de Criacao        : 2012/06/08
   Data da Ultima Revisao : 2012/06/08
   
   ==============================================================================*/
   
CREATE SEQUENCE LOC_Localizacao_NS      START WITH 1 INCREMENT BY 1;
CREATE SEQUENCE GI_Instituicao_NS       START WITH 1 INCREMENT BY 1;
CREATE SEQUENCE GI_Servico_NS           START WITH 1 INCREMENT BY 1;
CREATE SEQUENCE OCR_Razao_NS            START WITH 1 INCREMENT BY 1;  
CREATE SEQUENCE OCR_Tipo_Veiculo_NS     START WITH 1 INCREMENT BY 1;
CREATE SEQUENCE OCR_Veiculo_NS          START WITH 1 INCREMENT BY 1;
CREATE SEQUENCE OCR_Codu_NS             START WITH 1 INCREMENT BY 1;
CREATE SEQUENCE OCR_Local_Contacto_NS   START WITH 1 INCREMENT BY 1;
CREATE SEQUENCE OCR_Tripulante_NS       START WITH 1 INCREMENT BY 1;
CREATE SEQUENCE OCR_Tipo_Tripulante_NS  START WITH 1 INCREMENT BY 1;
CREATE SEQUENCE OCR_Genero_NS           START WITH 1 INCREMENT BY 1;
CREATE SEQUENCE OCR_Sintoma_NS          START WITH 1 INCREMENT BY 1;
CREATE SEQUENCE OCR_Classe_Killip_NS    START WITH 1 INCREMENT BY 1;
CREATE SEQUENCE OCR_Risco_Hemorragia_NS START WITH 1 INCREMENT BY 1;
CREATE SEQUENCE OCR_Criterio_NS         START WITH 1 INCREMENT BY 1;
CREATE SEQUENCE OCR_Ocorrencia_NS       START WITH 1 INCREMENT BY 1;
CREATE SEQUENCE OCR_Pedido_NS           START WITH 1 INCREMENT BY 1;
