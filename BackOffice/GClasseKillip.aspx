<%@ page title="" language="C#" masterpagefile="~/Layouts/LeftMenuLayout.master" autoeventwireup="true" inherits="BackOffice_GClasseKillip, App_Web_0h3rwstd" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>


<asp:Content ID="Content1" ContentPlaceHolderID="PageHeader" Runat="Server">

    <script type="text/javascript">
        function pageLoad(sender, args) {
            smoothAnimation();
        }

        function smoothAnimation() {
            var collPanel = $find('<%= cpeOpcoesAvancadas.ClientID %>')
            collPanel._animation._fps = 40;
            collPanel._animation._duration = 0;
        }
    </script>

</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="NavigationBar" Runat="Server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="PageMainContent" Runat="Server">


<div style="padding: 10px 20px 10px 0px;">
      <asp:Label runat="server" ID="lgtTitle" Text="Gerir Classe Killip" Font-Size="Large"></asp:Label>
      <asp:UpdatePanel ID="upTopMenu" runat="server" UpdateMode="Conditional" ChildrenAsTriggers="false">
            <ContentTemplate>
                <div style="float: right">
                    <ul class="opmenu topmenu">
                        <li>
                            <img src="../Images/Icons/create.png" alt="Criar" />
                            <asp:LinkButton ID="ButtonCriar" runat="server" Text="Criar" OnClick="ButtonCriar_Click"
                                CausesValidation="true" ValidationGroup="vgErrors" />
                        </li>
                        <li>
                            <img src="../Images/Icons/edit.png" alt="Alterar" />
                            <asp:LinkButton ID="LinkButton1" runat="server" Text="Editar" OnClick="ButtonEditar_Click"
                                CausesValidation="true" ValidationGroup="vgErrors" />
                        </li>
                        <li>
                            <img src="../Images/Icons/delete.png" alt="Remover" />
                            <asp:LinkButton ID="ButtonEditar" runat="server" Text="Remover" OnClick="ButtonRemover_Click"
                                CausesValidation="true" ValidationGroup="vgErrors" />
                        </li>
                    </ul>
                </div>
                <div class="clear">
                </div>
            </ContentTemplate>
        </asp:UpdatePanel>
        <asp:UpdatePanel ID="upErrorList" runat="server" UpdateMode="Conditional" ChildrenAsTriggers="false">
            <ContentTemplate>
                <div id="error">
                    <asp:ValidationSummary ID="vsErrors" runat="server" ValidationGroup="vgErrors"
                        CssClass="validationErrorList"></asp:ValidationSummary>
                </div>
            </ContentTemplate>
        </asp:UpdatePanel>

        <asp:UpdatePanel ID="upGrid" runat="server" UpdateMode="Conditional" ChildrenAsTriggers="false">
            <ContentTemplate>
                <asp:GridView runat="server" ID="gvGrid" AutoGenerateColumns="False" DataKeyNames="CODIGO"
                    CellPadding="8" GridLines="None" CssClass="Grid" PagerStyle-CssClass="pgr" AlternatingRowStyle-CssClass="alt"
                    PageSize="10" DataSourceID="ldsGridView" AllowPaging="True" AllowSorting="true"
                    OnSelectedIndexChanged="gvGrid_SelectedIndexChanged" EnablePersistedSelection="True">
                    <PagerStyle CssClass="pgr" />
                    <AlternatingRowStyle CssClass="alt" />
                 <Columns>

                    <asp:TemplateField HeaderText="—" ItemStyle-HorizontalAlign="Center" ItemStyle-VerticalAlign="Middle"
                        ItemStyle-Width="40px">
                        <ItemTemplate>
                            <asp:CheckBox ID="cbDelete" runat="server" />
                        </ItemTemplate>
                    </asp:TemplateField>

                    <asp:TemplateField Visible="false">
                        <ItemTemplate>
                            <asp:Label runat="server" ID="lCodigo" Text='<%# Convert.ToString(Eval("CODIGO"))%>' />
                        </ItemTemplate>
                    </asp:TemplateField>
                
                    <asp:BoundField DataField="NOME" HeaderText="Nome" ReadOnly="True" SortExpression="NOME" />
                
                    <asp:TemplateField HeaderText="Estado" ItemStyle-HorizontalAlign="Center" ItemStyle-VerticalAlign="Middle">
                        <ItemTemplate>
                            <asp:Label ID="lEstado" runat="server" Text='<%#  Convert.ToString(Eval("ESTADO")) == "1" ? "Activo" : "Inactivo" %>' />
                        </ItemTemplate>
                    </asp:TemplateField>

                    <asp:CommandField ShowSelectButton="true" ButtonType="Link" Visible="false" SelectText="Enroll" />
            </Columns>
            <SelectedRowStyle BackColor="#D7FF9B" Font-Bold="false" ForeColor="#333333" />
          </asp:GridView>

            <asp:LinqDataSource ID="ldsGridView" runat="server" ContextTypeName="DAL.VVEAM_Entity"
                EntityTypeName="" Select="new (CODIGO, NOME, ESTADO)" TableName="OCR_CLASSE_KILLIP"
                OrderBy="CODIGO" >
            </asp:LinqDataSource>
        </ContentTemplate>

         <Triggers>
                <asp:AsyncPostBackTrigger ControlID="gvGrid" />
                <asp:AsyncPostBackTrigger ControlID="gvGrid" EventName="SelectedIndexChanged" />
            </Triggers>
        </asp:UpdatePanel>
        <asp:UpdatePanel ID="upOpcoesAvancadas" runat="server" UpdateMode="Conditional" ChildrenAsTriggers="false">
            <ContentTemplate>
                <div class="opcoesvancadas">
                    <asp:LinkButton ID="LBOAvancadas" runat="server" OnClick="LBOAvancadas_Click">
                        Opções Avançadas
                        <asp:Image ID="imageOpcoesAvancadas" runat="server" CssClass="imageOpcoesAvancadas" />
                    </asp:LinkButton>
                </div>
                <asp:Panel ID="pBodyOpcoesAvancadas" runat="server" CssClass="accordionContent">
                    <div class="bottommenu-body">
                        <asp:Label ID="oaMenuTitle" runat="server" Text="Por favor escolha uma das seguintes opção à aplicar aos items seleccionados:"
                            CssClass="oamenutitle" />
                        <ul class="opmenu bottommenu">
                            <li>
                                <img src="../Images/Icons/change.png" alt="Alterar" />
                                <asp:LinkButton ID="LBOAAlterar" runat="server" Text="Alterar Estado" OnClick="LBOAAlterar_Click"
                                    OnClientClick="return ConfirmOnDelete();" CausesValidation="true" ValidationGroup="vgErrors" />
                            </li>
                            <li>
                                <img src="../Images/Icons/list-remove.png" alt="Remover" />
                                <asp:LinkButton ID="LBOARemover" runat="server" Text="Remover" OnClick="LBOARemover_Click"
                                    OnClientClick="return ConfirmOnDelete();" CausesValidation="true" ValidationGroup="vgErrors" />
                            </li>
                        </ul>
                    </div>
                </asp:Panel>
                <ajaxToolkit:CollapsiblePanelExtender ID="cpeOpcoesAvancadas" runat="server" TargetControlID="pBodyOpcoesAvancadas"
                    CollapseControlID="LBOAvancadas" ExpandControlID="LBOAvancadas" Collapsed="true"
                    TextLabelID="lblTextOpcoesAvancadas" CollapsedText="Pré-Hospitalar" ExpandedText="Pré-Hospitalar"
                    CollapsedSize="0" Enabled="True" SuppressPostBack="False" ImageControlID="imageOpcoesAvancadas"
                    ExpandedImage="../Images/Icons/panel_collapse.png" CollapsedImage="../Images/Icons/panel_expand.png">
                </ajaxToolkit:CollapsiblePanelExtender>
                <asp:Label ID="teste" runat="server"></asp:Label>
            </ContentTemplate>
            <Triggers>
                <asp:AsyncPostBackTrigger ControlID="LBOAAlterar" EventName="Click" />
                <asp:AsyncPostBackTrigger ControlID="LBOARemover" EventName="Click" />
            </Triggers>
        </asp:UpdatePanel>
    </div>
</asp:Content>



    