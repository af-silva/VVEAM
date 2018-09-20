<%@ page title="" language="C#" masterpagefile="~/Layouts/LeftMenuLayout.master" autoeventwireup="true" inherits="BackOffice_AAVeiculos, App_Web_0h3rwstd" %>

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
        <asp:Label runat="server" ID="laatTitle" Text="Novo Veiculo" Font-Size="Large"></asp:Label>
    </div>



    <div id="error">
        <asp:ValidationSummary ID="vsTripulante" runat="server" ValidationGroup="vgError"
        CssClass="validationErrorList"></asp:ValidationSummary>
    </div>
    
    <asp:Panel ID="pSuccessMessage" runat="server" CssClass="successMessage" Visible="false">
        <asp:Label ID="lMsg" runat="server" />
    </asp:Panel>
    
    <div class="backoffice-body">
        
        <div class="bo-boxfield">
            <asp:Label ID="lNome" Text="Nome" runat="server" CssClass="bo-label" />
            <asp:TextBox ID="tbNome" runat="server" CssClass="bo-tbox" Width="300px"/>
        </div>

        <div class="bo-boxfield">
            <asp:Label ID="lCodu" runat="server" Text="CODU" CssClass="bo-label"/>
            <asp:DropDownList ID="ddlCODU" runat="server" CssClass="bo-dropdow" Width="300px">
            </asp:DropDownList>
        </div>


        <div class="bo-boxfield">
            <asp:Label ID="lTipoVeiculo" runat="server" Text="Tipo de Veiculo" CssClass="bo-label"/>
            <asp:DropDownList ID="ddlTipoVeiculo" runat="server" CssClass="bo-dropdow" Width="300px">
            </asp:DropDownList>
        </div>

        <div class="bo-boxfield">
            <asp:Label ID="lActivo" Text="Activo" runat="server" CssClass="bo-label"/>
            <asp:CheckBox ID="cbEstado" runat="server" CssClass="bo-cbox" />
        </div>


        <div class="bo-buttonbox">
            <asp:Button ID="bGuardar" runat="server" Style="text-align:center;" Text="Adicionar"
                CssClass="button" OnClick="bGuardar_Click" CausesValidation="true" ValidationGroup="vgError" />
            <asp:Button ID="bCancelar" runat="server" Style="text-align: center;" Text="Cancelar"
                CssClass="button bo-cancel" OnClick="bCancelar_Click" />
        </div>
    </div>

    <asp:RequiredFieldValidator ID="rfvNome" runat="server" 
        ControlToValidate="tbNome"
        ValidationGroup="vgError" 
        ErrorMessage="Por favor preencha o campo Nome."
        Display="None">
    </asp:RequiredFieldValidator>

    <asp:RequiredFieldValidator ID="rfvCodu" runat="server" 
        ControlToValidate="ddlCODU"
        ValidationGroup="vgError" 
        ErrorMessage="Por favor indique o CODU."
        Display="None" 
        InitialValue="0"> 
    </asp:RequiredFieldValidator>

    <asp:RequiredFieldValidator ID="rfvTipoVeiculo" runat="server" 
        ControlToValidate="ddlTipoVeiculo"
        ValidationGroup="vgError" 
        ErrorMessage="Por favor indique o Tipo de Veiculo."
        Display="None" 
        InitialValue="0"> 
    </asp:RequiredFieldValidator>


</asp:Content>


