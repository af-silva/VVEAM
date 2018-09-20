/* ================================================================================
   Criar_Triggers_VVEAM.sql
   Chama os Triggers da aplicacao

   Aplicacao              : VVEAM
   Data de Criacao        : 2012/08/06
   Data da Ultima Revisao : 2012/08/06
   
   ==============================================================================*/


CREATE OR REPLACE
	TRIGGER OCR_Ocorrencia_Trigger
	BEFORE INSERT ON OCR_Ocorrencia FOR EACH ROW
	BEGIN
		SELECT OCR_Ocorrencia_NS.NEXTVAL
		INTO :NEW.Codigo
		FROM DUAL;
	END;
/

CREATE OR REPLACE
	TRIGGER LOC_Localizacao_Trigger
	BEFORE INSERT ON LOC_Localizacao FOR EACH ROW
	BEGIN
		SELECT LOC_Localizacao_NS.NEXTVAL
		INTO :NEW.Codigo
		FROM DUAL;
	END;
/

CREATE OR REPLACE
	TRIGGER OCR_Codu_Trigger
	BEFORE INSERT ON OCR_Codu FOR EACH ROW
	BEGIN
		SELECT OCR_Codu_NS.NEXTVAL
		INTO :NEW.Codigo
		FROM DUAL;
	END;
/

CREATE OR REPLACE
	TRIGGER GI_Servico_Trigger
	BEFORE INSERT ON GI_Servico FOR EACH ROW
	BEGIN
		SELECT GI_Servico_NS.NEXTVAL
		INTO :NEW.Codigo
		FROM DUAL;
	END;
/
	
CREATE OR REPLACE
	TRIGGER GI_Instituicao_Trigger
	BEFORE INSERT ON GI_Instituicao FOR EACH ROW
		BEGIN
		SELECT GI_Instituicao_NS.NEXTVAL
		INTO :NEW.Codigo
		FROM DUAL;
	END;
/

	
CREATE OR REPLACE
	TRIGGER OCR_Genero_Trigger
	BEFORE INSERT ON OCR_Genero FOR EACH ROW
	BEGIN
		SELECT OCR_Genero_NS.NEXTVAL
		INTO :NEW.Codigo
		FROM DUAL;
	END;
/

CREATE OR REPLACE
	TRIGGER OCR_Sintoma_Trigger
	BEFORE INSERT ON OCR_Sintoma FOR EACH ROW
	BEGIN
		SELECT OCR_Sintoma_NS.NEXTVAL
		INTO :NEW.Codigo
		FROM DUAL;
	END;
/

CREATE OR REPLACE
	TRIGGER OCR_Criterio_Trigger
	BEFORE INSERT ON OCR_Criterio FOR EACH ROW
	BEGIN
		SELECT OCR_Criterio_NS.NEXTVAL
		INTO :NEW.Codigo
		FROM DUAL;
	END;
/

CREATE OR REPLACE
	TRIGGER OCR_Classe_Killip_Trigger
	BEFORE INSERT ON OCR_Classe_Killip FOR EACH ROW
	BEGIN
		SELECT OCR_Classe_Killip_NS.NEXTVAL
		INTO :NEW.Codigo
		FROM DUAL;
	END;
/

CREATE OR REPLACE
	TRIGGER OCR_Risco_Hemorragia_Trigger
	BEFORE INSERT ON OCR_Risco_Hemorragia FOR EACH ROW
	BEGIN
		SELECT OCR_Risco_Hemorragia_NS.NEXTVAL
		INTO :NEW.Codigo
		FROM DUAL;
	END;
/

CREATE OR REPLACE
	TRIGGER OCR_Local_Contacto_Trigger
	BEFORE INSERT ON OCR_Local_Contacto FOR EACH ROW
	BEGIN
		SELECT OCR_Local_Contacto_NS.NEXTVAL
		INTO :NEW.Codigo
		FROM DUAL;
	END;
/

CREATE OR REPLACE
	TRIGGER OCR_Tipo_Veiculo_Trigger
	BEFORE INSERT ON OCR_Tipo_Veiculo FOR EACH ROW
	BEGIN
		SELECT OCR_Tipo_Veiculo_NS.NEXTVAL
		INTO :NEW.Codigo
		FROM DUAL;
	END;
/

CREATE OR REPLACE
	TRIGGER OCR_Razao_Trigger
	BEFORE INSERT ON OCR_Razao FOR EACH ROW
	BEGIN
		SELECT OCR_Razao_NS.NEXTVAL
		INTO :NEW.Codigo
		FROM DUAL;
	END;
/

CREATE OR REPLACE
	TRIGGER OCR_Tipo_Tripulante_Trigger
	BEFORE INSERT ON OCR_Tipo_Tripulante FOR EACH ROW
	BEGIN
		SELECT OCR_Tipo_Tripulante_NS.NEXTVAL
		INTO :NEW.Codigo
		FROM DUAL;
	END;
/

CREATE OR REPLACE
	TRIGGER OCR_Tripulante_Trigger
	BEFORE INSERT ON OCR_Tripulante FOR EACH ROW
	BEGIN
		SELECT OCR_Tripulante_NS.NEXTVAL
		INTO :NEW.Codigo
		FROM DUAL;
	END;
/

CREATE OR REPLACE
	TRIGGER OCR_Veiculo_Trigger
	BEFORE INSERT ON OCR_Veiculo FOR EACH ROW
	BEGIN
		SELECT OCR_Veiculo_NS.NEXTVAL
		INTO :NEW.Codigo
		FROM DUAL;
	END;
/

CREATE OR REPLACE
	TRIGGER OCR_Pedido_Trigger
	BEFORE INSERT ON OCR_Pedido FOR EACH ROW
	BEGIN
		SELECT OCR_Pedido_NS.NEXTVAL
		INTO :NEW.Codigo
		FROM DUAL;
	END;
/