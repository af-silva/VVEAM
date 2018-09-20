<%@ page title="" language="C#" masterpagefile="~/Layouts/LeftMenuLayout.master" autoeventwireup="true" inherits="BackOffice_AAInstituicoes, App_Web_0h3rwstd" enableeventvalidation="true" %>

<%@ MasterType VirtualPath="~/Layouts/LeftMenuLayout.master" %>
<asp:Content ID="Content1" ContentPlaceHolderID="PageHeader" runat="Server">
    <script type="text/javascript">
        // close the div in 5 secs
        window.setTimeout("closeHelpDiv();", 3000);

        function closeHelpDiv() {
            document.getElementById('<%= pSuccessMessage.ClientID %>').style.display = " none";
        }

    </script>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="NavigationBar" runat="Server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="PageMainContent" runat="Server">
    <div class="backoffice-body">
        <asp:Label runat="server" ID="lauTitle" Text="Nova Instituicao" Font-Size="Large"></asp:Label>
    </div>
    <div id="error">
        <asp:ValidationSummary ID="vsError" runat="server" ValidationGroup="vgError" CssClass="validationErrorList">
        </asp:ValidationSummary>
    </div>
    <asp:Panel ID="pSuccessMessage" runat="server" CssClass="successMessage" Visible="false">
        <asp:Label ID="lMsg" runat="server" />
    </asp:Panel>
    <div class="backoffice-body">
        <div class="bo-boxfield">
            <asp:Label ID="lNome" Text="Instituicao" runat="server" CssClass="bo-label" />
            <asp:TextBox ID="tbNome" runat="server" CssClass="bo-tbox" />
        </div>
        <div class="bo-boxfield">
            <asp:Label ID="lSigla" runat="server" Text="Sigla" CssClass="bo-label" />
            <asp:TextBox ID="tbSigla" runat="server" CssClass="bo-tbpequena">
            </asp:TextBox>
        </div>
        <div class="bo-boxfield">
            <asp:Label ID="lCodu" runat="server" Text="Codu" CssClass="bo-label" />
            <asp:DropDownList ID="ddlCodu" runat="server" CssClass="bo-dropdow">
            </asp:DropDownList>
        </div>
        <div class="bo-boxfield">
            <asp:Label ID="lContacto" runat="server" Text="Contacto" CssClass="bo-label" />
            <asp:TextBox ID="tbContacto" runat="server" CssClass="bo-tbpequena">
            </asp:TextBox>
        </div>
        <div class="bo-boxfield">
            <asp:Label ID="lActivo" Text="Activo" runat="server" CssClass="bo-label" />
            <asp:CheckBox ID="cbEstado" runat="server" CssClass="cb bo-cbox" />
        </div>
        <%--        <asp:RegularExpressionValidator ID="revInstituicao" runat="server" ValidationExpression="[\u00C0-\u017E]"
            ControlToValidate="tbInstituicao" ValidationGroup="vgError"
            ErrorMessage="O campo Instituicao só permite letras." Display="none">
            </asp:RegularExpressionValidator>--%>
        <asp:RequiredFieldValidator ID="rfvNome" runat="server" ControlToValidate="tbNome"
            ValidationGroup="vgError" ErrorMessage="Por favor preencha o campo Nome." Display="None">
        </asp:RequiredFieldValidator>
        <asp:RequiredFieldValidator ID="rfvSigla" runat="server" ControlToValidate="tbSigla"
            ValidationGroup="vgError" ErrorMessage="Por favor preencha o campo Sigla." Display="None">
        </asp:RequiredFieldValidator>
        <asp:RequiredFieldValidator ID="rfvCodu" runat="server" ControlToValidate="ddlCodu"
            ValidationGroup="vgError" ErrorMessage="Por favor indique o CODU." Display="None"
            InitialValue="0"> 
        </asp:RequiredFieldValidator>
        <asp:RequiredFieldValidator ID="rfvContacto" runat="server" ControlToValidate="tbContacto"
            ValidationGroup="vgError" ErrorMessage="Por favor preencha o campo Contacto."
            Display="None">
        </asp:RequiredFieldValidator>
        <asp:RegularExpressionValidator ID="revContacto" runat="server" ValidationExpression="^\d{5}((-|\s)?\d{4})?$"
            ControlToValidate="tbContacto" ValidationGroup="vgError" ErrorMessage="O campo Contacto só permite numeros de contacto validos."
            Display="none">
        </asp:RegularExpressionValidator>
        <div class="bo-buttonbox">
            <asp:Button ID="bGuardar" runat="server" Style="text-align: center;" Text="Adicionar"
                CssClass="button" OnClick="bGuardar_Click" CausesValidation="true" ValidationGroup="vgError" />
            <asp:Button ID="bCancelar" runat="server" Style="text-align: center;" Text="Cancelar"
                CssClass="button bo-cancel" OnClick="bCancelar_Click" />
        </div>
</asp:Content>
