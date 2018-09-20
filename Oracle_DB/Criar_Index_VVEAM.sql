/* ================================================================================
   Criar_Index_VVEAM.sql
   Cria os Indices da aplicacao

   Data de Criacao        : 2012/06/12
   Data da Ultima Revisao : 2012/06/12
   
   ==============================================================================*/


CREATE INDEX IDX_Codu_GIINS ON GI_Instituicao(Codu) TABLESPACE VVEAM_INDICE; 
CREATE INDEX IDX_Tipo_Tripulante_OCRTRI ON OCR_Tripulante(Tipo_Tripulante) TABLESPACE VVEAM_INDICE;
CREATE INDEX IDX_Tipo_Veiculo_OCRVEI ON OCR_Veiculo(Tipo_Veiculo) TABLESPACE VVEAM_INDICE;
CREATE INDEX IDX_Codu_OCRVEI ON OCR_Veiculo(Codu) TABLESPACE VVEAM_INDICE;
CREATE INDEX IDX_Genero_OCROCR ON OCR_Ocorrencia(Genero) TABLESPACE VVEAM_INDICE;
CREATE INDEX IDX_Codu_OCROCR ON OCR_Ocorrencia(Codu) TABLESPACE VVEAM_INDICE;
CREATE INDEX IDX_Localizacao_OCROCR ON OCR_Ocorrencia(Localizacao) TABLESPACE VVEAM_INDICE;
CREATE INDEX IDX_Local_Contacto_OCROCR ON OCR_Ocorrencia(Local_Contacto) TABLESPACE VVEAM_INDICE;
CREATE INDEX IDX_Veiculo_OCROCR ON OCR_Ocorrencia(Veiculo) TABLESPACE VVEAM_INDICE;
CREATE INDEX IDX_Instituicao_OCRHOP ON OCR_Hospital(Instituicao) TABLESPACE VVEAM_INDICE;
CREATE INDEX IDX_Servico_OCRHOP ON OCR_Hospital(Servico) TABLESPACE VVEAM_INDICE;
CREATE INDEX IDX_Ocorrencia_OCRPD ON OCR_Pedido(Ocorrencia) TABLESPACE VVEAM_INDICE;
CREATE INDEX IDX_Instituicao_OCRPD ON OCR_Pedido(Instituicao) TABLESPACE VVEAM_INDICE;
CREATE INDEX IDX_Razao_OCRPD ON OCR_Pedido(Razao) TABLESPACE VVEAM_INDICE;
CREATE INDEX IDX_Risco_Hemorragia_OCRLOC ON OCR_Local(Risco_Hemorragia) TABLESPACE VVEAM_INDICE;
CREATE INDEX IDX_Class_Killip_OCRLOC ON OCR_Local(Class_Killip) TABLESPACE VVEAM_INDICE;
CREATE INDEX IDX_Ocorrencia_OCROC ON OCR_Ocorrencia_Criterio(Ocorrencia) TABLESPACE VVEAM_INDICE;
CREATE INDEX IDX_Criterio_OCROC ON OCR_Ocorrencia_Criterio(Criterio) TABLESPACE VVEAM_INDICE;
CREATE INDEX IDX_Ocorrencia_OCROS ON OCR_Ocorrencia_Sintoma(Ocorrencia) TABLESPACE VVEAM_INDICE;
CREATE INDEX IDX_Sintoma_OCROS ON OCR_Ocorrencia_Sintoma(Sintoma) TABLESPACE VVEAM_INDICE;
CREATE INDEX IDX_Tripulante_OCRTO ON OCR_Tripulante_Ocorrencia(Tripulante) TABLESPACE VVEAM_INDICE;
CREATE INDEX IDX_Ocorrencia_OCRTO ON OCR_Tripulante_Ocorrencia(Ocorrencia) TABLESPACE VVEAM_INDICE;
