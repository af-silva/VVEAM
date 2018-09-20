/* ================================================================================
   Destruir_Tabelas_VVEAM.sql
   Faz Drop as tabelas da aplicacao VVEAM

   Aplicacao              : VVEAM
   Data de Criacao        : 2012/06/08
   Data da Ultima Revisao : 2012/06/08
   
   ==============================================================================*/
   
DROP TABLE LOC_Localizacao           CASCADE CONSTRAINTS;
DROP TABLE GI_Servico                CASCADE CONSTRAINTS;
DROP TABLE GI_Instituicao            CASCADE CONSTRAINTS;
DROP TABLE OCR_Genero                CASCADE CONSTRAINTS;
DROP TABLE OCR_Sintoma               CASCADE CONSTRAINTS;
DROP TABLE OCR_Classe_Killip         CASCADE CONSTRAINTS;
DROP TABLE OCR_Criterio              CASCADE CONSTRAINTS;
DROP TABLE OCR_Risco_Hemorragia      CASCADE CONSTRAINTS;
DROP TABLE OCR_Local_Contacto        CASCADE CONSTRAINTS;
DROP TABLE OCR_Codu                  CASCADE CONSTRAINTS;
DROP TABLE OCR_Tipo_Veiculo          CASCADE CONSTRAINTS;
DROP TABLE OCR_Razao                 CASCADE CONSTRAINTS;
DROP TABLE OCR_Tipo_Tripulante       CASCADE CONSTRAINTS;
DROP TABLE OCR_Tripulante            CASCADE CONSTRAINTS;
DROP TABLE OCR_Veiculo               CASCADE CONSTRAINTS;
DROP TABLE OCR_Ocorrencia            CASCADE CONSTRAINTS;
DROP TABLE OCR_Hospital              CASCADE CONSTRAINTS;
DROP TABLE OCR_ECG                   CASCADE CONSTRAINTS;
DROP TABLE OCR_Pedido                CASCADE CONSTRAINTS;
DROP TABLE OCR_Local                 CASCADE CONSTRAINTS;
DROP TABLE OCR_Ocorrencia_Criterio   CASCADE CONSTRAINTS;
DROP TABLE OCR_Ocorrencia_Sintoma    CASCADE CONSTRAINTS;
DROP TABLE OCR_Tripulante_Ocorrencia CASCADE CONSTRAINTS;