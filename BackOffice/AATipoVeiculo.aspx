<%@ page title="" language="C#" masterpagefile="~/Layouts/LeftMenuLayout.master" autoeventwireup="true" inherits="BackOffice_AATipoVeiculo, App_Web_0h3rwstd" %>
<%@ MasterType VirtualPath="~/Layouts/LeftMenuLayout.master" %>

<asp:Content ID="Content1" ContentPlaceHolderID="PageHeader" Runat="Server">
    <script type="text/javascript">
        // close the div in 5 secs
        window.setTimeout("closeHelpDiv();", 3000);

        function closeHelpDiv() {
            document.getElementById('<%= pSuccessMessage.ClientID %>').style.display = " none";
        }

    </script>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="NavigationBar" Runat="Server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="PageMainContent" Runat="Server">
<div class="backoffice-body">
        <asp:Label runat="server" ID="lauTitle" Text="Novo Tipo de Veiculo" Font-Size="Large"></asp:Label>
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
            <asp:Label ID="lNome" runat="server" Text="Nome" CssClass="bo-label" />
            <asp:TextBox ID="tbNome" runat="server" CssClass="bo-tbox"></asp:TextBox>
        </div>
        <asp:RequiredFieldValidator ID="rfvServico" runat="server" ControlToValidate="tbNome"
            ValidationGroup="vgError" ErrorMessage="Por favor preencha o campo Nome."
            Display="None">
        </asp:RequiredFieldValidator>
        <div class="bo-boxfield">
            <asp:Label ID="lSigla" runat="server" Text="Sigla" CssClass="bo-label" />
            <asp:TextBox ID="tbSigla" runat="server" CssClass="bo-tbpequena"></asp:TextBox>
        </div>
        <asp:RequiredFieldValidator ID="rfvSigla" runat="server" ControlToValidate="tbSigla"
            ValidationGroup="vgError" ErrorMessage="Por favor preencha o campo Sigla." Display="None">
        </asp:RequiredFieldValidator>
        <div class="bo-boxfield">
            <asp:Label ID="lActivo" Text="Activo" runat="server" CssClass="bo-label" />
            <asp:CheckBox ID="cbEstado" runat="server" CssClass="cb bo-cbox" />
        </div>
        <div class="bo-buttonbox">
            <asp:Button ID="bGuardar" runat="server" Style="text-align:center;" Text="Adicionar"
                CssClass="button" OnClick="bGuardar_Click" CausesValidation="true" ValidationGroup="vgError" />
            <asp:Button ID="bCancelar" runat="server" Style="text-align: center;" Text="Cancelar"
                CssClass="button bo-cancel" OnClick="bCancelar_Click" />
        </div>
    </div>
</asp:Content>


