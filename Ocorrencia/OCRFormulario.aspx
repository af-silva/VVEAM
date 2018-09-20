<%@ page title="" language="C#" masterpagefile="~/Layouts/ContentLayout.master" autoeventwireup="true" inherits="Ocorrencia_Preenchimento, App_Web_dkzhjplt" enableeventvalidation="true" debug="true" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>
<%@ Register Assembly="CustomWebControls" Namespace="CustomWebControls" TagPrefix="ddl" %>
<asp:Content ID="Content1" ContentPlaceHolderID="PageHeader" runat="Server">
    <title>VVEAM - Formulario Ocorrência</title>

    <script type="text/javascript">
        
        
        function countDown() {
            if ('#<%=time.ClientID %>' != null) {
                s = document.getElementById('<%= time.ClientID %>').firstChild.nodeValue;
                s--;
                if (s < 0) {
                    s = <%=(timerForm/1000)%>
                }
                document.getElementById('<%= time.ClientID %>').firstChild.nodeValue = s;
                cd = setTimeout('countDown()', 1000);
            }
        }


        function pageLoad(sender, args) {
            smoothAnimationForm();
        }


        function smoothAnimationForm() {
            var collPanel = $find('<%= cpePreHosp.ClientID %>')
            var collPane2 = $find('<%= cpeLocal.ClientID %>')
            var collPane3 = $find('<%= cpeDecisao.ClientID %>')
            var collPane4 = $find('<%= cpeAdmissao.ClientID %>')
            collPanel._animation._fps = 40;
            collPanel._animation._duration = 0;
            collPane2._animation._fps = 40;
            collPane2._animation._duration = 0;

            if (collPane3 != null) {

                collPane3._animation._fps = 40;
                collPane3._animation._duration = 0;
            }
            if (collPane4 != null) {

                collPane4._animation._fps = 40;
                collPane4._animation._duration = 0;
            }
        }







        /* Manual client-side validation of Validator Groups */
        function fnJSOnFormSubmit() {
            var isGrpOneValid = Page_ClientValidate("panel1Error");
            var isGrpTwoValid = Page_ClientValidate("panel2Error");

            var i;
            for (i = 0; i < Page_Validators.length; i++) {
                ValidatorValidate(Page_Validators[i]); //this forces validation in all groups
            }

            //display all summaries.
            for (i = 0; i < Page_ValidationSummaries.length; i++) {
                summary = Page_ValidationSummaries[i];
                //does this summary need to be displayed?
                if (fnJSDisplaySummary(summary.validationGroup)) {
                    summary.style.display = ""; //"none"; "inline";
                }
            }

            if (isGrpOneValid && isGrpTwoValid)
                return true; //postback only when BOTH validations pass.
            else
                return false;
        }




        /* determines if a Validation Summary for a given group needs to display */
        function fnJSDisplaySummary(valGrp) {
            var rtnVal = false;
            for (i = 0; i < Page_Validators.length; i++) {
                if (Page_Validators[i].validationGroup == valGrp) {
                    if (!Page_Validators[i].isvalid) { //at least one is not valid.
                        rtnVal = true;
                        break; //exit for-loop, we are done.
                    }
                }
            }
            return rtnVal;
        }
    </script>

    <script type="text/javascript">

        $(document).ready(function () {
            HighlightControlToValidate();
            if ('#<%=BSubmeter.ClientID %>' != null) {
                RunValidators('#<%=BSubmeter.ClientID %>');
            } else {
                RunValidators('#<%=BActualizar.ClientID %>');
            }

        });



        function RunValidators(buttonControl) {
            $(buttonControl).click(function () {
                if (typeof (Page_Validators) != "undefined") {
                    for (var i = 0; i < Page_Validators.length; i++) {
                        if (!Page_Validators[i].isvalid) {
                            $('#' + Page_Validators[i].controltovalidate).css("border-color", "#FF0000");
                            $('#' + Page_Validators[i].controltovalidate).css("border-width", "2px");
                        }
                        else {
                            $('#' + Page_Validators[i].controltovalidate).css("border-color", "#7F9DB9");
                            $('#' + Page_Validators[i].controltovalidate).css("border-width", "1px");
                        }
                    }
                }
            });
        }


        function HighlightControlToValidate() {
            if (typeof (Page_Validators) != "undefined") {
                for (var i = 0; i < Page_Validators.length; i++) {
                    $('#' + Page_Validators[i].controltovalidate).blur(function () {
                        var validatorctrl = getValidatorUsingControl($(this).attr("ID"));
                        if (validatorctrl != null && !validatorctrl.isvalid) {
                            $(this).css("border-color", "#FF0000");
                            $(this).css("border-width", "2px");
                        }
                        else {
                            $(this).css("border-color", "#7F9DB9");
                            $(this).css("border-width", "1px");
                        }
                    });
                }
            }
        }



        function getValidatorUsingControl(controltovalidate) {
            var length = Page_Validators.length;
            for (var j = 0; j < length; j++) {
                if (Page_Validators[j].controltovalidate == controltovalidate) {
                    return Page_Validators[j];
                }
            }
            return null;
        }



    </script>

    <link href="../Styles/ocrstyles.css" rel="stylesheet" type="text/css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="NavigationBar" runat="Server">

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="Content" runat="Server">
    <asp:ScriptManager ID="smFormulario" runat="server" EnableScriptGlobalization="True" />

    <asp:UpdatePanel ID="upWarning" runat="server" UpdateMode="Conditional" ChildrenAsTriggers="false">
        <ContentTemplate>
            <div id="warningDiv" runat="server" visible="false" style="width:550px; margin: 50px auto 50px auto; ">
                    
                <div style="float:left;">
                    <asp:Image ID="warningImage" runat="server" ImageUrl="~/Images/Icons/warning.png" 
                        Width="90px" ImageAlign="Middle"/>
                </div>

                <div style="float:right;">
                    <asp:Label ID="lMsg" runat="server" Font-Size="28px" Font-Bold="true" Width="450px"></asp:Label>
                </div>

                <div class="clear"></div>
            </div>
        </ContentTemplate>
     </asp:UpdatePanel>

     <asp:UpdatePanel ID="upContent" runat="server" UpdateMode="Conditional" >
        <ContentTemplate>
     <div id="pageContentDiv" runat="server" >

    <%--################################     Formulario Primeiro e Sgundo Painel           ###################################--%>
    <asp:UpdatePanel ID="upFormulario" runat="server" UpdateMode="Conditional">
        <ContentTemplate>
        
            <%--################################     INICIO primeiro painel                ###################################--%>
            <%--Tab Pre-Hospitalar - Titulo       --%>
            <asp:Panel ID="pHeaderPreHosp" runat="server" CssClass="panel-header">
                <div class="collapse-text">
                    <asp:Label ID="lblTextPreHosp" runat="server" />
                </div>
                <div class="collapse-icon">
                    <asp:Image ID="imagePreHosp" runat="server" />
                </div>
            </asp:Panel>
            <%--Tab Pre-Hospitalar - Corpo        --%>
            <asp:Panel ID="pBodyPreHosp" runat="server" CssClass="panel-body" DefaultButton="bSubmeter">
                <div class="row1-c1">
                    <div class="row1-row">

                        <asp:Label ID="lCodu" runat="server" CssClass="label-codu">CODU</asp:Label>

                        <ddl:NVDropDownList ID="ddlCodu" runat="server" CssClass="ddl-codu" />
                        <asp:TextBox ID="tbCodu" runat="server" Enabled="false" Visible="false" CssClass="ddl-codu text-box-values" />
                        
                        <ajaxToolkit:CascadingDropDown ID="cddCodu" runat="server" TargetControlID="ddlCodu"
                            Category="Codu" PromptText=" " LoadingText="Por favor aguarde" ServicePath="~/WebServices/Localizacao.asmx"
                            ServiceMethod="GetCodu">
                        </ajaxToolkit:CascadingDropDown>
                    </div>
                </div>
                <asp:RequiredFieldValidator ID="rfvCodu" runat="server" ControlToValidate="ddlCodu"
                    ValidationGroup="panel1Error" ErrorMessage="Por Favor seleccione o CODU responsavel pela ocorrência."
                    Display="None" InitialValue="-1">
                </asp:RequiredFieldValidator>

                <div class="row1-c2">
                    <div class="row1-row">
                        <asp:Label ID="lFichaCodu" runat="server" CssClass="label-fichacodu">Ficha CODU</asp:Label>
                        <asp:TextBox ID="tbFichaCodu" runat="server" CssClass="tb-fichacodu" />
                    </div>
                    <asp:RegularExpressionValidator runat="server" ID="revFichaCodu" ControlToValidate="tbFichaCodu"
                        ValidationExpression="^[0-9]{5,12}$" ValidationGroup="panel1Error" ErrorMessage="A Ficha CODU só permite números entre 5 e 12 digitos."
                        Display="none">
                    </asp:RegularExpressionValidator>
                    <asp:RequiredFieldValidator ID="rfvFichaCodu" runat="server" ControlToValidate="tbFichaCodu"
                        ValidationGroup="panel1Error" ErrorMessage="Por Favor insira o numero do precesso na Ficha Codu."
                        Display="None">
                    </asp:RequiredFieldValidator>
                </div>
                <div class="row1-c3">
                    <div class="row1-row">
                        <asp:Label ID="lData" runat="server" CssClass="label-data">Data</asp:Label>
                        <asp:TextBox ID="tbData" runat="server" CssClass="tb-dataocr" />
                        <ajaxToolkit:CalendarExtender ID="ceData" runat="server" TargetControlID="tbData"
                            PopupPosition="BottomRight" TodaysDateFormat="d MMMM, yyyy">
                        </ajaxToolkit:CalendarExtender>
                        <asp:RegularExpressionValidator runat="server" ID="revData" ControlToValidate="tbData"
                            ValidationExpression="^([0]?[1-9]|[1|2][0-9]|[3][0|1])[-]([0]?[1-9]|[1][0-2])[-]([0-9]{4}|[0-9]{2})$"
                            ValidationGroup="panel1Error" ErrorMessage="Insira a Data da ocorrência no seguinte formato dd-mm-aaaa."
                            Display="None">
                        </asp:RegularExpressionValidator>
                        <asp:RequiredFieldValidator ID="rvfData" runat="server" ControlToValidate="tbData"
                            ValidationGroup="panel1Error" ErrorMessage="Por favor insira a Data da ocorrência."
                            Display="None">
                        </asp:RequiredFieldValidator>
                    </div>
                </div>
                <div class="clear">
                </div>
                <hr class="hr-line" />
                <div class="row23-c1">
                    <div class="row23-row">
                        <asp:Label ID="lDistrito" runat="server" CssClass="label-localizacao">Distrito</asp:Label>
                        
                        <ddl:NVDropDownList ID="ddlDistrito" runat="server" CssClass="ddl-localizacao" />
                        <asp:TextBox ID="tbDistrito" runat="server" Enabled="false" Visible="false" CssClass="ddl-localizacao text-box-values" />
                        
                        <ajaxToolkit:CascadingDropDown ID="cddDistrito" runat="server" TargetControlID="ddlDistrito"
                            Category="Distrito" PromptText="Seleccione um Distrito" LoadingText="Por favor aguarde"
                            ServicePath="~/WebServices/Localizacao.asmx" ServiceMethod="GetDistrito" PromptValue="-1"
                            SelectedValue="Seleccione um Distrito">
                        </ajaxToolkit:CascadingDropDown>
                        <asp:RequiredFieldValidator ID="rfvDistrito" runat="server" ControlToValidate="ddlDistrito"
                            ValidationGroup="panel1Error" ErrorMessage="Por favor indique o Distrito." Display="None"
                            InitialValue="-1"> 
                        </asp:RequiredFieldValidator>
                    </div>
                    <div class="row23-row">
                        <asp:Label ID="lConcelho" runat="server" CssClass="label-localizacao">Concelho</asp:Label>
                        
                        <ddl:NVDropDownList ID="ddlConcelho" runat="server" CssClass="ddl-localizacao" />
                        <asp:TextBox ID="tbConcelho" runat="server" Enabled="false" Visible="false" CssClass="ddl-localizacao text-box-values" />
                        
                        <ajaxToolkit:CascadingDropDown ID="cddConcelho" runat="server" TargetControlID="ddlConcelho"
                            ParentControlID="ddlDistrito" Category="Concelho" PromptText="Seleccione um Concelho"
                            LoadingText="Por favor aguarde" ServicePath="~/WebServices/Localizacao.asmx"
                            ServiceMethod="GetConcelhosFromDistrito" SelectedValue="Seleccione um Concelho"
                            PromptValue="-1">
                        </ajaxToolkit:CascadingDropDown>
                        <asp:RequiredFieldValidator ID="rfvConcelho" runat="server" ControlToValidate="ddlConcelho"
                            ValidationGroup="panel1Error" ErrorMessage="Por favor indique o Concelho." Display="None"
                            InitialValue="-1"> 
                        </asp:RequiredFieldValidator>

                    </div>
                    <div class="row23-row">
                        <asp:Label ID="lFreguesia" runat="server" CssClass="label-localizacao">Freguesia</asp:Label>
                        
                        <ddl:NVDropDownList ID="ddlFreguesia" runat="server" CssClass="ddl-localizacao" />
                        <asp:TextBox ID="tbFreguesia" runat="server" Enabled="false" Visible="false" CssClass="ddl-localizacao text-box-values" />
                        
                        <ajaxToolkit:CascadingDropDown ID="cddFreguesia" runat="server" TargetControlID="ddlFreguesia"
                            ParentControlID="ddlConcelho" Category="Freguesia" PromptText="Seleccione um Freguesia"
                            LoadingText="Por favor aguarde" ServicePath="~/WebServices/Localizacao.asmx"
                            ServiceMethod="GetFreguesiasFromConcelho" PromptValue="-1" SelectedValue="Seleccione um Freguesia">
                        </ajaxToolkit:CascadingDropDown>
                        <asp:RequiredFieldValidator ID="rfvFreguesia" runat="server" ControlToValidate="ddlFreguesia"
                            ValidationGroup="panel1Error" ErrorMessage="Por favor indique a Freguesia." Display="None"
                            InitialValue="-1"> 
                        </asp:RequiredFieldValidator>
                    </div>
                    <div class="row23-row">

                        <asp:Label ID="lContacto" runat="server" CssClass="label-localizacao">Local de Contacto</asp:Label>
                        <asp:DropDownList ID="ddlLocalContacto" runat="server" CssClass="ddl-localizacao" />
                        <asp:TextBox ID="tbLocalContacto" runat="server" Enabled="false" Visible="false" CssClass="ddl-localizacao text-box-values" />

                    </div>
                </div>
                <div class="row23-c2">
                    <div class="row23-row">
                        <asp:Label ID="lGenero" runat="server" CssClass="label-genero">Género</asp:Label>
                        
                        <asp:DropDownList ID="ddlGenero" runat="server" CssClass="ddl-genero" />
                        <asp:TextBox ID="tbGenero" runat="server" Enabled="false" Visible="false" CssClass="ddl-genero text-box-values" Width="100px" Style="margin-left:2px"/>

                    </div>
                    <asp:UpdatePanel ID="upDataNascimento" runat="server" UpdateMode="Conditional" ChildrenAsTriggers="false">
                        <ContentTemplate>
                            <div class="row23-row">
                                <asp:Label ID="lDataNascimento" runat="server" CssClass="label-datanascimento">Data Nascimento</asp:Label>
                                <asp:TextBox ID="tbDataNascimento" runat="server" CssClass="tb-datanascimento" OnTextChanged="tbDataNascimento_TextChanged"
                                    AutoPostBack="true" />
                                <ajaxToolkit:CalendarExtender ID="ceDataNascimento" runat="server" TargetControlID="tbDataNascimento"
                                    PopupButtonID="pbDataNascimento" PopupPosition="BottomRight" TodaysDateFormat="MMMM d, yyyy">
                                </ajaxToolkit:CalendarExtender>
                                <asp:Label ID="lIdade" runat="server" CssClass="label-idade">Idade</asp:Label>
                                <asp:TextBox ID="tbIdade" runat="server" CssClass="tb-idade" OnTextChanged="tbIdade_TextChanged"
                                    AutoPostBack="true" />
                                <asp:RegularExpressionValidator runat="server" ID="revDataNascimento" ControlToValidate="tbDataNascimento"
                                    ValidationExpression="^([0]?[1-9]|[1|2][0-9]|[3][0|1])[-]([0]?[1-9]|[1][0-2])[-]([0-9]{4}|[0-9]{2})$"
                                    ValidationGroup="panel1Error" ErrorMessage="Insira a Data de Nascimento no seguinte formato dd-mm-aaaa."
                                    Display="None"> 
                                </asp:RegularExpressionValidator>
                                <asp:RegularExpressionValidator runat="server" ID="revIdade" ControlToValidate="tbIdade"
                                    ValidationExpression="^[0-9]{1,3}$" ValidationGroup="panel1Error" ErrorMessage="O campo Idade só permite digitos até 3 algarimos."
                                    Display="None"> 
                                </asp:RegularExpressionValidator>
                                <asp:RequiredFieldValidator ID="rfvLocalContacto" runat="server" ControlToValidate="ddlLocalContacto"
                                    ValidationGroup="panel1Error" ErrorMessage="Por favor indique o Local Contacto."
                                    Display="None" InitialValue="0"> 
                                </asp:RequiredFieldValidator>
                                <asp:RequiredFieldValidator ID="rfvGenero" runat="server" ControlToValidate="ddlGenero"
                                    ValidationGroup="panel1Error" ErrorMessage="Por favor indique Genero." Display="None"
                                    InitialValue="0"> 
                                </asp:RequiredFieldValidator>
                                <asp:RequiredFieldValidator ID="rfvIdade" runat="server" ControlToValidate="tbIdade"
                                    ValidationGroup="panel1Error" ErrorMessage="Por favor indique a Idade ou a Data de Nascimento."
                                    Display="None"> 
                                </asp:RequiredFieldValidator>
                            </div>
                        </ContentTemplate>
                        <Triggers>
                            <asp:AsyncPostBackTrigger ControlID="tbDataNascimento" EventName="TextChanged" />
                            <asp:AsyncPostBackTrigger ControlID="tbIdade" EventName="TextChanged" />
                        </Triggers>
                    </asp:UpdatePanel>
                    <div class="row23-row">
                        <asp:Label ID="lInicioSintoma" runat="server" CssClass="label-sintomas">Inicio de Sintomas</asp:Label>
                        <asp:TextBox ID="tbInicioSintomasData" runat="server" CssClass="tb-data" />
                        <ajaxToolkit:CalendarExtender ID="ceInicioSintomas" runat="server" TargetControlID="tbInicioSintomasData"
                            PopupPosition="BottomRight" TodaysDateFormat="MMMM d, yyyy" />
                        <span class="travessao">–</span>
                        <asp:TextBox ID="tbInicioSintomasHora" runat="server" CssClass="tb-hora" />
                        <asp:RegularExpressionValidator runat="server" ID="revInicioSintomasData" ControlToValidate="tbInicioSintomasData"
                            ValidationExpression="^([0]?[1-9]|[1|2][0-9]|[3][0|1])[-]([0]?[1-9]|[1][0-2])[-]([0-9]{4}|[0-9]{2})$"
                            ValidationGroup="panel1Error" ErrorMessage="Insira a data de Inicio dos Sintomas no seguinte formato dd-mm-aaaa."
                            Display="None"> 
                        </asp:RegularExpressionValidator>
                        <asp:RegularExpressionValidator runat="server" ID="revInicioSintomasHora" ControlToValidate="tbInicioSintomasHora"
                            ValidationExpression="^(([0-9])|([0-1][0-9])|([2][0-3])):(([0-9])|([0-5][0-9]))$"
                            ValidationGroup="panel1Error" ErrorMessage="Insira a hora de Inicio dos Sintomas no seguinte formato hh:mm."
                            Display="None"> 
                        </asp:RegularExpressionValidator>
                        <asp:RequiredFieldValidator ID="rfvInicioSintomasData" runat="server" ControlToValidate="tbInicioSintomasData"
                            ValidationGroup="panel1Error" ErrorMessage="Por favor indique a data de Inicio dos Sintomas."
                            Display="None"> 
                        </asp:RequiredFieldValidator>
                        <asp:RequiredFieldValidator ID="rfvInicioSintmasHora" runat="server" ControlToValidate="tbInicioSintomasHora"
                            ValidationGroup="panel1Error" ErrorMessage="Por favor indique a hora de Inicio dos Sintomas."
                            Display="None"> 
                        </asp:RequiredFieldValidator>
                    </div>
                    <div class="row23-row">
                        <asp:Label ID="lInstanteContactoData" runat="server" CssClass="label-sintomas">Contacto 122</asp:Label>
                        <asp:TextBox ID="tbInstanteContactoData" runat="server" CssClass="tb-data" />
                        <ajaxToolkit:CalendarExtender ID="ceInstanteContacto" runat="server" TargetControlID="tbInstanteContactoData"
                            PopupPosition="BottomRight" TodaysDateFormat="MMMM d, yyyy" />
                        <span class="travessao">–</span>
                        <asp:TextBox ID="tbInstanteContactoHora" runat="server" CssClass="tb-hora" />
                        <asp:RegularExpressionValidator runat="server" ID="revInstanteContactoData" ControlToValidate="tbInstanteContactoData"
                            ValidationExpression="^([0]?[1-9]|[1|2][0-9]|[3][0|1])[-]([0]?[1-9]|[1][0-2])[-]([0-9]{4}|[0-9]{2})$"
                            ValidationGroup="panel1Error" ErrorMessage="Insira a data de Contacto com o 112 no seguinte formato dd-mm-aaaa."
                            Display="None"> 
                        </asp:RegularExpressionValidator>
                        <asp:RegularExpressionValidator runat="server" ID="revInstanteContactoHora" ControlToValidate="tbInstanteContactoHora"
                            ValidationExpression="^(([0-9])|([0-1][0-9])|([2][0-3])):(([0-9])|([0-5][0-9]))$"
                            ValidationGroup="panel1Error" ErrorMessage="Insira a hora de Contacto com o 112 no seguinte formato hh:mm."
                            Display="None"> 
                        </asp:RegularExpressionValidator>
                        <asp:RequiredFieldValidator ID="rfvInstanteContactoData" runat="server" ControlToValidate="tbInstanteContactoData"
                            ValidationGroup="panel1Error" ErrorMessage="Por favor indique a data de Contacto com o 112."
                            Display="None"> 
                        </asp:RequiredFieldValidator>
                        <asp:RequiredFieldValidator ID="rfvInstanteContactoHora" runat="server" ControlToValidate="tbInstanteContactoHora"
                            ValidationGroup="panel1Error" ErrorMessage="Por favor indique a hora de Contacto com o 112."
                            Display="None"> 
                        </asp:RequiredFieldValidator>
                    </div>
                </div>
                <div class="clear">
                </div>
                <div class="row23-c1">
                    <div class="row23-row">
                        <asp:Label ID="Label1" runat="server" CssClass="label-criterios">Critérios</asp:Label>
                        <asp:CheckBoxList ID="cblCriterios" runat="server" RepeatDirection="Horizontal" RepeatColumns="3"
                            CssClass="cb">
                        </asp:CheckBoxList>
                        <asp:LinqDataSource ID="ldsCriterios" runat="server" EntityTypeName="" ContextTypeName="DAL.VVEAM_Entity"
                            OnSelecting="ldsCriterios_Selecting">
                        </asp:LinqDataSource>
                    </div>
                    <div class="listViewRow23">
                        <div class="row-p2" style="margin-bottom: 15px;">
                           
                            <asp:ListView ID="lvCriterios" runat="server" DataSourceID="ldsCriterios" Enabled="false"
                                Visible="false">
                                <ItemTemplate>
                                    <ul>
                                        <li style="">
                                            <asp:Label ID="lSintoma" runat="server" Text='<%# Eval("NOME") %>'></asp:Label>
                                        </li>
                                    </ul>
                                </ItemTemplate>
                            </asp:ListView>

                        </div>
                    </div>
                    <div class="row23-row">
                        <asp:Label ID="lObervacoes1" runat="server" Style="height: 18px; width: 50px; text-align: left;
                            display: table-cell; padding: 0 5px 0 0; vertical-align: middle;">Observações:</asp:Label>
                        <asp:TextBox ID="tbObservacoesPreHosp" runat="server" TextMode="MultiLine" Style="padding: 5px;
                            width: 250px; max-width: 250px; height: 130px; max-height: 130px;"> </asp:TextBox>
                    </div>
                </div>
                <div class="row23-c2">
                    <asp:UpdatePanel ID="upVeiculos" runat="server" UpdateMode="Conditional" ChildrenAsTriggers="false">
                        <ContentTemplate>
                            <div class="row23-row">
                                <asp:Label ID="lTipoVeiculo" runat="server" CssClass="label-veiculo">Tipo Veiculo</asp:Label>
                                
                                <ddl:NVDropDownList ID="ddlTipoVeiculo" runat="server" CssClass="ddl-veiculo" />
                                <asp:TextBox ID="tbTipoVeiculo" runat="server" Enabled="false" Visible="false" CssClass="ddl-veiculo text-box-values" />
                                
                                <ajaxToolkit:CascadingDropDown ID="cddTipoVeiculo" runat="server" TargetControlID="ddlTipoVeiculo"
                                    ParentControlID="ddlCodu" Category="TipoVeiculo" PromptText="Seleccione um Tipo"
                                    LoadingText="Por favor aguarde" ServicePath="~/WebServices/Veiculo.asmx" ServiceMethod="GetTipoVeiculoFromCodu"
                                    SelectedValue="Seleccione um Tipo" PromptValue="-1">
                                </ajaxToolkit:CascadingDropDown>
                                <asp:CheckBox ID="cbTodosTipos" runat="server" Text="Todos" CssClass="cb-todosVeiculos"
                                    OnCheckedChanged="CBTodosTipos_CheckedChanged" AutoPostBack="true"></asp:CheckBox>
                            </div>
                            <div class="row23-row">
                                <asp:Label ID="lVeiculo" runat="server" CssClass="label-veiculo">Veiculo</asp:Label>
                                
                                <ddl:NVDropDownList ID="ddlVeiculo" runat="server" CssClass="ddl-veiculo" />
                                <asp:TextBox ID="tbVeiculo" runat="server" Enabled="false" Visible="false" CssClass="ddl-veiculo text-box-values" />
                                
                                <ajaxToolkit:CascadingDropDown ID="cddVeiculo" runat="server" TargetControlID="ddlVeiculo"
                                    ParentControlID="ddlTipoVeiculo" Category="Veiculo" PromptText="Seleccione um Veiculo"
                                    LoadingText="Por favor aguarde" ServicePath="~/WebServices/Veiculo.asmx" ServiceMethod="GetVeiculoFromCodu"
                                    SelectedValue="Seleccione um Veiculo" PromptValue="-1">
                                </ajaxToolkit:CascadingDropDown>
                                <asp:CheckBox ID="cbTodosVeiculos" runat="server" Text="Todos" CssClass="cb-todosVeiculos"
                                    OnCheckedChanged="CBTodosVeiculos_CheckedChanged" AutoPostBack="true"></asp:CheckBox>
                            </div>

                            <asp:RequiredFieldValidator ID="rfvTipoVeiculo" runat="server" ControlToValidate="ddlTipoVeiculo"
                                ValidationGroup="panel1Error" ErrorMessage="Por favor escolha o Tipo de Veiculo."
                                Display="None" InitialValue="-1">
                            </asp:RequiredFieldValidator>
                            <asp:RequiredFieldValidator ID="rfvVeiculo" runat="server" ControlToValidate="ddlVeiculo"
                                ValidationGroup="panel1Error" ErrorMessage="Por favor escolha o Veiculo." Display="None"
                                InitialValue="-1">
                            </asp:RequiredFieldValidator>

                        </ContentTemplate>
                        <Triggers>
                            <asp:AsyncPostBackTrigger ControlID="cbTodosTipos" EventName="CheckedChanged" />
                            <asp:AsyncPostBackTrigger ControlID="cbTodosVeiculos" EventName="CheckedChanged" />
                        </Triggers>
                    </asp:UpdatePanel>
                    <div class="row23-row">
                        <asp:Label ID="lMedico" runat="server" CssClass="label-tripulante">Médico</asp:Label>
                        
                        <ddl:NVDropDownList ID="ddlMedico" runat="server" CssClass="ddl-tripulante" />
                        <asp:TextBox ID="tbMedico" runat="server" Enabled="false" Visible="false" CssClass="ddl-tripulante text-box-values" />
                        
                        <ajaxToolkit:CascadingDropDown ID="cddMedico" runat="server" TargetControlID="ddlMedico"
                            ParentControlID="ddlCodu" Category="Medico" PromptText=" " LoadingText="Por favor aguarde"
                            ServicePath="~/WebServices/Tripulante.asmx" ServiceMethod="GetMedicosFromCodu"
                            SelectedValue=" " PromptValue="-1">
                        </ajaxToolkit:CascadingDropDown>
                    </div>
                    <div class="row23-row">
                        <asp:Label ID="lEnfermeiro" runat="server" CssClass="label-tripulante">Enfermeiro</asp:Label>
                        

                        <ddl:NVDropDownList ID="ddlEnfermeiro" runat="server" CssClass="ddl-tripulante" />
                        <asp:TextBox ID="tbEnfermeiro" runat="server" Enabled="false" Visible="false" CssClass="ddl-tripulante text-box-values" />
                        

                        <ajaxToolkit:CascadingDropDown ID="cddEnfermeiro" runat="server" TargetControlID="ddlEnfermeiro"
                            ParentControlID="ddlCodu" Category="Enfermeiro" PromptText=" " LoadingText="Por favor aguarde"
                            ServicePath="~/WebServices/Tripulante.asmx" ServiceMethod="GetEnfermeirosFromCodu"
                            SelectedValue=" " PromptValue="-1">
                        </ajaxToolkit:CascadingDropDown>
                    </div>
                    <asp:RequiredFieldValidator ID="rfvMedico" runat="server" ControlToValidate="ddlMedico"
                        ValidationGroup="panel1Error" ErrorMessage="Por favor escolha um Médico." Display="None"
                        InitialValue="-1">
                    </asp:RequiredFieldValidator>
                    <asp:RequiredFieldValidator ID="rfvEnfermeiro" runat="server" ControlToValidate="ddlEnfermeiro"
                        ValidationGroup="panel1Error" ErrorMessage="Por favor escolha um Enfermeiro."
                        Display="None" InitialValue="-1">
                    </asp:RequiredFieldValidator>
                </div>
                <div style="clear: both;">
                </div>
            </asp:Panel>
            <ajaxToolkit:CollapsiblePanelExtender ID="cpePreHosp" runat="server" TargetControlID="pBodyPreHosp"
                CollapseControlID="pHeaderPreHosp" ExpandControlID="pHeaderPreHosp" Collapsed="false"
                TextLabelID="lblTextPreHosp" CollapsedText="Pré-Hospitalar" ExpandedText="Pré-Hospitalar"
                CollapsedSize="0" Enabled="True" SuppressPostBack="False" ImageControlID="imagePreHosp"
                ExpandedImage="~/Images/Icons/panel_collapse.png" CollapsedImage="~/Images/Icons/panel_expand.png">
            </ajaxToolkit:CollapsiblePanelExtender>
            <asp:ValidationSummary ID="vsPainel1Validator" runat="server" ValidationGroup="panel1Error"
                CssClass="validationErrorList" EnableViewState="true"></asp:ValidationSummary>




            <%--#########################     INICIO segundo painel                         ##################################--%>
            <%--Tab Local - Titulo               --%>
            <asp:Panel ID="pHeaderLocal" runat="server" CssClass="panel-header" DefaultButton="bSubmeter">
                <div class="collapse-text">
                    <asp:Label ID="lblTextLocal" runat="server" />
                </div>
                <div class="collapse-icon">
                    <asp:Image ID="imageLocal" runat="server" ImageAlign="Right" />
                </div>
            </asp:Panel>
            <%--Tab Local - Corpo                --%>
            <asp:Panel ID="pBodyLocal" runat="server" CssClass="panel-body">
                <div class="row23-c1">
                    <div class="row-p2">
                        <asp:Label ID="lChegadaLocal" runat="server" CssClass="label-dadosclinicos">Chegada ao Local</asp:Label>
                        <asp:TextBox ID="tbChegadaLocalData" runat="server" CssClass="tb-data" />
                        <ajaxToolkit:CalendarExtender ID="ceChegadaLocal" runat="server" TargetControlID="tbChegadaLocalData"
                            PopupPosition="BottomRight" TodaysDateFormat="MMMM d, yyyy">
                        </ajaxToolkit:CalendarExtender>
                        <span class="travessao">–</span>
                        <asp:TextBox ID="tbChegadaLocalHora" runat="server" CssClass="tb-hora" />
                        <asp:RegularExpressionValidator runat="server" ID="revChegadaLocalData" ControlToValidate="tbDataNascimento"
                            ValidationExpression="^([0]?[1-9]|[1|2][0-9]|[3][0|1])[-]([0]?[1-9]|[1][0-2])[-]([0-9]{4}|[0-9]{2})$"
                            ValidationGroup="panel2Error" ErrorMessage="Insira a data de Chegada ao Local no seguinte formato dd-mm-aaaa."
                            Display="None"> 
                        </asp:RegularExpressionValidator>
                        <asp:RegularExpressionValidator runat="server" ID="revChegadaLocalHora" ControlToValidate="tbChegadaLocalHora"
                            ValidationExpression="^(([0-9])|([0-1][0-9])|([2][0-3])):(([0-9])|([0-5][0-9]))$"
                            ValidationGroup="panel2Error" ErrorMessage="Insira a hora de Chegada ao Local no seguinte formato hh:mm."
                            Display="None"> 
                        </asp:RegularExpressionValidator>
                        <asp:RequiredFieldValidator ID="rfvChegadaLocalData" runat="server" ControlToValidate="tbChegadaLocalData"
                            ValidationGroup="panel2Error" ErrorMessage="Por favor indique a data de Chegada ao Local."
                            Display="None"> 
                        </asp:RequiredFieldValidator>
                        <asp:RequiredFieldValidator ID="rfvChegadaLocalHora" runat="server" ControlToValidate="tbChegadaLocalHora"
                            ValidationGroup="panel2Error" ErrorMessage="Por favor indique a hora de Chegada ao Local."
                            Display="None"> 
                        </asp:RequiredFieldValidator>
                    </div>
                    <div class="row-p2">
                        <asp:Label ID="lPressaoArterial" runat="server" CssClass="label-dadosclinicos">Pressão Arterial</asp:Label>
                        <asp:TextBox ID="tbPABaixa" runat="server" CssClass="tb-pressaoarterial" />
                        <span class="travessao">–</span>
                        <asp:TextBox ID="tbPAAlta" runat="server" CssClass="tb-pressaoarterial" />
                        <asp:RegularExpressionValidator runat="server" ID="revPABaixa" ControlToValidate="tbPABaixa"
                            ValidationExpression="^[0-9]{1,3}$" ValidationGroup="panel2Error" ErrorMessage="A Pressão Arterial diastolica só permite números entre 2 a 3 algarismos."
                            Display="None"> 
                        </asp:RegularExpressionValidator>
                        <asp:RegularExpressionValidator runat="server" ID="revPAAlta" ControlToValidate="tbPAAlta"
                            ValidationExpression="^[0-9]{1,3}$" ValidationGroup="panel2Error" ErrorMessage="A Pressão Arterial sistolica só permite números entre 2 a 3 algarismos."
                            Display="None"> 
                        </asp:RegularExpressionValidator>
                        <asp:RequiredFieldValidator ID="rfvPABaixa" runat="server" ControlToValidate="tbPABaixa"
                            ValidationGroup="panel2Error" ErrorMessage="Por favor indique a Pressão Arterial diastolica."
                            Display="None"> 
                        </asp:RequiredFieldValidator>
                        <asp:RequiredFieldValidator ID="rfvPAAlta" runat="server" ControlToValidate="tbPAAlta"
                            ValidationGroup="panel2Error" ErrorMessage="Por favor indique a Pressão Arterial sistolica."
                            Display="None"> 
                        </asp:RequiredFieldValidator>
                    </div>
                    <div class="row-p2">
                        <asp:Label ID="lClasseKillip" runat="server" CssClass="label-dadosclinicos">Classe Killip</asp:Label>
                        
                        <asp:DropDownList ID="ddlClasseKillip" runat="server" CssClass="ddl-classekillip" />
                        <asp:TextBox ID="tbClasseKillip" runat="server" Enabled="false" Visible="false" CssClass="ddl-classekillip text-box-values" />
                    
                    </div>
                    <div class="row-p2">
                        <asp:Label ID="lRiscoHemorragia" runat="server" CssClass="label-dadosclinicos">Risco Hemorragia</asp:Label>
                        
                        <asp:DropDownList ID="ddlRiscoHemorragia" runat="server" CssClass="ddl-riscohemorragia" />
                        <asp:TextBox ID="tbRiscoHemorragia" runat="server" Enabled="false" Visible="false" CssClass="ddl-riscohemorragia text-box-values" />
                    
                    </div>
                </div>
                <asp:RequiredFieldValidator ID="rvfClasseKillip" runat="server" ControlToValidate="ddlClasseKillip"
                    ValidationGroup="panel2Error" ErrorMessage="Seleccione uma Classe Killip." Display="None"
                    InitialValue="0"> 
                </asp:RequiredFieldValidator>
                <asp:RequiredFieldValidator ID="rvfRiscoHemorragia" runat="server" ControlToValidate="ddlRiscoHemorragia"
                    ValidationGroup="panel2Error" ErrorMessage="Seleccione o nivel de Risco Hemorragia."
                    Display="None" InitialValue="0"> 
                </asp:RequiredFieldValidator>
                <div class="row23-c1">
                    <div class="row-p2">
                        <asp:Label ID="lSintomas" runat="server" Style="vertical-align: middle; display: table-cell;">Sintomas</asp:Label>
                    </div>
                    <div class="row-p2">
                        <asp:CheckBoxList ID="cblSintomas" runat="server" RepeatDirection="Vertical" CssClass="cb">
                        </asp:CheckBoxList>


                        <asp:ListView ID="lvSintomas" runat="server" DataSourceID="ldsSintomas" Enabled="false"
                            Visible="false">
                            <ItemTemplate>
                                <ul>
                                    <li>
                                        <asp:Label ID="lSintoma" runat="server" Text='<%# Eval("NOME") %>'></asp:Label>
                                    </li>
                                </ul>
                            </ItemTemplate>
                        </asp:ListView>


                    </div>
                    <asp:LinqDataSource ID="ldsSintomas" runat="server" EntityTypeName="" ContextTypeName="DAL.VVEAM_Entity"
                        OnSelecting="ldsSintomas_Selecting">
                    </asp:LinqDataSource>
                </div>
                <div style="clear: both;">
                </div>
                <div class="row23-c1">
                    <div class="ecg">
                        <div class="realizado">
                            <asp:CheckBox ID="cbECGRealizado" runat="server" Text="ECG Realizado" CssClass="cb" />
                        </div>
                        <div class="realizado">
                            <asp:CheckBox ID="cbECGNormal" runat="server" Text="ECG Normal" CssClass="cb" />
                        </div>
                        <div class="realizado-ecg">
                            <asp:Label ID="lRealizado" runat="server" CssClass="label-realizado">Realizado a</asp:Label>
                            <asp:TextBox ID="tbRData" runat="server" CssClass="tb-data"></asp:TextBox>
                            <ajaxToolkit:CalendarExtender ID="ceRealizado" runat="server" TargetControlID="tbRData"
                                PopupPosition="BottomRight" TodaysDateFormat="MMMM d, yyyy">
                            </ajaxToolkit:CalendarExtender>
                            <span class="travessao">–</span>
                            <asp:TextBox ID="tbRHora" runat="server" CssClass="tb-hora"></asp:TextBox>
                        </div>
                    </div>
                    <asp:RegularExpressionValidator ID="revRData" runat="server" ControlToValidate="tbRData"
                        ValidationExpression="^([0]?[1-9]|[1|2][0-9]|[3][0|1])[-]([0]?[1-9]|[1][0-2])[-]([0-9]{4}|[0-9]{2})$"
                        ValidationGroup="panel2Error" ErrorMessage="Insira a data a que o ECG foi realizado formato dd-mm-aaaa."
                        Display="None"> 
                    </asp:RegularExpressionValidator>
                    <asp:RegularExpressionValidator ID="revRHora" runat="server" ControlToValidate="tbRHora"
                        ValidationExpression="^(([0-9])|([0-1][0-9])|([2][0-3])):(([0-9])|([0-5][0-9]))$"
                        ValidationGroup="panel2Error" ErrorMessage="Insira a hora a que o ECG foi realizado no seguinte formato hh:mm."
                        Display="None"> 
                    </asp:RegularExpressionValidator>
                    <asp:RequiredFieldValidator ID="rfvRData" runat="server" ControlToValidate="tbRData"
                        ValidationGroup="panel2Error" ErrorMessage="Por favor indique a data a que o ECG foi realizado."
                        Display="None"> 
                    </asp:RequiredFieldValidator>
                    <asp:RequiredFieldValidator ID="rfvRHora" runat="server" ControlToValidate="tbRHora"
                        ValidationGroup="panel2Error" ErrorMessage="Por favor indique a hora a que o ECG foi realizado."
                        Display="None"> 
                    </asp:RequiredFieldValidator>
                    <div class="ecg">
                        <div class="realizado">
                            <asp:CheckBox ID="cbEnviado" runat="server" Text="ECG Enviado" CssClass="cb" />
                        </div>




                        <div class="enviaecg">
                            <asp:FileUpload ID="fuECGFile" runat="server" CssClass="button" />
                        </div>



                        <div id="ecgImage" runat="server" visible="false" style="margin: 10px auto; width:80%;">
                            <asp:Label ID="textEcg" runat="server"></asp:Label>
                            <asp:Image ID="iECG" runat="server" ImageAlign="Middle" Width="700px" Height="400px" />

                        </div>

                    </div>
                </div>
                <div class="row23-c1">
                    <div class="row-p2">
                        <table class="table">
                            <tr>
                                <td>
                                </td>
                                <td>
                                    <asp:Label ID="lDA" runat="server" CssClass="label-tabela">Deriv Ant.</asp:Label>
                                </td>
                                <td>
                                    <asp:Label ID="lDI" runat="server" CssClass="label-tabela">Deriv Inf.</asp:Label>
                                </td>
                                <td>
                                    <asp:Label ID="lDL" runat="server" CssClass="label-tabela">Deriv Lat.</asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:Label ID="lSSt" runat="server" CssClass="label-tabela"> Supra ST</asp:Label>
                                </td>
                                <td style="text-align: center">
                                    <asp:CheckBox ID="cbDASSt" runat="server" />
                                </td>
                                <td style="text-align: center">
                                    <asp:CheckBox ID="cbDISSt" runat="server" />
                                </td>
                                <td style="text-align: center">
                                    <asp:CheckBox ID="cbDLSSt" runat="server" />
                                </td>
                            </tr>
                            <tr>
                                <td style="text-align: center">
                                    <asp:Label ID="lISt" runat="server" CssClass="label-tabela">Infra ST</asp:Label>
                                </td>
                                <td style="text-align: center">
                                    <asp:CheckBox ID="cbDAISt" runat="server" />
                                </td>
                                <td style="text-align: center">
                                    <asp:CheckBox ID="cbDIISt" runat="server" />
                                </td>
                                <td style="text-align: center">
                                    <asp:CheckBox ID="cbDLISt" runat="server" />
                                </td>
                            </tr>
                            <tr>
                                <td style="text-align: center">
                                    <asp:Label ID="lOAlt" runat="server" CssClass="label-tabela">Out. Alt.</asp:Label>
                                </td>
                                <td style="text-align: center">
                                    <asp:CheckBox ID="cbDAOAlt" runat="server" />
                                </td>
                                <td style="text-align: center">
                                    <asp:CheckBox ID="cbDIOAlt" runat="server" />
                                </td>
                                <td style="text-align: center">
                                    <asp:CheckBox ID="cbDLOAlt" runat="server" />
                                </td>
                            </tr>
                        </table>
                    </div>
                </div>
                <div class="obspanel2">
                    <asp:Label ID="lObervacoesLocal" runat="server" Style="height: 18px; width: 50px;
                        vertical-align: middle; display: table-cell; text-align: left; padding: 0 5px 0 0">Observações:</asp:Label>
                    <asp:TextBox ID="tbObervacoesLocal" runat="server" TextMode="MultiLine" Style="padding: 5px;
                        width: 600px; max-width: 800px; height: 130px; max-height: 130px" />
                </div>
                <div class="botaoSubmeter">
                    <%--INICIO Botao Submeter--%>
                    <div id="buttonSubmeter" runat="server" style="float: right; margin: 10px 0 10px 10px"
                        visible="true">
                        <ul class="opmenu decisaomenu">
                            <li id="liSubmeter" runat="server" visible="true">
                                <img src="../Images/Icons/tick_circle.png" alt="Aceitar Pedido" />
                                <asp:LinkButton ID="BSubmeter" runat="server" Text="Submeter" OnClick="BSubmeter_Click"
                                    OnClientClick="javascript:fnJSOnFormSubmit()" />
                            </li>
                            <li id="liActualizar" runat="server" visible="false">
                                <img src="../Images/Icons/tick_circle.png" alt="Aceitar Pedido" />
                                <asp:LinkButton ID="BActualizar" runat="server" Text="Actualizar" OnClick="BActualizar_Click"
                                    OnClientClick="javascript:fnJSOnFormSubmit()" Enabled="false" />
                            </li>
                        </ul>
                    </div>
                </div>
                <div class="clear">
                </div>
            </asp:Panel>
            <ajaxToolkit:CollapsiblePanelExtender ID="cpeLocal" runat="server" TargetControlID="pBodyLocal"
                CollapseControlID="pHeaderLocal" ExpandControlID="pHeaderLocal" Collapsed="false"
                TextLabelID="lblTextLocal" CollapsedText="Local" ExpandedText="Local" CollapsedSize="0"
                SuppressPostBack="False" Enabled="True" ImageControlID="imageLocal" ExpandedImage="~/Images/Icons/panel_collapse.png"
                CollapsedImage="~/Images/Icons/panel_expand.png">
            </ajaxToolkit:CollapsiblePanelExtender>
            <asp:ValidationSummary ID="vsPainel2Validator" runat="server" ValidationGroup="panel2Error"
                CssClass="validationErrorList" EnableViewState="true"></asp:ValidationSummary>
        </ContentTemplate>
        <Triggers>
            <asp:PostBackTrigger ControlID="BSubmeter" />
            <asp:PostBackTrigger ControlID="BActualizar" />
        </Triggers>
    </asp:UpdatePanel>
    



    <%--################################     Terceiro Painel                               ###################################--%>
    

    <%--Tab Pedido/Decisao - ERROS       --%>
    <asp:UpdatePanel ID="upDecisaoError" runat="server" UpdateMode="Conditional">
        <ContentTemplate>
            <asp:ValidationSummary ID="vsPanel3" runat="server" ValidationGroup="panel3Error"
                CssClass="validationErrorList" EnableViewState="true"></asp:ValidationSummary>
        </ContentTemplate>
    </asp:UpdatePanel>


    <%--Tab Pedido/Decisao       --%>
    <asp:UpdatePanel ID="upDecisao" runat="server" UpdateMode="Conditional">
        <ContentTemplate>

            <div id="tabDecisaoContent" runat="server">
                <%--Tab Pedido/Decisao - Titulo      --%>
                <asp:Panel ID="pHeaderDecisao" runat="server" CssClass="panel-header">
                    <div style="float: left; vertical-align: middle;">
                        <asp:Label ID="lblTextDecisao" runat="server" />
                    </div>
                    <div style="float: right; vertical-align: middle;">
                        <asp:Image ID="imageDecisao" runat="server" ImageAlign="Right" />
                    </div>
                </asp:Panel>

                <%--Tab Pedido/Decisao - Body         --%>
                <asp:Panel ID="pBodyDecisao" runat="server" CssClass="panel-Body">

                    <div style="margin: 10px;">

                        <asp:UpdatePanel ID="upDecisaoMenu" runat="server" UpdateMode="Conditional" ChildrenAsTriggers="false">
                            <ContentTemplate>


                                <%-- --%>
                                
                                
                                <div id="menuMessage" runat="server" visible="false">

                  
                                        <span style="float:left; margin: 10px 0;">Proxima actualização dos dados em</span>
                                        <span ID="time" style="float:left; margin: 10px 3px;" runat="server"><%=timerForm/1000%></span>
                                        <span  style="float:left; margin: 10px 0;">segundos.</span>
                       
                                 

                                    <div runat="server" style="float:right; margin: 5px 5px 0 0;">
                                        <ul class="opmenu decisaomenu">
                                            <li>
                                                <img src="../Images/Icons/tick_circle.png" alt="Efectuar Pedido" />
                                                <asp:LinkButton ID="lbActualizarGrid" runat="server" Text="Actualizar" 
                                                OnClick="lbActualizarGrid_Click"/>
                                            </li>
                                        </ul>
                                    </div>

                                    <div class="clear"></div>

                                </div>

                                <%--Menu Utilizado pelo CODU--%>
                                <div id="menuCODU" runat="server">
                                    <div style="float: left; margin: 7px 10px 5px 0;">
                                        <asp:DropDownList ID="ddlPedidoInstituicao" runat="server" />
                                    </div>


                                    <asp:RequiredFieldValidator ID="rfvddlPedidoInstituicao" runat="server" ControlToValidate="ddlPedidoInstituicao"
                                        ValidationGroup="panel3Error" ErrorMessage="Seleccione uma instituição." Display="None"
                                        InitialValue="0"> 
                                    </asp:RequiredFieldValidator>


                                    <div id="divBPedido" runat="server" style="float: left; margin: 0 5px 0 0;">
                                        <ul class="opmenu decisaomenu">
                                            <li>
                                                <img src="../Images/Icons/tick_circle.png" alt="Efectuar Pedido" />
                                                <asp:LinkButton ID="bPedido" runat="server" Text="Efectuar Pedido" Enabled="false"
                                                    OnClick="bPedido_Click" ValidationGroup="panel3Error" />
                                            </li>
                                        </ul>
                                    </div>
                                    <div class="clear">
                                    </div>

                                    


                                    <hr class="hr-line" />
                                </div>


                                <%--Menu Utilizado pelo MEDICO--%>
                                <div id="menuMedico" runat="server">
                                <div style="float:left;">
                                    <div id="buttonsAR" runat="server" style="margin: 10px 0 10px 10px">
                                        <ul class="opmenu decisaomenu">
                                            <li>
                                                <img src="../Images/Icons/tick_circle.png" alt="Aceitar Pedido" />
                                                <asp:LinkButton ID="lbAceitar" runat="server" Text="Aceitar Pedido" OnClick="lbAceitar_Click" ValidationGroup="panel3Error"/>
                                            </li>
                                            <li>
                                                <img src="../Images/Icons/forbidden.png" alt="Rejeitar Pedido" />
                                                <asp:LinkButton ID="lbRejeitar" runat="server" Text="Rejeitar Pedido" OnClick="lbRejeitar_Click"/>
                                            </li>
                                        </ul>
                                    </div>
                                    <div id="divRazao" runat="server" visible="false" style="margin: 15px 0 10px 10px;">
                                        <asp:Label ID="lRazao" runat="server" Text="Razão de não aceitação do doente" />
                                        
                                        <asp:DropDownList ID="ddlRazao" runat="server"></asp:DropDownList>
                                        <asp:RequiredFieldValidator ID="rfvRazao" runat="server" ControlToValidate="ddlRazao"
                                            ValidationGroup="panel3Error" ErrorMessage="Seleccione uma razão." Display="None"
                                            InitialValue="0"> 
                                        </asp:RequiredFieldValidator>

                                        
                                    </div>
                                    <div id="buttonsRV" runat="server" visible="false" style="margin: 20px 0 10px 10px;">
                                        <ul class="opmenu decisaomenu">
                                            <li>
                                                <img src="../Images/Icons/action_back.png" alt="Voltar" />
                                                <asp:LinkButton ID="lbVoltar" runat="server" Text="Voltar" OnClick="lbVoltar_Click" />
                                            </li>
                                            <li>
                                                <img src="../Images/Icons/forbidden.png" alt="Rejeitar Pedido" />
                                                <asp:LinkButton ID="lbRejeicaoConfirmar" runat="server" Text="Rejeitar Pedido" OnClick="lbRejeicaoConfirmar_Click"
                                                    ValidationGroup="panel3Error" />
                                            </li>
                                        </ul>
                                    </div>
                                    </div>

                                    <div style="float:left; margin:5px 10px 5px 10px">
                                        <asp:Label ID="lObsPanel3" runat="server" Style="height: 18px; width: 50px;
                                            vertical-align: middle; display: table-cell; text-align: left; padding: 0 5px 0 0">Observações:</asp:Label>
                                        <asp:TextBox ID="tbObsPanel3" runat="server" TextMode="MultiLine" Style="padding: 5px;
                                            width: 320px; max-width: 320px; height: 130px; max-height: 130px; " />
                                    </div>


                                    <div class="clear">
                                    </div>    

