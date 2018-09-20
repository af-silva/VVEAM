<%@ page title="" language="C#" masterpagefile="~/Layouts/LeftMenuLayout.master" autoeventwireup="true" inherits="BackOffice_AATripulantes, App_Web_0h3rwstd" %>

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
        <asp:Label runat="server" ID="laatTitle" Text="Novo Tripulante" Font-Size="Large"></asp:Label>
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
            <asp:Label ID="lNumeroPessoal" Text="Número de Identificação" runat="server"  CssClass="bo-label"/>
            <asp:TextBox ID="tbNumeroPessoal" runat="server" CssClass="bo-tbox" />
        </div>

        <div class="bo-boxfield">
            <asp:Label ID="lTripulante" Text="Nome" runat="server" CssClass="bo-label" />
            <asp:TextBox ID="tbNomeTripulante" runat="server" CssClass="bo-tbox" />
        </div>

        <div class="bo-boxfield">
            <asp:Label ID="lInsti" runat="server" Text="Tipo de Tripulante" CssClass="bo-label"/>
            <asp:DropDownList ID="ddlTTripulante" runat="server" CssClass="bo-dropdow">
            </asp:DropDownList>
        </div>


        <div class="bo-boxfield">
            <asp:Label ID="lCodu" runat="server" Text="Codu" CssClass="bo-label"/>
            <asp:DropDownList ID="ddlCodu" runat="server" CssClass="bo-dropdow">
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


    <asp:RegularExpressionValidator ID="revNumeroPessoal" runat="server" ValidationExpression="^[0-9]{5,12}$" 
            ControlToValidate="tbNumeroPessoal" ValidationGroup="vgError"
            ErrorMessage="O campo Numero Pessoal só permite números" Display="none">
    </asp:RegularExpressionValidator>

    <asp:RequiredFieldValidator ID="rfvNumeroPessoal" runat="server" ControlToValidate="tbNumeroPessoal"
        ValidationGroup="vgError" ErrorMessage="Por favor preencha o campo Numero de Identificação."
        Display="None">
    </asp:RequiredFieldValidator>

    <asp:RequiredFieldValidator ID="rfvNome" runat="server" ControlToValidate="tbNomeTripulante"
        ValidationGroup="vgError" ErrorMessage="Por favor preencha o campo Nome."
        Display="None">
    </asp:RequiredFieldValidator>

    <asp:RequiredFieldValidator ID="rfvCodu" runat="server" 
        ControlToValidate="ddlCodu"
        ValidationGroup="vgError" 
        ErrorMessage="Por favor indique o Codu."
        Display="None" 
        InitialValue="0"> 
    </asp:RequiredFieldValidator>

    <asp:RequiredFieldValidator ID="rfvTipoTripulante" runat="server" 
        ControlToValidate="ddlTTripulante"
        ValidationGroup="vgError" 
        ErrorMessage="Por favor indique o Tipo de Tripulante."
        Display="None" 
        InitialValue="0"> 
    </asp:RequiredFieldValidator>


</asp:Content>
