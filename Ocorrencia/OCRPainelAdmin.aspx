<%@ page title="" language="C#" masterpagefile="~/Layouts/ContentLayout.master" autoeventwireup="true" inherits="Ocorrencia_OCRPainelAdmin, App_Web_nmukrsuu" %>

<asp:Content ID="OCRPAPageHeader" ContentPlaceHolderID="PageHeader" runat="Server">
</asp:Content>
<asp:Content ID="OCRPANavigationBar" ContentPlaceHolderID="NavigationBar" runat="Server">
</asp:Content>
<asp:Content ID="OCRPAContent" ContentPlaceHolderID="Content" runat="Server">


    <asp:ScriptManager ID="smPainelAdmin" runat="server" />
    <div style="padding: 10px 20px 10px 0px;">
        <asp:Label runat="server" ID="lTitle" Text="" Font-Size="Large"></asp:Label>
       
       
        <asp:UpdatePanel ID="upErrorList" runat="server" UpdateMode="Conditional" ChildrenAsTriggers="false">
            <ContentTemplate>
                <div>
                     <asp:Label ID="lMsg" runat="server" Visible="false" ></asp:Label>
                </div>
                <div id="error">
                    <asp:ValidationSummary ID="vsErrors" runat="server" ValidationGroup="vgErrors" CssClass="validationErrorList">
                    </asp:ValidationSummary>
                </div>
            </ContentTemplate>
        </asp:UpdatePanel>


        <asp:UpdatePanel ID="upGrid" runat="server" UpdateMode="Conditional" ChildrenAsTriggers="false">
            <ContentTemplate>

                <asp:GridView runat="server" ID="gvGrid" AutoGenerateColumns="False" DataKeyNames="CODIGO"
                    CellPadding="8" GridLines="None" CssClass="Grid" PagerStyle-CssClass="pgr" AlternatingRowStyle-CssClass="alt"
                    DataSourceID="ldsGrid" AllowSorting="true" EnablePersistedSelection="True" OnSelectedIndexChanged="gvGrid_SelectedIndexChanged"
                    AllowPaging="true" PageSize="12">
                    <PagerStyle CssClass="pgr" />
                    <AlternatingRowStyle CssClass="alt" />
                    <Columns>

                        <asp:TemplateField HeaderText="—" ItemStyle-HorizontalAlign="Center" ItemStyle-VerticalAlign="Middle"
                            ItemStyle-Width="40px">
                            <ItemTemplate>
                                <asp:CheckBox ID="cbDelete" runat="server" />
                            </ItemTemplate>
                            <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" Width="40px"></ItemStyle>
                        </asp:TemplateField>
                        
                        <asp:TemplateField Visible="false">
                            <ItemTemplate>
                                <asp:Label runat="server" ID="lCodigo" Text='<%# Convert.ToString(Eval("CODIGO"))%>' />
                            </ItemTemplate>
                        </asp:TemplateField>
                        
                        <asp:TemplateField HeaderText="Ficha CODU" SortExpression="FICHA_CODU" ItemStyle-HorizontalAlign="Center">
                            <ItemTemplate>
                                <%# Eval("FICHA_CODU")%>
                            </ItemTemplate>
                            <ItemStyle HorizontalAlign="Center"></ItemStyle>
                        </asp:TemplateField>
                        
                        <asp:TemplateField HeaderText="CODU" SortExpression="OCR_CODU.NOME" ItemStyle-HorizontalAlign="Center">
                            <ItemTemplate>
                                <%# Eval("OCR_CODU.NOME")%>
                            </ItemTemplate>
                            <ItemStyle HorizontalAlign="Center"></ItemStyle>
                        </asp:TemplateField>
                        
                        <asp:TemplateField HeaderText="Utilizador" SortExpression="ORA_ASPNET_USERS.USERNAME" ItemStyle-HorizontalAlign="Center">
                            <ItemTemplate>
                                <%# Eval("ORA_ASPNET_USERS.USERNAME")%>
                            </ItemTemplate>
                            <ItemStyle HorizontalAlign="Center"></ItemStyle>
                        </asp:TemplateField>
                        
                        <asp:TemplateField HeaderText="Data de criação" SortExpression="DATA_SISTEMA" ItemStyle-HorizontalAlign="Center">
                            <ItemTemplate>
                                <%# Eval("DATA_SISTEMA")%>
                            </ItemTemplate>
                            <ItemStyle HorizontalAlign="Center"></ItemStyle>
                        </asp:TemplateField>
                        
                        <asp:TemplateField HeaderText="Pedido" ItemStyle-HorizontalAlign="Center" ItemStyle-VerticalAlign="Middle">
                            <ItemTemplate>
                                <asp:Label ID="lPedido" runat="server" Text='<%# evalDecisao(Eval("b")) %>' />
                            </ItemTemplate>
                        </asp:TemplateField>
                        
                        <asp:TemplateField HeaderText="Admitido" ItemStyle-HorizontalAlign="Center" ItemStyle-VerticalAlign="Middle" >
                            <ItemTemplate>
                                <asp:Label ID="lHospital" runat="server" Text='<%# Eval("OCR_HOSPITAL") != null ? "Sim" : "Não" %>' />
                            </ItemTemplate>
                        </asp:TemplateField>
                        
                        <asp:TemplateField HeaderText="Visivel" SortExpression="OCR_OCORRENCIA" ItemStyle-HorizontalAlign="Center" >
                            <ItemTemplate>
                                <asp:Label ID="lEstado" runat="server" Text='<%# Convert.ToString(Eval("ESTADO")) == "1" ? "Sim" : "Não" %>' />
                            </ItemTemplate>
                            <ItemStyle HorizontalAlign="Center"></ItemStyle>
                        </asp:TemplateField>
                        
                        <asp:CommandField ShowSelectButton="true" ButtonType="Link" Visible="false" SelectText="Enroll" />
                    
                    </Columns>
                    <SelectedRowStyle BackColor="#D7FF9B" Font-Bold="false" ForeColor="#333333" />

                </asp:GridView>

                <asp:LinqDataSource ID="ldsGrid" runat="server" ContextTypeName="DAL.VVEAM_Entity"
                    EntityTypeName="" OnSelecting="ldsGrid_Selecting">
                </asp:LinqDataSource>

            </ContentTemplate>
            <Triggers>
                <asp:AsyncPostBackTrigger ControlID="gvGrid" />
                <asp:AsyncPostBackTrigger ControlID="gvGrid" EventName="SelectedIndexChanged" />
            </Triggers>
        </asp:UpdatePanel>

        <asp:UpdatePanel ID="upMenu" runat="server" UpdateMode="Conditional" ChildrenAsTriggers="false">
            <ContentTemplate>
                <div id="divMenu" runat="server" style="float: right">
                    <ul class="opmenu decisaomenu">
                        <li id="liVerDetalhes" runat="server">
                            <img src="../Images/Icons/tick_circle.png" alt="Ver Detalhes" />
                            <asp:LinkButton ID="lbDetalhes" runat="server" Text="Ver Detalhes" OnClick="lbVerDetalhes_Click"
                                CausesValidation="true" ValidationGroup="vgErrors" />
                        </li>
                        <li id="liVisivel" runat="server">
                            <img src="../Images/Icons/eye.png" alt="Visivel" />
                            <asp:LinkButton ID="lbVisivel" runat="server" Text="Visivel" OnClick="lbVisivel_Click"
                                CausesValidation="true" ValidationGroup="vgErrors" OnClientClick="return confirm('Tem a certeza que pretende efectuar esta operação?')" />
                        </li>
                        <li>
                            <img src="../Images/Icons/tick_circle.png" alt="Actualizar" />
                            <asp:LinkButton ID="lbActualizarGrid" runat="server" Text="Actualizar" OnClick="lbActualizarGrid_Click" />
                        </li>

                    </ul>
                </div>
                <div class="clear">
                </div>
            </ContentTemplate>
        </asp:UpdatePanel>

    </div>
</asp:Content>
