<%@ page title="" language="C#" masterpagefile="~/Layouts/LeftMenuLayout.master" autoeventwireup="true" inherits="BackOffice_AAUtilizador, App_Web_0h3rwstd" %>

<%@ Import Namespace="System.Web.Security" %>
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
                <asp:Label runat="server" ID="laatTitle" Text="Novo Utilizador da Aplicação" Font-Size="Large"></asp:Label>
            </div>

            <div id="error">
                <asp:ValidationSummary ID="vsUtilizador" runat="server" ValidationGroup="vgError"
                    CssClass="validationErrorList"></asp:ValidationSummary>
            </div>

            <asp:Panel ID="pSuccessMessage" runat="server" CssClass="successMessage" Visible="false">
                <asp:Label ID="lMsg" runat="server" />
            </asp:Panel>

            <div class="backoffice-body">
                <div class="bo-boxfield">
                    <asp:Label ID="lNome" Text="Nome" runat="server" CssClass="bo-label" />
                    <asp:TextBox ID="tbNome" runat="server" CssClass="bo-tbox" Width="300px" />
                </div>
                <div class="bo-boxfield">
                    <asp:Label ID="lPassword" runat="server" Text="Password" CssClass="bo-label" />
                    <asp:TextBox ID="tbPassword" runat="server" CssClass="bo-tbox" Width="100px" TextMode="Password" />
                </div>
                <div class="bo-boxfield">
                    <asp:Label ID="lPasswordConfirm" runat="server" Text="Confirmar Password" CssClass="bo-label" />
                    <asp:TextBox ID="tbPasswordConfirm" runat="server" CssClass="bo-tbox" Width="100px"
                        TextMode="Password" />
                </div>

                <asp:UpdatePanel ID="upUtilizador" runat="server" ChildrenAsTriggers="false" UpdateMode="Conditional">
                    <ContentTemplate>
                        <div class="bo-boxfield">
                            <asp:Label ID="lRole" runat="server" Text="Tipo Utilizador" CssClass="bo-label" />
                            <asp:DropDownList ID="ddlRole" runat="server" CssClass="bo-dropdow" Width="150px"
                                OnSelectedIndexChanged="ddlRole_SelectedIndexChanged" AutoPostBack="true">
                            </asp:DropDownList>
                        </div>
                    </ContentTemplate>
                    <Triggers>
                        <asp:AsyncPostBackTrigger ControlID="ddlRole" EventName="SelectedIndexChanged" />
                    </Triggers>
                </asp:UpdatePanel>

                <asp:UpdatePanel ID="upInstituicoes" runat="server" ChildrenAsTriggers="false" UpdateMode="Conditional">
                    <ContentTemplate>

                        <div class="bo-boxfield" runat="server" id="ddlInstituicoesDiv" Visible="false">
                            <asp:Label ID="lInstituicoes" runat="server" Text="Instituição" CssClass="bo-label" />
                            <asp:DropDownList ID="ddlInstituicoes" runat="server" CssClass="bo-dropdow" Width="300px">
                            </asp:DropDownList>
                        </div>

                        <asp:RequiredFieldValidator ID="rfvInstituicoes" runat="server" ControlToValidate="ddlInstituicoes"
                            ValidationGroup="vgError" Display="None" InitialValue="0" Enabled="false">
                        </asp:RequiredFieldValidator>

                    </ContentTemplate>
                </asp:UpdatePanel>

                <div class="bo-boxfield">
                    <asp:Label ID="lActivo" Text="Activo" runat="server" CssClass="bo-label" />
                    <asp:CheckBox ID="cbEstado" runat="server" CssClass="bo-cbox" />
                </div>
                <div class="bo-buttonbox">
                    <asp:Button ID="bGuardar" runat="server" Style="text-align: center;" Text="Adicionar"
                        CssClass="button" OnClick="bGuardar_Click" ValidationGroup="vgError" />
                    <asp:Button ID="bCancelar" runat="server" Style="text-align: center;" Text="Cancelar"
                        CssClass="button bo-cancel" OnClick="bCancelar_Click" />
                </div>
            </div>

            <asp:RequiredFieldValidator ID="rfvNome" runat="server" ControlToValidate="tbNome"
                ValidationGroup="vgError" ErrorMessage="Por favor preencha o campo Nome." Display="None">
            </asp:RequiredFieldValidator>
            
            <asp:RequiredFieldValidator ID="rfvRole" runat="server" ControlToValidate="ddlRole"
                ValidationGroup="vgError" ErrorMessage="Por favor indique o tipo de utilizador."
                Display="None" InitialValue="0">
            </asp:RequiredFieldValidator>

            <asp:RequiredFieldValidator ID="rfvPassword" runat="server" ControlToValidate="tbPassword"
                ValidationGroup="vgError" ErrorMessage="Por favor insira uma password" Display="None"> 
            </asp:RequiredFieldValidator>

            <asp:RequiredFieldValidator ID="rfvPasswordConfirmation" runat="server" ControlToValidate="tbPasswordConfirm"
                Display="None" ErrorMessage="Por favor insira novamente password" ValidationGroup="vgError">
            </asp:RequiredFieldValidator>

            <asp:CompareValidator ID="cvPasswordConfirmation" runat="server" ControlToValidate="tbPasswordConfirm"
                Display="None" ControlToCompare="tbPassword" ErrorMessage="As passwords não são iguais, volta a inserir novamente."
                ValidationGroup="vgError">
            </asp:CompareValidator>



</asp:Content>
