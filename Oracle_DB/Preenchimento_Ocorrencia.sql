 /* ================================================================================
   Ocorrencia.sql
   
   Aplicacao              : VVEAM
   Modulo                 : Ocorrencia
   Data de Criacao        : 2012/07/02
   Data da Ultima Revisao : 2012/06/02
   
   ==============================================================================*/
 
 /* ------------------------------------------------------------------------------
    OCR_Codu
    Preenchimento da tabela OCR_Codu
    ------------------------------------------------------------------------------*/
 
 INSERT INTO OCR_Codu (Nome, Estado) VALUES ('Porto','1' );
 INSERT INTO OCR_Codu (Nome, Estado) VALUES ('Coimbra','1' );
 INSERT INTO OCR_Codu (Nome, Estado) VALUES ('Lisboa','1' );
 INSERT INTO OCR_Codu (Nome, Estado) VALUES ('Faro','1' );
 
 
/* -------------------------------------------------------------------------------
   OCR_Genero
   Preenchimento da tabela OCR_Genero
   -------------------------------------------------------------------------------*/
 
 INSERT INTO OCR_Genero (Nome) VALUES ('Masculino' );
 INSERT INTO OCR_Genero (Nome) VALUES ('Feminino' );
 
 /* -------------------------------------------------------------------------------
    OCR_Sintoma
    Preenchimento da tabela OCR_Sintoma
    -------------------------------------------------------------------------------*/
 
 INSERT INTO OCR_Sintoma (Nome, Estado) VALUES ('Dor no Peito (inclui pescoço, queixo, braços ou costas)','1' );
 INSERT INTO OCR_Sintoma (Nome, Estado) VALUES ('Mal Estar, Suores Frios','1' );
 INSERT INTO OCR_Sintoma (Nome, Estado) VALUES ('Sensação de Náuseas Vómitos','1' );

 
 /* -------------------------------------------------------------------------------
    OCR_Classe_Killip
    Preenchimento da tabela OCR_Classe_Killip
    -------------------------------------------------------------------------------*/ 
 
 INSERT INTO OCR_Classe_Killip (Nome, Estado) VALUES ('Classe 1','1' );
 INSERT INTO OCR_Classe_Killip (Nome, Estado) VALUES ('Classe 2','1' );
 INSERT INTO OCR_Classe_Killip (Nome, Estado) VALUES ('Classe 3','1' );
 INSERT INTO OCR_Classe_Killip (Nome, Estado) VALUES ('Classe 4','1' );

 
 /* -------------------------------------------------------------------------------
    OCR_Criterio
    Preenchimento da tabela OCR_Criterio
    -------------------------------------------------------------------------------*/ 

 INSERT INTO OCR_Criterio (Nome, Estado) VALUES ('Convulsões','1' );
 INSERT INTO OCR_Criterio (Nome, Estado) VALUES ('Coma','1' );
 INSERT INTO OCR_Criterio (Nome, Estado) VALUES ('Cianose','1' );

	
  /* -------------------------------------------------------------------------------
    OCR_Risco_Hemorragia
    Preenchimento da tabela OCR_Risco_Hemorragia
    -------------------------------------------------------------------------------*/ 
 
 INSERT INTO OCR_Risco_Hemorragia (Nome, Estado) VALUES ('Baixo (0 a 2 pontos)','1' );
 INSERT INTO OCR_Risco_Hemorragia (Nome, Estado) VALUES ('Moderado (3 a 4 pontos)','1' );
 INSERT INTO OCR_Risco_Hemorragia (Nome, Estado) VALUES ('Elevado ( > 5 pontos)','1' );

 
  /* -------------------------------------------------------------------------------
    OCR_Local_Contacto
    Preenchimento da tabela OCR_Local_Contacto
    -------------------------------------------------------------------------------*/ 
 
 INSERT INTO OCR_Local_Contacto (Nome, Estado) VALUES ('Domicilio','1' );
 INSERT INTO OCR_Local_Contacto (Nome, Estado) VALUES ('SUB - Serviços de Urgência Básica','1' );
 INSERT INTO OCR_Local_Contacto (Nome, Estado) VALUES ('Centro Saúde','1' );
 INSERT INTO OCR_Local_Contacto (Nome, Estado) VALUES ('Outros','1' );


 /* -------------------------------------------------------------------------------
   OCR_Tipo_Veiculo
   Preenchimento da tabela OCR_Tipo_Veiculo
   -------------------------------------------------------------------------------*/
	
 INSERT INTO OCR_Tipo_Veiculo (Nome,Sigla, Estado) VALUES ('Veiculo Médico de Emergência e Reanimação','VMER','1' );
 INSERT INTO OCR_Tipo_Veiculo (Nome,Sigla, Estado) VALUES ('Ambulância de Suporte Básico de Vida','SBV','1' );
 INSERT INTO OCR_Tipo_Veiculo (Nome,Sigla, Estado) VALUES ('Ambulância de Suporte Imediato de Vida ','SIV','1' );
 INSERT INTO OCR_Tipo_Veiculo (Nome,Sigla, Estado) VALUES ('Helicoptero','Heli','1' );
 INSERT INTO OCR_Tipo_Veiculo (Nome,Sigla, Estado) VALUES ('Mota de Emegência Médica','MEM','1' );
 
  /* -------------------------------------------------------------------------------
   OCR_Razão
   Preenchimento da tabela OCR_Razao
   -------------------------------------------------------------------------------*/

 INSERT INTO OCR_Tipo_Veiculo (Nome, Estado) VALUES ('Hospital sem capacidade','1' );   
 INSERT INTO OCR_Tipo_Veiculo (Nome, Estado) VALUES ('Hospital com problemas tecnicos','1' ); 
 INSERT INTO OCR_Tipo_Veiculo (Nome, Estado) VALUES ('Não existe pessoal medico adequado','1' ); 

 /* -------------------------------------------------------------------------------
    OCR_Tipo_Tripulante
    Preenchimento da tabela OCR_Tipo_Tripulante
    -------------------------------------------------------------------------------*/
 
 INSERT INTO OCR_Tipo_Tripulante (Nome, Estado) VALUES ('Enfermeiro','1' );
 INSERT INTO OCR_Tipo_Tripulante (Nome, Estado) VALUES ('Médico','1' );
 
 
 /* -------------------------------------------------------------------------------
    OCR_Tripulante
    Preenchimento da tabela OCR_Tripulante
    -------------------------------------------------------------------------------*/
  
 INSERT INTO OCR_Tripulante (Tipo_Tripulante,Codu, Numero_Pessoal, Nome, Estado) VALUES (1,1,3242342342,'Ana Isabel','1' );
 INSERT INTO OCR_Tripulante (Tipo_Tripulante,Codu, Numero_Pessoal, Nome, Estado) VALUES (1,1,4234325324,'André Costa','1' );
 INSERT INTO OCR_Tripulante (Tipo_Tripulante,Codu, Numero_Pessoal, Nome, Estado) VALUES (1,1,5226308306,'Rute Marlene','1' );
 INSERT INTO OCR_Tripulante (Tipo_Tripulante,Codu, Numero_Pessoal, Nome, Estado) VALUES (1,1,6218291288,'Susana Ferreira','1' );
 INSERT INTO OCR_Tripulante (Tipo_Tripulante,Codu, Numero_Pessoal, Nome, Estado) VALUES (1,2,7210274270,'Martim Silva','1' );
 INSERT INTO OCR_Tripulante (Tipo_Tripulante,Codu, Numero_Pessoal, Nome, Estado) VALUES (2,3,8202257252,'João Costa','1' );
 INSERT INTO OCR_Tripulante (Tipo_Tripulante,Codu, Numero_Pessoal, Nome, Estado) VALUES (2,3,9194240234,'Miguel Costa','1' );
 INSERT INTO OCR_Tripulante (Tipo_Tripulante,Codu, Numero_Pessoal, Nome, Estado) VALUES (2,2,10186223216,'Paulo Prates','1' );
 INSERT INTO OCR_Tripulante (Tipo_Tripulante,Codu, Numero_Pessoal, Nome, Estado) VALUES (2,3,11178206198,'Nuno Pereira','1' );
 INSERT INTO OCR_Tripulante (Tipo_Tripulante,Codu, Numero_Pessoal, Nome, Estado) VALUES (2,3,12170189180,'Rodrigo Antunes','1' );
 INSERT INTO OCR_Tripulante (Tipo_Tripulante,Codu, Numero_Pessoal, Nome, Estado) VALUES (1,4,13162172162,'Ana Salazar','1' );
 INSERT INTO OCR_Tripulante (Tipo_Tripulante,Codu, Numero_Pessoal, Nome, Estado) VALUES (1,4,14154155144,'Filipa Duarte','1' );
 INSERT INTO OCR_Tripulante (Tipo_Tripulante,Codu, Numero_Pessoal, Nome, Estado) VALUES (2,4,15146138126,'Ines Silva','1' );
 INSERT INTO OCR_Tripulante (Tipo_Tripulante,Codu, Numero_Pessoal, Nome, Estado) VALUES (1,2,16138121108,'Catarina Santana','1' );
 INSERT INTO OCR_Tripulante (Tipo_Tripulante,Codu, Numero_Pessoal, Nome, Estado) VALUES (2,3,17130104090,'Isabel Freitas ','1' );

 
  /* -------------------------------------------------------------------------------
    OCR_Veiculo
    Preenchimento da tabela OCR_Veiculo
    -------------------------------------------------------------------------------*/
 
 --Porto
 INSERT INTO OCR_Veiculo (Tipo_Veiculo, Codu, Nome, Estado) VALUES (2,1,'Porto 1','1' );
 INSERT INTO OCR_Veiculo (Tipo_Veiculo, Codu, Nome, Estado) VALUES (2,1,'Porto 2','1' );
 INSERT INTO OCR_Veiculo (Tipo_Veiculo, Codu, Nome, Estado) VALUES (2,1,'Porto 3','1' );
 INSERT INTO OCR_Veiculo (Tipo_Veiculo, Codu, Nome, Estado) VALUES (2,1,'Porto 4','1' );
 INSERT INTO OCR_Veiculo (Tipo_Veiculo, Codu, Nome, Estado) VALUES (2,1,'Porto 5','1' );
 INSERT INTO OCR_Veiculo (Tipo_Veiculo, Codu, Nome, Estado) VALUES (2,1,'Porto 6','1' );
 INSERT INTO OCR_Veiculo (Tipo_Veiculo, Codu, Nome, Estado) VALUES (2,1,'Porto 7','1' );
 INSERT INTO OCR_Veiculo (Tipo_Veiculo, Codu, Nome, Estado) VALUES (2,1,'Porto 8','1' );
 INSERT INTO OCR_Veiculo (Tipo_Veiculo, Codu, Nome, Estado) VALUES (2,1,'Gaia 1','1' );
 INSERT INTO OCR_Veiculo (Tipo_Veiculo, Codu, Nome, Estado) VALUES (2,1,'Gaia 2','1' );
 INSERT INTO OCR_Veiculo (Tipo_Veiculo, Codu, Nome, Estado) VALUES (2,1,'Maia 1','1' );
 INSERT INTO OCR_Veiculo (Tipo_Veiculo, Codu, Nome, Estado) VALUES (2,1,'Rio Tinto 1','1' );
 INSERT INTO OCR_Veiculo (Tipo_Veiculo, Codu, Nome, Estado) VALUES (2,1,'Chaves','1' );
 INSERT INTO OCR_Veiculo (Tipo_Veiculo, Codu, Nome, Estado) VALUES (2,1,'Espinho','1' );
 INSERT INTO OCR_Veiculo (Tipo_Veiculo, Codu, Nome, Estado) VALUES (2,1,'Ovar','1' );
 INSERT INTO OCR_Veiculo (Tipo_Veiculo, Codu, Nome, Estado) VALUES (2,1,'Vieira do Minho','1' );
 INSERT INTO OCR_Veiculo (Tipo_Veiculo, Codu, Nome, Estado) VALUES (2,1,'Miranda do Douro','1' );
 INSERT INTO OCR_Veiculo (Tipo_Veiculo, Codu, Nome, Estado) VALUES (2,1,'Torre de Moncorvo','1' );
 INSERT INTO OCR_Veiculo (Tipo_Veiculo, Codu, Nome, Estado) VALUES (2,1,'Braga','1' );
 INSERT INTO OCR_Veiculo (Tipo_Veiculo, Codu, Nome, Estado) VALUES (2,1,'Baião','1' );
 INSERT INTO OCR_Veiculo (Tipo_Veiculo, Codu, Nome, Estado) VALUES (2,1,'Celorico de Basto','1' );
 INSERT INTO OCR_Veiculo (Tipo_Veiculo, Codu, Nome, Estado) VALUES (5,1,'Mota Porto 1','1' );
 INSERT INTO OCR_Veiculo (Tipo_Veiculo, Codu, Nome, Estado) VALUES (2,1,'BV Castelo de Paiva','1' );
 INSERT INTO OCR_Veiculo (Tipo_Veiculo, Codu, Nome, Estado) VALUES (2,1,'BV Oliveira de Azemeis','1' );
 INSERT INTO OCR_Veiculo (Tipo_Veiculo, Codu, Nome, Estado) VALUES (2,1,'BV Ovar','1' );
 INSERT INTO OCR_Veiculo (Tipo_Veiculo, Codu, Nome, Estado) VALUES (2,1,'BV S João da Madeira','1' );
 INSERT INTO OCR_Veiculo (Tipo_Veiculo, Codu, Nome, Estado) VALUES (2,1,'BV Barcelos','1' );
 INSERT INTO OCR_Veiculo (Tipo_Veiculo, Codu, Nome, Estado) VALUES (2,1,'BV Braga','1' );
 INSERT INTO OCR_Veiculo (Tipo_Veiculo, Codu, Nome, Estado) VALUES (2,1,'BV Esposende','1' );
 INSERT INTO OCR_Veiculo (Tipo_Veiculo, Codu, Nome, Estado) VALUES (2,1,'BV Guimarães','1' );
 INSERT INTO OCR_Veiculo (Tipo_Veiculo, Codu, Nome, Estado) VALUES (2,1,'BV V N Famalicão','1' );
 INSERT INTO OCR_Veiculo (Tipo_Veiculo, Codu, Nome, Estado) VALUES (2,1,'BV Vieira do Minho','1' );
 INSERT INTO OCR_Veiculo (Tipo_Veiculo, Codu, Nome, Estado) VALUES (2,1,'CBS Braga','1' );
 INSERT INTO OCR_Veiculo (Tipo_Veiculo, Codu, Nome, Estado) VALUES (2,1,'BV Bragança','1' );
 INSERT INTO OCR_Veiculo (Tipo_Veiculo, Codu, Nome, Estado) VALUES (2,1,'BV Macedo de Cavaleiros','1' );
 INSERT INTO OCR_Veiculo (Tipo_Veiculo, Codu, Nome, Estado) VALUES (2,1,'BV Miranda do Douro','1' );
 INSERT INTO OCR_Veiculo (Tipo_Veiculo, Codu, Nome, Estado) VALUES (2,1,'BV Mirandela','1' );
 INSERT INTO OCR_Veiculo (Tipo_Veiculo, Codu, Nome, Estado) VALUES (2,1,'BV Moncorvo','1' );
 INSERT INTO OCR_Veiculo (Tipo_Veiculo, Codu, Nome, Estado) VALUES (2,1,'BV Vimioso','1' );
 INSERT INTO OCR_Veiculo (Tipo_Veiculo, Codu, Nome, Estado) VALUES (2,1,'BV Vinhais','1' );
 INSERT INTO OCR_Veiculo (Tipo_Veiculo, Codu, Nome, Estado) VALUES (2,1,'BV Aguda','1' );
 INSERT INTO OCR_Veiculo (Tipo_Veiculo, Codu, Nome, Estado) VALUES (2,1,'BV Amarante','1' );
 INSERT INTO OCR_Veiculo (Tipo_Veiculo, Codu, Nome, Estado) VALUES (2,1,'BV Avintes','1' );
 INSERT INTO OCR_Veiculo (Tipo_Veiculo, Codu, Nome, Estado) VALUES (2,1,'BV Carvalhos','1' );
 INSERT INTO OCR_Veiculo (Tipo_Veiculo, Codu, Nome, Estado) VALUES (2,1,'BV Ermesinde','1' );
 INSERT INTO OCR_Veiculo (Tipo_Veiculo, Codu, Nome, Estado) VALUES (2,1,'BV Gondomar','1' );
 INSERT INTO OCR_Veiculo (Tipo_Veiculo, Codu, Nome, Estado) VALUES (2,1,'BV Leça do Balio','1' );
 INSERT INTO OCR_Veiculo (Tipo_Veiculo, Codu, Nome, Estado) VALUES (2,1,'BV Lixa','1' );
 INSERT INTO OCR_Veiculo (Tipo_Veiculo, Codu, Nome, Estado) VALUES (2,1,'BV Moreira da Maia','1' );
 INSERT INTO OCR_Veiculo (Tipo_Veiculo, Codu, Nome, Estado) VALUES (2,1,'BV Penafiel','1' );
 INSERT INTO OCR_Veiculo (Tipo_Veiculo, Codu, Nome, Estado) VALUES (2,1,'BV Porto','1' );
 INSERT INTO OCR_Veiculo (Tipo_Veiculo, Codu, Nome, Estado) VALUES (2,1,'BV Portuenses','1' );
 INSERT INTO OCR_Veiculo (Tipo_Veiculo, Codu, Nome, Estado) VALUES (2,1,'BV Póvoa do Varzim','1' );
 INSERT INTO OCR_Veiculo (Tipo_Veiculo, Codu, Nome, Estado) VALUES (2,1,'BV Santo Tirso','1' );
 INSERT INTO OCR_Veiculo (Tipo_Veiculo, Codu, Nome, Estado) VALUES (2,1,'BV Trofa','1' );
 INSERT INTO OCR_Veiculo (Tipo_Veiculo, Codu, Nome, Estado) VALUES (2,1,'BV Valadares','1' );
 INSERT INTO OCR_Veiculo (Tipo_Veiculo, Codu, Nome, Estado) VALUES (2,1,'BV Valongo','1' );
 INSERT INTO OCR_Veiculo (Tipo_Veiculo, Codu, Nome, Estado) VALUES (2,1,'CBS Gaia','1' );
 INSERT INTO OCR_Veiculo (Tipo_Veiculo, Codu, Nome, Estado) VALUES (2,1,'BV Arcos de Valdevez','1' );
 INSERT INTO OCR_Veiculo (Tipo_Veiculo, Codu, Nome, Estado) VALUES (2,1,'BV Caminha','1' );
 INSERT INTO OCR_Veiculo (Tipo_Veiculo, Codu, Nome, Estado) VALUES (2,1,'BV Melgaço','1' );
 INSERT INTO OCR_Veiculo (Tipo_Veiculo, Codu, Nome, Estado) VALUES (2,1,'BV Ponte de Lima','1' );
 INSERT INTO OCR_Veiculo (Tipo_Veiculo, Codu, Nome, Estado) VALUES (2,1,'BV Valença','1' );
 INSERT INTO OCR_Veiculo (Tipo_Veiculo, Codu, Nome, Estado) VALUES (2,1,'BV Viana do Castelo','1' );
 INSERT INTO OCR_Veiculo (Tipo_Veiculo, Codu, Nome, Estado) VALUES (2,1,'BV Chaves','1' );
 INSERT INTO OCR_Veiculo (Tipo_Veiculo, Codu, Nome, Estado) VALUES (2,1,'BV Mesão Frio','1' );
 INSERT INTO OCR_Veiculo (Tipo_Veiculo, Codu, Nome, Estado) VALUES (2,1,'BV Montalegre','1' );
 INSERT INTO OCR_Veiculo (Tipo_Veiculo, Codu, Nome, Estado) VALUES (2,1,'BV Murça','1' );
 INSERT INTO OCR_Veiculo (Tipo_Veiculo, Codu, Nome, Estado) VALUES (2,1,'BV Valpaços','1' );
 INSERT INTO OCR_Veiculo (Tipo_Veiculo, Codu, Nome, Estado) VALUES (2,1,'BV Vila Pouca de Aguiar','1' );
 INSERT INTO OCR_Veiculo (Tipo_Veiculo, Codu, Nome, Estado) VALUES (2,1,'BV Vila Real - Cruz Branca','1' );
 INSERT INTO OCR_Veiculo (Tipo_Veiculo, Codu, Nome, Estado) VALUES (2,1,'BV Vila Real - Cruz Verde','1' );
 INSERT INTO OCR_Veiculo (Tipo_Veiculo, Codu, Nome, Estado) VALUES (2,1,'BV Cinfães','1' );
 INSERT INTO OCR_Veiculo (Tipo_Veiculo, Codu, Nome, Estado) VALUES (2,1,'BV Lamego','1' );
 INSERT INTO OCR_Veiculo (Tipo_Veiculo, Codu, Nome, Estado) VALUES (2,1,'BV Moimenta da Beira','1' );
 INSERT INTO OCR_Veiculo (Tipo_Veiculo, Codu, Nome, Estado) VALUES (3,1,'Cabeceiras de Basto','1' );
 INSERT INTO OCR_Veiculo (Tipo_Veiculo, Codu, Nome, Estado) VALUES (3,1,'Fafe','1' );
 INSERT INTO OCR_Veiculo (Tipo_Veiculo, Codu, Nome, Estado) VALUES (3,1,'Mirandela','1' );
 INSERT INTO OCR_Veiculo (Tipo_Veiculo, Codu, Nome, Estado) VALUES (3,1,'Amarante','1' );
 INSERT INTO OCR_Veiculo (Tipo_Veiculo, Codu, Nome, Estado) VALUES (3,1,'Gondomar (Porto)','1' );
 INSERT INTO OCR_Veiculo (Tipo_Veiculo, Codu, Nome, Estado) VALUES (3,1,'Santo Tirso','1' );
 INSERT INTO OCR_Veiculo (Tipo_Veiculo, Codu, Nome, Estado) VALUES (3,1,'Vila do Conde','1' );
 INSERT INTO OCR_Veiculo (Tipo_Veiculo, Codu, Nome, Estado) VALUES (3,1,'Montalegre','1' );
 INSERT INTO OCR_Veiculo (Tipo_Veiculo, Codu, Nome, Estado) VALUES (3,1,'Peso da Régua','1' );
 INSERT INTO OCR_Veiculo (Tipo_Veiculo, Codu, Nome, Estado) VALUES (3,1,'Lamego','1' );
 INSERT INTO OCR_Veiculo (Tipo_Veiculo, Codu, Nome, Estado) VALUES (3,1,'Valença','1' );
 INSERT INTO OCR_Veiculo (Tipo_Veiculo, Codu, Nome, Estado) VALUES (3,1,'Ponte de Lima','1' );
 INSERT INTO OCR_Veiculo (Tipo_Veiculo, Codu, Nome, Estado) VALUES (3,1,'Arcos de Valdevez','1' );
 INSERT INTO OCR_Veiculo (Tipo_Veiculo, Codu, Nome, Estado) VALUES (3,1,'Melgaço','1' );
 INSERT INTO OCR_Veiculo (Tipo_Veiculo, Codu, Nome, Estado) VALUES (3,1,'Alijó','1' );
 INSERT INTO OCR_Veiculo (Tipo_Veiculo, Codu, Nome, Estado) VALUES (1,1,'H Guimarães','1' );
 INSERT INTO OCR_Veiculo (Tipo_Veiculo, Codu, Nome, Estado) VALUES (1,1,'H S Marcos - Braga','1' );
 INSERT INTO OCR_Veiculo (Tipo_Veiculo, Codu, Nome, Estado) VALUES (1,1,'H Distrital Bragança','1' );
 INSERT INTO OCR_Veiculo (Tipo_Veiculo, Codu, Nome, Estado) VALUES (1,1,'C H Vila Nova Gaia','1' );
 INSERT INTO OCR_Veiculo (Tipo_Veiculo, Codu, Nome, Estado) VALUES (1,1,'H Padre Américo - Vale Sousa','1' );
 INSERT INTO OCR_Veiculo (Tipo_Veiculo, Codu, Nome, Estado) VALUES (1,1,'H Pedro Hispano - US Matosinhos','1' );
 INSERT INTO OCR_Veiculo (Tipo_Veiculo, Codu, Nome, Estado) VALUES (1,1,'H Santo António - Porto','1' );
 INSERT INTO OCR_Veiculo (Tipo_Veiculo, Codu, Nome, Estado) VALUES (1,1,'H São João - Porto','1' );
 INSERT INTO OCR_Veiculo (Tipo_Veiculo, Codu, Nome, Estado) VALUES (1,1,'CH Alto Minho - Viana Castelo','1' );
 INSERT INTO OCR_Veiculo (Tipo_Veiculo, Codu, Nome, Estado) VALUES (1,1,'CH Vila Real Peso da Régua','1' );
 INSERT INTO OCR_Veiculo (Tipo_Veiculo, Codu, Nome, Estado) VALUES (1,1,'H Distrital Chaves','1' );
 INSERT INTO OCR_Veiculo (Tipo_Veiculo, Codu, Nome, Estado) VALUES (1,1,'H Santa Maria da Feira','1' );
 INSERT INTO OCR_Veiculo (Tipo_Veiculo, Codu, Nome, Estado) VALUES (1,1,'H Santa Maria Maior - Barcelos','1' );

 --Coimbra
 INSERT INTO OCR_Veiculo (Tipo_Veiculo, Codu, Nome, Estado) VALUES (2,2,'Coimbra 01','1' );
 INSERT INTO OCR_Veiculo (Tipo_Veiculo, Codu, Nome, Estado) VALUES (2,2,'Coimbra 02','1' );
 INSERT INTO OCR_Veiculo (Tipo_Veiculo, Codu, Nome, Estado) VALUES (2,2,'Anadia','1' );
 INSERT INTO OCR_Veiculo (Tipo_Veiculo, Codu, Nome, Estado) VALUES (2,2,'Leiria','1' );
 INSERT INTO OCR_Veiculo (Tipo_Veiculo, Codu, Nome, Estado) VALUES (2,2,'Viseu','1' );
 INSERT INTO OCR_Veiculo (Tipo_Veiculo, Codu, Nome, Estado) VALUES (2,2,'São Pedro Sul','1' );
 INSERT INTO OCR_Veiculo (Tipo_Veiculo, Codu, Nome, Estado) VALUES (2,2,'Fundão','1' );
 INSERT INTO OCR_Veiculo (Tipo_Veiculo, Codu, Nome, Estado) VALUES (2,2,'Figueiró dos Vinhos','1' );
 INSERT INTO OCR_Veiculo (Tipo_Veiculo, Codu, Nome, Estado) VALUES (2,2,'Estarreja','1' );
 INSERT INTO OCR_Veiculo (Tipo_Veiculo, Codu, Nome, Estado) VALUES (2,2,'Mortágua','1' );
 INSERT INTO OCR_Veiculo (Tipo_Veiculo, Codu, Nome, Estado) VALUES (2,2,'Sta Comba Dão/Tábua','1' );
 INSERT INTO OCR_Veiculo (Tipo_Veiculo, Codu, Nome, Estado) VALUES (2,2,'BV Agueda','1' );
 INSERT INTO OCR_Veiculo (Tipo_Veiculo, Codu, Nome, Estado) VALUES (2,2,'BV Albergaria Velha','1' );
 INSERT INTO OCR_Veiculo (Tipo_Veiculo, Codu, Nome, Estado) VALUES (2,2,'BV Anadia','1' );
 INSERT INTO OCR_Veiculo (Tipo_Veiculo, Codu, Nome, Estado) VALUES (2,2,'BV Aveiro Velhos','1' );
 INSERT INTO OCR_Veiculo (Tipo_Veiculo, Codu, Nome, Estado) VALUES (2,2,'BV Mealhada','1' );
 INSERT INTO OCR_Veiculo (Tipo_Veiculo, Codu, Nome, Estado) VALUES (2,2,'BV Belmonte','1' );
 INSERT INTO OCR_Veiculo (Tipo_Veiculo, Codu, Nome, Estado) VALUES (2,2,'BV Castelo Branco','1' );
 INSERT INTO OCR_Veiculo (Tipo_Veiculo, Codu, Nome, Estado) VALUES (2,2,'BV Covilhã (2 amb)','1' );
 INSERT INTO OCR_Veiculo (Tipo_Veiculo, Codu, Nome, Estado) VALUES (2,2,'BV Fundão','1' );
 INSERT INTO OCR_Veiculo (Tipo_Veiculo, Codu, Nome, Estado) VALUES (2,2,'BV Idanha-a-Nova','1' );
 INSERT INTO OCR_Veiculo (Tipo_Veiculo, Codu, Nome, Estado) VALUES (2,2,'BV Penamacor','1' );
 INSERT INTO OCR_Veiculo (Tipo_Veiculo, Codu, Nome, Estado) VALUES (2,2,'BV Proença-a-Nova','1' );
 INSERT INTO OCR_Veiculo (Tipo_Veiculo, Codu, Nome, Estado) VALUES (2,2,'BV Arganil (Argus)','1' );
 INSERT INTO OCR_Veiculo (Tipo_Veiculo, Codu, Nome, Estado) VALUES (2,2,'BV Cantanhede','1' );
 INSERT INTO OCR_Veiculo (Tipo_Veiculo, Codu, Nome, Estado) VALUES (2,2,'BV Condeixa','1' );
 INSERT INTO OCR_Veiculo (Tipo_Veiculo, Codu, Nome, Estado) VALUES (2,2,'BV Figueira da Foz','1' );
 INSERT INTO OCR_Veiculo (Tipo_Veiculo, Codu, Nome, Estado) VALUES (2,2,'BV Miranda Corvo','1' );
 INSERT INTO OCR_Veiculo (Tipo_Veiculo, Codu, Nome, Estado) VALUES (2,2,'BV Montemor- o-Velho','1' );
 INSERT INTO OCR_Veiculo (Tipo_Veiculo, Codu, Nome, Estado) VALUES (2,2,'BV Oliveira do Hospital','1' );
 INSERT INTO OCR_Veiculo (Tipo_Veiculo, Codu, Nome, Estado) VALUES (2,2,'BV Penacova','1' );
 INSERT INTO OCR_Veiculo (Tipo_Veiculo, Codu, Nome, Estado) VALUES (2,2,'BV Penela','1' );
 INSERT INTO OCR_Veiculo (Tipo_Veiculo, Codu, Nome, Estado) VALUES (2,2,'BV Soure','1' );
 INSERT INTO OCR_Veiculo (Tipo_Veiculo, Codu, Nome, Estado) VALUES (2,2,'BV V Nova Poiares','1' );
 INSERT INTO OCR_Veiculo (Tipo_Veiculo, Codu, Nome, Estado) VALUES (2,2,'CBS Coimbra','1' );
 INSERT INTO OCR_Veiculo (Tipo_Veiculo, Codu, Nome, Estado) VALUES (2,2,'BV Almeida','1' );
 INSERT INTO OCR_Veiculo (Tipo_Veiculo, Codu, Nome, Estado) VALUES (2,2,'BV Celorico da Beira','1' );
 INSERT INTO OCR_Veiculo (Tipo_Veiculo, Codu, Nome, Estado) VALUES (2,2,'BV Fornos de Algodres','1' );
 INSERT INTO OCR_Veiculo (Tipo_Veiculo, Codu, Nome, Estado) VALUES (2,2,'BV Gouveia','1' );
 INSERT INTO OCR_Veiculo (Tipo_Veiculo, Codu, Nome, Estado) VALUES (2,2,'BV Guarda (2 amb)','1' );
 INSERT INTO OCR_Veiculo (Tipo_Veiculo, Codu, Nome, Estado) VALUES (2,2,'BV Pinhelenses (Pinhel)','1' );
 INSERT INTO OCR_Veiculo (Tipo_Veiculo, Codu, Nome, Estado) VALUES (2,2,'BV Sabugal','1' );
 INSERT INTO OCR_Veiculo (Tipo_Veiculo, Codu, Nome, Estado) VALUES (2,2,'BV Seia (2 amb)','1' );
 INSERT INTO OCR_Veiculo (Tipo_Veiculo, Codu, Nome, Estado) VALUES (2,2,'BV Trancoso','1' );
 INSERT INTO OCR_Veiculo (Tipo_Veiculo, Codu, Nome, Estado) VALUES (2,2,'BM Leiria','1' );
 INSERT INTO OCR_Veiculo (Tipo_Veiculo, Codu, Nome, Estado) VALUES (2,2,'BV Alcobaça','1' );
 INSERT INTO OCR_Veiculo (Tipo_Veiculo, Codu, Nome, Estado) VALUES (2,2,'BV Batalha','1' );
 INSERT INTO OCR_Veiculo (Tipo_Veiculo, Codu, Nome, Estado) VALUES (2,2,'BV Bombarral','1' );
 INSERT INTO OCR_Veiculo (Tipo_Veiculo, Codu, Nome, Estado) VALUES (2,2,'BV Caldas Rainha','1' );
 INSERT INTO OCR_Veiculo (Tipo_Veiculo, Codu, Nome, Estado) VALUES (2,2,'BV Leiria (2 amb)','1' );
 INSERT INTO OCR_Veiculo (Tipo_Veiculo, Codu, Nome, Estado) VALUES (2,2,'BV Marinha Grande','1' );
 INSERT INTO OCR_Veiculo (Tipo_Veiculo, Codu, Nome, Estado) VALUES (2,2,'BV Nazaré','1' );
 INSERT INTO OCR_Veiculo (Tipo_Veiculo, Codu, Nome, Estado) VALUES (2,2,'BV Óbidos','1' );
 INSERT INTO OCR_Veiculo (Tipo_Veiculo, Codu, Nome, Estado) VALUES (2,2,'BV Peniche','1' );
 INSERT INTO OCR_Veiculo (Tipo_Veiculo, Codu, Nome, Estado) VALUES (2,2,'BV Pombal','1' );
 INSERT INTO OCR_Veiculo (Tipo_Veiculo, Codu, Nome, Estado) VALUES (2,2,'BV Porto de Mós','1' );
 INSERT INTO OCR_Veiculo (Tipo_Veiculo, Codu, Nome, Estado) VALUES (2,2,'BM Viseu (2 amb)','1' );
 INSERT INTO OCR_Veiculo (Tipo_Veiculo, Codu, Nome, Estado) VALUES (2,2,'BV Castro Daire','1' );
 INSERT INTO OCR_Veiculo (Tipo_Veiculo, Codu, Nome, Estado) VALUES (2,2,'BV Mangualde','1' );
 INSERT INTO OCR_Veiculo (Tipo_Veiculo, Codu, Nome, Estado) VALUES (2,2,'BV Sta Comba Dão','1' );
 INSERT INTO OCR_Veiculo (Tipo_Veiculo, Codu, Nome, Estado) VALUES (2,2,'BV Vouzela','1' );
 INSERT INTO OCR_Veiculo (Tipo_Veiculo, Codu, Nome, Estado) VALUES (3,2,'Cantanhede/Mira','1' );
 INSERT INTO OCR_Veiculo (Tipo_Veiculo, Codu, Nome, Estado) VALUES (3,2,'Peniche','1' );
 INSERT INTO OCR_Veiculo (Tipo_Veiculo, Codu, Nome, Estado) VALUES (3,2,'Seia','1' );
 INSERT INTO OCR_Veiculo (Tipo_Veiculo, Codu, Nome, Estado) VALUES (3,2,'Pombal','1' );
 INSERT INTO OCR_Veiculo (Tipo_Veiculo, Codu, Nome, Estado) VALUES (3,2,'Tondela','1' );
 INSERT INTO OCR_Veiculo (Tipo_Veiculo, Codu, Nome, Estado) VALUES (1,2,'Hospital Inf D Pedro - Aveiro','1' );
 INSERT INTO OCR_Veiculo (Tipo_Veiculo, Codu, Nome, Estado) VALUES (1,2,'Hospital Amato Lusitano - Castelo Branco','1' );
 INSERT INTO OCR_Veiculo (Tipo_Veiculo, Codu, Nome, Estado) VALUES (1,2,'Hospital da Covilhã','1' );
 INSERT INTO OCR_Veiculo (Tipo_Veiculo, Codu, Nome, Estado) VALUES (1,2,'CHC - Coimbra','1' );
 INSERT INTO OCR_Veiculo (Tipo_Veiculo, Codu, Nome, Estado) VALUES (1,2,'Hospital Figueira Foz','1' );
 INSERT INTO OCR_Veiculo (Tipo_Veiculo, Codu, Nome, Estado) VALUES (1,2,'HUC - Coimbra','1' );
 INSERT INTO OCR_Veiculo (Tipo_Veiculo, Codu, Nome, Estado) VALUES (1,2,'Hospital Sousa Martins - Guarda','1' );
 INSERT INTO OCR_Veiculo (Tipo_Veiculo, Codu, Nome, Estado) VALUES (1,2,'Centro Hospitalar Caldas da Rainha','1' );
 INSERT INTO OCR_Veiculo (Tipo_Veiculo, Codu, Nome, Estado) VALUES (1,2,'Hospital Santo André - Leiria','1' );
 INSERT INTO OCR_Veiculo (Tipo_Veiculo, Codu, Nome, Estado) VALUES (1,2,'Hospital S Teotónio - Viseu','1' );

 --Lisboa
 INSERT INTO OCR_Veiculo (Tipo_Veiculo, Codu, Nome, Estado) VALUES (2,3,'Lisboa 1','1' );
 INSERT INTO OCR_Veiculo (Tipo_Veiculo, Codu, Nome, Estado) VALUES (2,3,'Lisboa 2','1' );
 INSERT INTO OCR_Veiculo (Tipo_Veiculo, Codu, Nome, Estado) VALUES (2,3,'Lisboa 3','1' );
 INSERT INTO OCR_Veiculo (Tipo_Veiculo, Codu, Nome, Estado) VALUES (2,3,'Lisboa 4','1' );
 INSERT INTO OCR_Veiculo (Tipo_Veiculo, Codu, Nome, Estado) VALUES (2,3,'Lisboa 5','1' );
 INSERT INTO OCR_Veiculo (Tipo_Veiculo, Codu, Nome, Estado) VALUES (2,3,'Lisboa 6','1' );
 INSERT INTO OCR_Veiculo (Tipo_Veiculo, Codu, Nome, Estado) VALUES (2,3,'Lisboa 7','1' );
 INSERT INTO OCR_Veiculo (Tipo_Veiculo, Codu, Nome, Estado) VALUES (2,3,'Lisboa 9','1' );
 INSERT INTO OCR_Veiculo (Tipo_Veiculo, Codu, Nome, Estado) VALUES (2,3,'Lisboa 10','1' );
 INSERT INTO OCR_Veiculo (Tipo_Veiculo, Codu, Nome, Estado) VALUES (2,3,'Lisboa 11','1' );
 INSERT INTO OCR_Veiculo (Tipo_Veiculo, Codu, Nome, Estado) VALUES (2,3,'Lisboa 12','1' );
 INSERT INTO OCR_Veiculo (Tipo_Veiculo, Codu, Nome, Estado) VALUES (2,3,'Lisboa 13','1' );
 INSERT INTO OCR_Veiculo (Tipo_Veiculo, Codu, Nome, Estado) VALUES (2,3,'Lisboa 14','1' );
 INSERT INTO OCR_Veiculo (Tipo_Veiculo, Codu, Nome, Estado) VALUES (2,3,'Lisboa 15','1' );
 INSERT INTO OCR_Veiculo (Tipo_Veiculo, Codu, Nome, Estado) VALUES (2,3,'Lisboa 16','1' );
 INSERT INTO OCR_Veiculo (Tipo_Veiculo, Codu, Nome, Estado) VALUES (2,3,'Lisboa 17','1' );
 INSERT INTO OCR_Veiculo (Tipo_Veiculo, Codu, Nome, Estado) VALUES (2,3,'Lisboa 18','1' );
 INSERT INTO OCR_Veiculo (Tipo_Veiculo, Codu, Nome, Estado) VALUES (2,3,'Lisboa 19','1' );
 INSERT INTO OCR_Veiculo (Tipo_Veiculo, Codu, Nome, Estado) VALUES (2,3,'Amadora 1','1' );
 INSERT INTO OCR_Veiculo (Tipo_Veiculo, Codu, Nome, Estado) VALUES (2,3,'Setúbal 1','1' );
 INSERT INTO OCR_Veiculo (Tipo_Veiculo, Codu, Nome, Estado) VALUES (2,3,'Setúbal 2','1' );
 INSERT INTO OCR_Veiculo (Tipo_Veiculo, Codu, Nome, Estado) VALUES (5,3,'Mota Lisboa 1','1' );
 INSERT INTO OCR_Veiculo (Tipo_Veiculo, Codu, Nome, Estado) VALUES (2,3,'BV Beja','1' );
 INSERT INTO OCR_Veiculo (Tipo_Veiculo, Codu, Nome, Estado) VALUES (2,3,'BV Ferreira Alentejo ','1' );
 INSERT INTO OCR_Veiculo (Tipo_Veiculo, Codu, Nome, Estado) VALUES (2,3,'BV Mertola ','1' );
 INSERT INTO OCR_Veiculo (Tipo_Veiculo, Codu, Nome, Estado) VALUES (2,3,'BV Moura ','1' );
 INSERT INTO OCR_Veiculo (Tipo_Veiculo, Codu, Nome, Estado) VALUES (2,3,'BV Odemira ','1' );
 INSERT INTO OCR_Veiculo (Tipo_Veiculo, Codu, Nome, Estado) VALUES (2,3,'BV Ourique ','1' );
 INSERT INTO OCR_Veiculo (Tipo_Veiculo, Codu, Nome, Estado) VALUES (2,3,'BV Arraiolos ','1' );
 INSERT INTO OCR_Veiculo (Tipo_Veiculo, Codu, Nome, Estado) VALUES (2,3,'BV Borba','1' );
 INSERT INTO OCR_Veiculo (Tipo_Veiculo, Codu, Nome, Estado) VALUES (2,3,'BV Estremoz','1' );
 INSERT INTO OCR_Veiculo (Tipo_Veiculo, Codu, Nome, Estado) VALUES (2,3,'BV Evora','1' );
 INSERT INTO OCR_Veiculo (Tipo_Veiculo, Codu, Nome, Estado) VALUES (2,3,'BV Montemor Novo','1' );
 INSERT INTO OCR_Veiculo (Tipo_Veiculo, Codu, Nome, Estado) VALUES (2,3,'BV Mora','1' );
 INSERT INTO OCR_Veiculo (Tipo_Veiculo, Codu, Nome, Estado) VALUES (2,3,'BV Reguengos Monsaraz ','1' );
 INSERT INTO OCR_Veiculo (Tipo_Veiculo, Codu, Nome, Estado) VALUES (2,3,'BV Vendas Novas','1' );
 INSERT INTO OCR_Veiculo (Tipo_Veiculo, Codu, Nome, Estado) VALUES (2,3,'BV Alcabideche','1' );
 INSERT INTO OCR_Veiculo (Tipo_Veiculo, Codu, Nome, Estado) VALUES (2,3,'BV Alcoentre','1' );
 INSERT INTO OCR_Veiculo (Tipo_Veiculo, Codu, Nome, Estado) VALUES (2,3,'BV Alenquer','1' );
 INSERT INTO OCR_Veiculo (Tipo_Veiculo, Codu, Nome, Estado) VALUES (2,3,'BV Algés','1' );
 INSERT INTO OCR_Veiculo (Tipo_Veiculo, Codu, Nome, Estado) VALUES (2,3,'BV Algueirão ','1' );
 INSERT INTO OCR_Veiculo (Tipo_Veiculo, Codu, Nome, Estado) VALUES (2,3,'BV Almoçageme','1' );
 INSERT INTO OCR_Veiculo (Tipo_Veiculo, Codu, Nome, Estado) VALUES (2,3,'BV Alverca','1' );
 INSERT INTO OCR_Veiculo (Tipo_Veiculo, Codu, Nome, Estado) VALUES (2,3,'BV Amadora (2 Amb.)','1' );
 INSERT INTO OCR_Veiculo (Tipo_Veiculo, Codu, Nome, Estado) VALUES (2,3,'BV Barcarena','1' );
 INSERT INTO OCR_Veiculo (Tipo_Veiculo, Codu, Nome, Estado) VALUES (2,3,'BV Belas','1' );
 INSERT INTO OCR_Veiculo (Tipo_Veiculo, Codu, Nome, Estado) VALUES (2,3,'BV Bucelas','1' );
 INSERT INTO OCR_Veiculo (Tipo_Veiculo, Codu, Nome, Estado) VALUES (2,3,'BV Cacém (Agualva-Cacém)','1' );
 INSERT INTO OCR_Veiculo (Tipo_Veiculo, Codu, Nome, Estado) VALUES (2,3,'BV Carnaxide','1' );
 INSERT INTO OCR_Veiculo (Tipo_Veiculo, Codu, Nome, Estado) VALUES (2,3,'BV Cascais','1' );
 INSERT INTO OCR_Veiculo (Tipo_Veiculo, Codu, Nome, Estado) VALUES (2,3,'BV Dafundo','1' );
 INSERT INTO OCR_Veiculo (Tipo_Veiculo, Codu, Nome, Estado) VALUES (2,3,'BV Estoril','1' );
 INSERT INTO OCR_Veiculo (Tipo_Veiculo, Codu, Nome, Estado) VALUES (2,3,'BV Lourinhã','1' );
 INSERT INTO OCR_Veiculo (Tipo_Veiculo, Codu, Nome, Estado) VALUES (2,3,'BV Loures','1' );
 INSERT INTO OCR_Veiculo (Tipo_Veiculo, Codu, Nome, Estado) VALUES (2,3,'BV Malveira','1' );
 INSERT INTO OCR_Veiculo (Tipo_Veiculo, Codu, Nome, Estado) VALUES (2,3,'BV Odivelas','1' );
 INSERT INTO OCR_Veiculo (Tipo_Veiculo, Codu, Nome, Estado) VALUES (2,3,'BV Oeiras','1' );
 INSERT INTO OCR_Veiculo (Tipo_Veiculo, Codu, Nome, Estado) VALUES (2,3,'BV Queluz','1' );
 INSERT INTO OCR_Veiculo (Tipo_Veiculo, Codu, Nome, Estado) VALUES (2,3,'BV Sacavém','1' );
 INSERT INTO OCR_Veiculo (Tipo_Veiculo, Codu, Nome, Estado) VALUES (2,3,'BV Sintra','1' );
 INSERT INTO OCR_Veiculo (Tipo_Veiculo, Codu, Nome, Estado) VALUES (2,3,'BV Torres Vedras','1' );
 INSERT INTO OCR_Veiculo (Tipo_Veiculo, Codu, Nome, Estado) VALUES (2,3,'BV Vila F. Xira','1' );
 INSERT INTO OCR_Veiculo (Tipo_Veiculo, Codu, Nome, Estado) VALUES (2,3,'BV Elvas','1' );
 INSERT INTO OCR_Veiculo (Tipo_Veiculo, Codu, Nome, Estado) VALUES (2,3,'BV Nisa','1' );
 INSERT INTO OCR_Veiculo (Tipo_Veiculo, Codu, Nome, Estado) VALUES (2,3,'BV Ponte Sor ','1' );
 INSERT INTO OCR_Veiculo (Tipo_Veiculo, Codu, Nome, Estado) VALUES (2,3,'BV Portalegre','1' );
 INSERT INTO OCR_Veiculo (Tipo_Veiculo, Codu, Nome, Estado) VALUES (2,3,'BM Abrantes','1' );
 INSERT INTO OCR_Veiculo (Tipo_Veiculo, Codu, Nome, Estado) VALUES (2,3,'BM Cartaxo','1' );
 INSERT INTO OCR_Veiculo (Tipo_Veiculo, Codu, Nome, Estado) VALUES (2,3,'BM Coruche','1' );
 INSERT INTO OCR_Veiculo (Tipo_Veiculo, Codu, Nome, Estado) VALUES (2,3,'BM Santarem','1' );
 INSERT INTO OCR_Veiculo (Tipo_Veiculo, Codu, Nome, Estado) VALUES (2,3,'BM Tomar','1' );
 INSERT INTO OCR_Veiculo (Tipo_Veiculo, Codu, Nome, Estado) VALUES (2,3,'BV Benavente','1' );
 INSERT INTO OCR_Veiculo (Tipo_Veiculo, Codu, Nome, Estado) VALUES (2,3,'BV Ourem (2 Amb.)','1' );
 INSERT INTO OCR_Veiculo (Tipo_Veiculo, Codu, Nome, Estado) VALUES (2,3,'BV Pernes','1' );
 INSERT INTO OCR_Veiculo (Tipo_Veiculo, Codu, Nome, Estado) VALUES (2,3,'BV Rio Maior','1' );
 INSERT INTO OCR_Veiculo (Tipo_Veiculo, Codu, Nome, Estado) VALUES (2,3,'BV Samora Correia','1' );
 INSERT INTO OCR_Veiculo (Tipo_Veiculo, Codu, Nome, Estado) VALUES (2,3,'BV Torres Novas','1' );
 INSERT INTO OCR_Veiculo (Tipo_Veiculo, Codu, Nome, Estado) VALUES (2,3,'BV Águas de Moura','1' );
 INSERT INTO OCR_Veiculo (Tipo_Veiculo, Codu, Nome, Estado) VALUES (2,3,'BV Alcacer do Sal','1' );
 INSERT INTO OCR_Veiculo (Tipo_Veiculo, Codu, Nome, Estado) VALUES (2,3,'BV Barreiro','1' );
 INSERT INTO OCR_Veiculo (Tipo_Veiculo, Codu, Nome, Estado) VALUES (2,3,'BV Cacilhas','1' );
 INSERT INTO OCR_Veiculo (Tipo_Veiculo, Codu, Nome, Estado) VALUES (2,3,'BV Cacilhas (Ext. Costa)','1' );
 INSERT INTO OCR_Veiculo (Tipo_Veiculo, Codu, Nome, Estado) VALUES (2,3,'BV Grandola','1' );
 INSERT INTO OCR_Veiculo (Tipo_Veiculo, Codu, Nome, Estado) VALUES (2,3,'BV Moita','1' );
 INSERT INTO OCR_Veiculo (Tipo_Veiculo, Codu, Nome, Estado) VALUES (2,3,'BV Montijo','1' );
 INSERT INTO OCR_Veiculo (Tipo_Veiculo, Codu, Nome, Estado) VALUES (2,3,'BV Palmela','1' );
 INSERT INTO OCR_Veiculo (Tipo_Veiculo, Codu, Nome, Estado) VALUES (2,3,'BV Pinhal Novo','1' );
 INSERT INTO OCR_Veiculo (Tipo_Veiculo, Codu, Nome, Estado) VALUES (2,3,'BV Santiago Cacém','1' );
 INSERT INTO OCR_Veiculo (Tipo_Veiculo, Codu, Nome, Estado) VALUES (2,3,'BV Seixal','1' );
 INSERT INTO OCR_Veiculo (Tipo_Veiculo, Codu, Nome, Estado) VALUES (2,3,'BV Sesimbra','1' );
 INSERT INTO OCR_Veiculo (Tipo_Veiculo, Codu, Nome, Estado) VALUES (2,3,'BV Sesimbra (Ext. Q.Conde)','1' );
 INSERT INTO OCR_Veiculo (Tipo_Veiculo, Codu, Nome, Estado) VALUES (2,3,'CBS Setubal','1' );
 INSERT INTO OCR_Veiculo (Tipo_Veiculo, Codu, Nome, Estado) VALUES (2,3,'CBS Setubal (Ext. Azeitão)','1' );
 INSERT INTO OCR_Veiculo (Tipo_Veiculo, Codu, Nome, Estado) VALUES (3,3,'Odemira','1' );
 INSERT INTO OCR_Veiculo (Tipo_Veiculo, Codu, Nome, Estado) VALUES (3,3,'Moura','1' );
 INSERT INTO OCR_Veiculo (Tipo_Veiculo, Codu, Nome, Estado) VALUES (3,3,'Estremoz','1' );
 INSERT INTO OCR_Veiculo (Tipo_Veiculo, Codu, Nome, Estado) VALUES (3,3,'Elvas','1' );
 INSERT INTO OCR_Veiculo (Tipo_Veiculo, Codu, Nome, Estado) VALUES (1,3,'Hospital do Espírito Santo - Évora','1' );
 INSERT INTO OCR_Veiculo (Tipo_Veiculo, Codu, Nome, Estado) VALUES (1,3,'Hospital Dr Jose M Grande - Portalegre','1' );
 INSERT INTO OCR_Veiculo (Tipo_Veiculo, Codu, Nome, Estado) VALUES (1,3,'Centro Hospitalar do Baixo Alentejo - Beja','1' );
 INSERT INTO OCR_Veiculo (Tipo_Veiculo, Codu, Nome, Estado) VALUES (1,3,'Centro Hospitalar de Cascais','1' );
 INSERT INTO OCR_Veiculo (Tipo_Veiculo, Codu, Nome, Estado) VALUES (1,3,'CODU Lisboa','1' );
 INSERT INTO OCR_Veiculo (Tipo_Veiculo, Codu, Nome, Estado) VALUES (1,3,'Hospital Curry Cabral - Lisboa','1' );
 INSERT INTO OCR_Veiculo (Tipo_Veiculo, Codu, Nome, Estado) VALUES (1,3,'Hospital de Santa Maria - Lisboa','1' );
 INSERT INTO OCR_Veiculo (Tipo_Veiculo, Codu, Nome, Estado) VALUES (1,3,'Hospital Reynaldo dos Santos - Vila Franca Xira','1' );
 INSERT INTO OCR_Veiculo (Tipo_Veiculo, Codu, Nome, Estado) VALUES (1,3,'Hospital S Francisco Xavier - Lisboa','1' );
 INSERT INTO OCR_Veiculo (Tipo_Veiculo, Codu, Nome, Estado) VALUES (1,3,'Centro Hospitalar do Médio Tejo - Abrantes','1' );
 INSERT INTO OCR_Veiculo (Tipo_Veiculo, Codu, Nome, Estado) VALUES (1,3,'Hospital Distrital Santarém','1' );
 INSERT INTO OCR_Veiculo (Tipo_Veiculo, Codu, Nome, Estado) VALUES (1,3,'Hospital de São Bernardo - Setúbal','1' );
 INSERT INTO OCR_Veiculo (Tipo_Veiculo, Codu, Nome, Estado) VALUES (1,3,'Hospital Garcia da Orta - Almada','1' );
 INSERT INTO OCR_Veiculo (Tipo_Veiculo, Codu, Nome, Estado) VALUES (1,3,'Hospital São José','1' );
 INSERT INTO OCR_Veiculo (Tipo_Veiculo, Codu, Nome, Estado) VALUES (4,3,'Heli 1 (Lisboa)','1' );

 --Faro
 INSERT INTO OCR_Veiculo (Tipo_Veiculo, Codu, Nome, Estado) VALUES (2,4,'Faro 1','1' );
 INSERT INTO OCR_Veiculo (Tipo_Veiculo, Codu, Nome, Estado) VALUES (2,4,'Faro 2','1' );
 INSERT INTO OCR_Veiculo (Tipo_Veiculo, Codu, Nome, Estado) VALUES (2,4,'Olhão','1' );
 INSERT INTO OCR_Veiculo (Tipo_Veiculo, Codu, Nome, Estado) VALUES (2,4,'BM Faro (2 amb)','1' );
 INSERT INTO OCR_Veiculo (Tipo_Veiculo, Codu, Nome, Estado) VALUES (2,4,'BM Loulé','1' );
 INSERT INTO OCR_Veiculo (Tipo_Veiculo, Codu, Nome, Estado) VALUES (2,4,'BM Olhão','1' );
 INSERT INTO OCR_Veiculo (Tipo_Veiculo, Codu, Nome, Estado) VALUES (2,4,'BM Tavira','1' );
 INSERT INTO OCR_Veiculo (Tipo_Veiculo, Codu, Nome, Estado) VALUES (2,4,'BV Albufeira (2 amb)','1' );
 INSERT INTO OCR_Veiculo (Tipo_Veiculo, Codu, Nome, Estado) VALUES (2,4,'BV Aljezur','1' );
 INSERT INTO OCR_Veiculo (Tipo_Veiculo, Codu, Nome, Estado) VALUES (2,4,'BV Lagoa','1' );
 INSERT INTO OCR_Veiculo (Tipo_Veiculo, Codu, Nome, Estado) VALUES (2,4,'BV Lagos','1' );
 INSERT INTO OCR_Veiculo (Tipo_Veiculo, Codu, Nome, Estado) VALUES (2,4,'BV Messines (2 amb)','1' );
 INSERT INTO OCR_Veiculo (Tipo_Veiculo, Codu, Nome, Estado) VALUES (2,4,'BV Monchique','1' );
 INSERT INTO OCR_Veiculo (Tipo_Veiculo, Codu, Nome, Estado) VALUES (2,4,'BV Portimão','1' );
 INSERT INTO OCR_Veiculo (Tipo_Veiculo, Codu, Nome, Estado) VALUES (2,4,'BV Silves','1' );
 INSERT INTO OCR_Veiculo (Tipo_Veiculo, Codu, Nome, Estado) VALUES (2,4,'BV Vila Bispo','1' );
 INSERT INTO OCR_Veiculo (Tipo_Veiculo, Codu, Nome, Estado) VALUES (2,4,'BV VRS António','1' );
 INSERT INTO OCR_Veiculo (Tipo_Veiculo, Codu, Nome, Estado) VALUES (3,4,'Lagos','1' );
 INSERT INTO OCR_Veiculo (Tipo_Veiculo, Codu, Nome, Estado) VALUES (3,4,'Tavira','1' );
 INSERT INTO OCR_Veiculo (Tipo_Veiculo, Codu, Nome, Estado) VALUES (1,4,'Centro de Saúde de Albufeira','1' );
 INSERT INTO OCR_Veiculo (Tipo_Veiculo, Codu, Nome, Estado) VALUES (1,4,'Hospital Barlavento Algarvio (Portimão)','1' );
 INSERT INTO OCR_Veiculo (Tipo_Veiculo, Codu, Nome, Estado) VALUES (1,4,'Hospital Distrital de Faro','1' );



	
 