<%--
                                   <div id="divObsPanelDecisao" runat="server" visible="false">
                                   <asp:TextBox ID="tbObsPanelDecisao" runat="server" TextMode="MultiLine" Style="padding: 5px;
                                            width: 600px; max-width: 600px; height: 130px; max-height: 130px; " />
                                   </div>--%>


                                    <hr class="hr-line" />
                                </div>

                            </ContentTemplate>

                            <Triggers>
                                <asp:AsyncPostBackTrigger ControlID="bPedido" EventName="Click" />
                                <asp:AsyncPostBackTrigger ControlID="lbRejeitar" EventName="Click" />
                                <asp:AsyncPostBackTrigger ControlID="lbAceitar" EventName="Click" />
                                <asp:AsyncPostBackTrigger ControlID="lbRejeicaoConfirmar" EventName="Click" />
                                <asp:AsyncPostBackTrigger ControlID="lbActualizarGrid" EventName="Click" />
                            </Triggers>

                        </asp:UpdatePanel>

                    </div>


                    <%--####    GridView Painel         --%>
                    <div style="margin: 10px;">

                        <asp:UpdatePanel ID="upGridDecisao" runat="server" UpdateMode="Conditional" ChildrenAsTriggers="false">
                            <ContentTemplate>

                                <asp:Timer ID="tPedido" runat="server" OnTick="tPedido_Tick">
                                </asp:Timer>
                                <div id="gridViewDiv">
                                    <asp:GridView runat="server" ID="gvPedidos" AutoGenerateColumns="false" CellPadding="8"
                                        GridLines="None" CssClass="Grid" PagerStyle-CssClass="pgr" AlternatingRowStyle-CssClass="alt"
                                        OnRowDataBound="gvPedidos_RowDataBound" OnRowCommand="gvPedidos_RowCommand" DataSourceID="ldsPedidos">
                                        <PagerStyle CssClass="pgr" />
                                        <AlternatingRowStyle CssClass="alt" />
                                        <Columns>
                                            <asp:TemplateField Visible="false">
                                                <ItemTemplate>
                                                    <asp:Label runat="server" ID="lCodigo" Text='<%# Convert.ToString(Eval("CODIGO"))%>' />
                                                </ItemTemplate>
                                            </asp:TemplateField>
                                            <asp:TemplateField HeaderText="Instituição">
                                                <ItemTemplate>
                                                    <%# Eval("GI_INSTITUICAO.NOME")%>
                                                </ItemTemplate>
                                            </asp:TemplateField>
                                            <asp:TemplateField HeaderText="Pedido Efectuado" SortExpression="INSTANTE_PEDIDO"
                                                ItemStyle-HorizontalAlign="Center">
                                                <ItemTemplate>
                                                    <%# Eval("INSTANTE_PEDIDO", "{0:dd-MM-yyyy HH:mm:ss}")%>
                                                </ItemTemplate>
                                            </asp:TemplateField>
                                            <asp:TemplateField HeaderText="Pedido Respondido" SortExpression="INSTANTE_RESPOSTA"
                                                ItemStyle-HorizontalAlign="Center">
                                                <ItemTemplate>
                                                    <%# Eval("INSTANTE_RESPOSTA", "{0:dd-MM-yyyy HH:mm:ss}")%>
                                                </ItemTemplate>
                                            </asp:TemplateField>
                                            <asp:TemplateField Visible="false">
                                                <ItemTemplate>
                                                    <asp:Label runat="server" ID="lDecisaoCodigo" Text='<%# Convert.ToString(Eval("DECISAO"))%>' />
                                                </ItemTemplate>
                                            </asp:TemplateField>
                                            <asp:TemplateField HeaderText="Pedido">
                                                <ItemTemplate>
                                                    <asp:Label ID="lDecisao" runat="server" Visible="false"/>

                                                    <asp:LinkButton ID="lbVerObservacoes" runat="server" CommandArgument='<%# Convert.ToString(Eval("CODIGO")) %>' CommandName="OBS"></asp:LinkButton>

                                                </ItemTemplate>
                                            </asp:TemplateField>
                                            <asp:TemplateField HeaderText="Razão" SortExpression="RAZAO" ItemStyle-HorizontalAlign="Center">
                                                <ItemTemplate>
                                                    <%# Eval("OCR_RAZAO.NOME")%>
                                                </ItemTemplate>
                                            </asp:TemplateField>

                                            <asp:TemplateField HeaderText="—" ItemStyle-HorizontalAlign="Center" ItemStyle-Width="17px" >
                                                <ItemTemplate>
                                                    <asp:ImageButton ID="ibRemover" runat="server" ImageUrl="~/Images/Icons/delete.png"
                                                        Width="17px" Height="17px" CommandName="REMOVE" CommandArgument='<%# Convert.ToString(Eval("CODIGO")) %>' />
                                                </ItemTemplate>
                                            </asp:TemplateField>
                                        </Columns>
                                    </asp:GridView>
                                </div>

                                <asp:LinqDataSource ID="ldsPedidos" runat="server" ContextTypeName="DAL.VVEAM_Entity"
                                    EntityTypeName="" OnSelecting="ldsPedidos_Selecting">
                                </asp:LinqDataSource>

                            </ContentTemplate>
                            <Triggers>
                                <asp:AsyncPostBackTrigger ControlID="tPedido" EventName="Tick" />
                                <asp:AsyncPostBackTrigger ControlID="gvPedidos" EventName="RowDataBound" />
                            </Triggers>
                        </asp:UpdatePanel>
                    </div>
                    <div style="height: 10px">
                    </div>
                </asp:Panel>
                <ajaxToolkit:CollapsiblePanelExtender ID="cpeDecisao" runat="server" TargetControlID="pBodyDecisao"
                    CollapseControlID="pHeaderDecisao" ExpandControlID="pHeaderDecisao" Collapsed="true"
                    TextLabelID="lblTextDecisao" CollapsedText="Decisão" ExpandedText="Decisão" CollapsedSize="0"
                    SuppressPostBack="False" Enabled="True" ImageControlID="imageDecisao" ExpandedImage="~/Images/Icons/panel_collapse.png"
                    CollapsedImage="~/Images/Icons/panel_expand.png">
                </ajaxToolkit:CollapsiblePanelExtender>
            </div>
        </ContentTemplate>
    </asp:UpdatePanel>






















    <%--################################     Quarto Painel                                 ###################################--%>
    <asp:UpdatePanel ID="upTabAdmissao" runat="server" UpdateMode="Conditional" ChildrenAsTriggers="false">
       
        <ContentTemplate>

            <div id="tabAdmissaoContent" runat="server" style="height:400px" >



                <%--Admissão - ERRO        --%>
                <asp:UpdatePanel ID="upErrorList" runat="server" UpdateMode="Conditional" ChildrenAsTriggers="false">
                    <ContentTemplate>

                        <div id="vsDiv">
                            <asp:ValidationSummary ID="vsError" runat="server" ValidationGroup="panel4Error" CssClass="validationErrorList">
                            </asp:ValidationSummary>
                        </div>

                    </ContentTemplate>
                </asp:UpdatePanel>



                <%--Tab Admissão - Titulo       --%>
                <asp:Panel ID="pHeaderAdmissao" runat="server" CssClass="panel-header">
                    <div style="float: left; vertical-align: middle;">
                        <asp:Label ID="lblTextAdmissao" runat="server" />
                    </div>
                    <div style="float: right; vertical-align: middle;">
                        <asp:Image ID="imageAdmissao" runat="server" ImageAlign="Right" />
                    </div>
                </asp:Panel>




                <%--Tab Admissão - Corpo        --%>
                <asp:Panel ID="pBodyAdmissao" runat="server" CssClass="panel-Body">
                    
                    <%--Admissão        --%>
                    <asp:UpdatePanel ID="upAdmissao" runat="server" UpdateMode="Conditional" ChildrenAsTriggers="false">
                        
                        <ContentTemplate>
                            
                            <div id="ACPanel" runat="server" style="margin: 10px; height: 200px;">

                                <div style="display: table; margin: 7px 0 20px 0;">

                                    <asp:Label ID="lNEpisodio" runat="server" Text="Nº Episódio" Style="display: table-cell;
                                        width: 120px; float: left; padding: 2px 5px; min-height: 14px; text-align: right;"></asp:Label>
                                    <asp:TextBox ID="tbNEpisodio" runat="server" Style="float: left; display: table-cell;
                                        border: 1px solid #7F9DB9; width: 122px;" />


                                    <asp:RequiredFieldValidator ID="rfvNEpisodio" runat="server" ControlToValidate="tbNEpisodio"
                                    ValidationGroup="panel4Error" ErrorMessage="Indique o Número de Episódio." Display="None"> 
                                    </asp:RequiredFieldValidator>
                                    <asp:RegularExpressionValidator runat="server" ID="revNEpisodio" ControlToValidate="tbNEpisodio"
                                        ValidationExpression="^[0-9]{5,12}$" ValidationGroup="panel4Error" ErrorMessage="O Número de Episódio só permite valores numéricos entre 5 a 12 digitos."
                                        Display="none">
                                    </asp:RegularExpressionValidator>

                                </div>

                                


                                <div style="display: table; vertical-align: middle; margin-bottom: 15px; width:600px;">
                                   
                                    <asp:Label ID="lServico" runat="server" Text="Serviço" Style="display: table-cell;
                                        float: left; padding: 2px 4px; min-height: 14px; text-align: right; width: 120px;"></asp:Label>

                                    <asp:DropDownList ID="ddlServico" runat="server" Style="float: left; display: table-cell;" />
                                    <asp:TextBox ID="tbServico" runat="server" Enabled="false" Visible="false" CssClass="text-box-values" Style="float: left; display: table-cell;" Width="50%" />

                                    <asp:RequiredFieldValidator ID="rfvServico" runat="server" ControlToValidate="ddlServico"
                                            ValidationGroup="panel4Error" ErrorMessage="Seleccione um serviço." Display="None"
                                            InitialValue="0"> 
                                    </asp:RequiredFieldValidator>
                                
                                </div>
                                             

                               <div id="liConcluir" runat="server" style="margin: 10px 0 10px 10px;">
                                   <ul class="opmenu decisaomenu">
                                        <li>
                                            <img src="../Images/Icons/tick_circle.png" alt="Concluir" />
                                            <asp:LinkButton ID="lbConcluir" runat="server" Text="Concluir" OnClick="lbConcluir_Click" 
                                            ValidationGroup="panel4Error" />
                                        </li>
                                    </ul>
                                </div>

                            </div>

                            



                        </ContentTemplate>

                        <Triggers>
                            <asp:PostBackTrigger ControlID="lbConcluir" />
                        </Triggers>

                    </asp:UpdatePanel>
                </asp:Panel>


                <ajaxToolkit:CollapsiblePanelExtender ID="cpeAdmissao" runat="server" TargetControlID="pBodyAdmissao"
                    CollapseControlID="pHeaderAdmissao" ExpandControlID="pHeaderAdmissao" Collapsed="true"
                    TextLabelID="lblTextAdmissao" CollapsedText="Admissão" ExpandedText="Admissão"
                    CollapsedSize="0" SuppressPostBack="False" Enabled="True" ImageControlID="imageAdmissao"
                    ExpandedImage="~/Images/Icons/panel_collapse.png" CollapsedImage="~/Images/Icons/panel_expand.png">
                </ajaxToolkit:CollapsiblePanelExtender>


            </div>

         
        </ContentTemplate>
    </asp:UpdatePanel>
    </div>
     </ContentTemplate>
    </asp:UpdatePanel>
</asp:Content>
