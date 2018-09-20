<%@ page title="" language="C#" masterpagefile="~/Layouts/ContentLayout.master" autoeventwireup="true" inherits="Ocorrencia_OCRPedidoPendente, App_Web_nmukrsuu" %>

<asp:Content ID="Content1" ContentPlaceHolderID="PageHeader" runat="Server">

    <script type="text/javascript">

        function countDown() {


                if ('#<%=time.ClientID %>' != null) {

                    s = document.getElementById('<%= time.ClientID %>').firstChild.nodeValue;
                    s--;
                    if (s < 0) {
                        s = <%=(timerPedidos/1000)%>
                    }
                    document.getElementById('<%= time.ClientID %>').firstChild.nodeValue = s;
                    cd = setTimeout('countDown()', 1000);

                }
            }


    </script>


</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="NavigationBar" runat="Server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="Content" runat="Server">



    <div style="margin:15px">
        <asp:ScriptManager ID="ScriptManager1" runat="server" />

        <asp:Timer ID="TimerGrid" runat="server" OnTick="TimerGrid_Tick">
        </asp:Timer>



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


        <asp:UpdatePanel ID="upHomeResposta" UpdateMode="Conditional" runat="server">

            <Triggers>
                <asp:AsyncPostBackTrigger ControlID="TimerGrid" EventName="Tick" />
                <asp:AsyncPostBackTrigger ControlID="lbVerDetalhes" EventName="Click" />
            </Triggers>

            <ContentTemplate>


            <asp:UpdatePanel ID="upGridOcorrencias" UpdateMode="Conditional" runat="server">
            <ContentTemplate>

            <div id="gridOcorrencias" runat="server">
                
                
                
                <asp:Label ID="lGridOcorrencias" runat="server" Font-Size="Large" Text="Ocorrencias sem pedidos que se encontram pendentes"></asp:Label>
                
                <asp:GridView runat="server" ID="gvGridOcorrencia" AutoGenerateColumns="false" DataKeyNames="CODIGO"
                    CellPadding="8" GridLines="None" CssClass="Grid" PagerStyle-CssClass="pgr" AlternatingRowStyle-CssClass="alt"
                    DataSourceID="ldsGridOcorrencia" EnablePersistedSelection="True" OnSelectedIndexChanged="gvGridOcorrencia_SelectedIndexChanged"
                    PageSize="10" AllowPaging="True" AllowSorting="true">
                    <PagerStyle CssClass="pgr" />
                    <AlternatingRowStyle CssClass="alt" />
                    <Columns>
                        <asp:TemplateField Visible="false">
                            <ItemTemplate>
                                <asp:Label runat="server" ID="lCodigo" Text='<%# Convert.ToString(Eval("CODIGO"))%>' />
                            </ItemTemplate>
                        </asp:TemplateField>
                       
                        <asp:TemplateField HeaderText="Ficha CODU" SortExpression="FICHA_CODU"
                            ItemStyle-HorizontalAlign="Center">
                            <ItemTemplate>
                                <%# Eval("FICHA_CODU")%>
                            </ItemTemplate>
                        </asp:TemplateField>

                        <asp:TemplateField HeaderText="Instituicao" SortExpression="OCR_CODU.NOME" Visible = "false">
                            <ItemTemplate>
                                <%# Eval("OCR_CODU.NOME")%>
                            </ItemTemplate>
                        </asp:TemplateField>

                        <asp:TemplateField HeaderText="Data da Ocorrencia" SortExpression="DATA_OCORRENCIA"
                            ItemStyle-HorizontalAlign="Center">
                            <ItemTemplate>
                                <%# Eval("DATA_OCORRENCIA", "{0:dd-MM-yyyy}")%>
                            </ItemTemplate>
                        </asp:TemplateField>

                        <asp:TemplateField HeaderText="Data de criação" SortExpression="DATA_SISTEMA"
                            ItemStyle-HorizontalAlign="Center">
                            <ItemTemplate>
                                <%# Eval("DATA_SISTEMA", "{0:dd-MM-yyyy HH:mm:ss}")%>
                            </ItemTemplate>
                        </asp:TemplateField>


                        <asp:TemplateField HeaderText="Utilizador" SortExpression="ORA_ASPNET_USERS.USERNAME"
                            ItemStyle-HorizontalAlign="Center">
                            <ItemTemplate>
                                <%# Eval("ORA_ASPNET_USERS.USERNAME")%>
                            </ItemTemplate>
                        </asp:TemplateField>

                    </Columns>
                    <SelectedRowStyle BackColor="#D7FF9B" Font-Bold="false" ForeColor="#333333" />
                </asp:GridView>

                <asp:LinqDataSource ID="ldsGridOcorrencia" runat="server" ContextTypeName="DAL.VVEAM_Entity"
                    EntityTypeName="" OnSelecting="ldsGridOcorrencia_Selecting">
                </asp:LinqDataSource>


                </div>
                </ContentTemplate>

                <Triggers>
                    <asp:AsyncPostBackTrigger ControlID="gvGridOcorrencia" EventName="SelectedIndexChanged" />
                </Triggers>

                </asp:UpdatePanel>


                <hr id="hr" class="hr-line" style="margin:20px 0;" runat="server"/>
              
              <asp:UpdatePanel ID="upGridPedidos" UpdateMode="Conditional" runat="server">
              <ContentTemplate>
              <div id="gridPedidos" runat="server" > 
                <asp:Label ID="lGridPedidos" runat="server" Font-Size="Large" Text="Pedidos efectuados que se encontram pendentes"></asp:Label>
                
                <asp:GridView runat="server" ID="gvGridPedidos" AutoGenerateColumns="false" DataKeyNames="CODIGO"
                    CellPadding="8" GridLines="None" CssClass="Grid" PagerStyle-CssClass="pgr" AlternatingRowStyle-CssClass="alt"
                    DataSourceID="ldsGridPedidos" EnablePersistedSelection="True" OnSelectedIndexChanged="gvGridPedidos_SelectedIndexChanged"
                    OnRowDataBound="gvGridPedidos_RowDataBound" PageSize="10" AllowPaging="True" AllowSorting="true">
                    
                    <PagerStyle CssClass="pgr" />
                    <AlternatingRowStyle CssClass="alt" />

                    <Columns>

                        <asp:TemplateField Visible="false">
                            <ItemTemplate>
                                <asp:Label runat="server" ID="lCodigo" Text='<%# Convert.ToString(Eval("CODIGO"))%>' />
                            </ItemTemplate>
                        </asp:TemplateField>

                        <asp:TemplateField HeaderText="Ficha CODU" SortExpression="OCR_OCORRENCIA.FICHA_CODU"
                            ItemStyle-HorizontalAlign="Center">
                            <ItemTemplate>
                                <%# Eval("FICHA_CODU")%>
                            </ItemTemplate>
                        </asp:TemplateField>

                        <asp:TemplateField HeaderText="Pedido feito pelo CODU" SortExpression="OCR_CODU.NOME" Visible="false"
                        ItemStyle-HorizontalAlign="Center">
                            <ItemTemplate>
                                <%# Eval("OCR_CODU.NOME")%>
                            </ItemTemplate>
                        </asp:TemplateField>

                        <asp:TemplateField HeaderText="Data da Ocorrencia" SortExpression="DATA_OCORRENCIA"
                            ItemStyle-HorizontalAlign="Center">
                            <ItemTemplate>
                                <%# Eval("DATA_OCORRENCIA", "{0:dd-MM-yyyy}")%>
                            </ItemTemplate>
                        </asp:TemplateField>

                        <asp:TemplateField HeaderText="Último pedido efectuado" SortExpression="INSTANTE_PEDIDO"
                            ItemStyle-HorizontalAlign="Center">
                            <ItemTemplate>
                                <asp:Label ID="lInstante" runat="server"></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>

                        <asp:TemplateField HeaderText="Pedido efectuado a" SortExpression="INSTANTE_PEDIDO"
                            ItemStyle-HorizontalAlign="Center" Visible ="false">
                            <ItemTemplate>
                                <asp:Label ID="lInstituicaoPedido" runat="server"></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>

                        <asp:TemplateField HeaderText="Utilizador" SortExpression="ORA_ASPNET_USERS.USERNAME"
                            ItemStyle-HorizontalAlign="Center">
                            <ItemTemplate>
                                <%# Eval("ORA_ASPNET_USERS.USERNAME")%>
                            </ItemTemplate>
                        </asp:TemplateField>

                    </Columns>
                    <SelectedRowStyle BackColor="#D7FF9B" Font-Bold="false" ForeColor="#333333" />
                </asp:GridView>

                <asp:LinqDataSource ID="ldsGridPedidos" runat="server" ContextTypeName="DAL.VVEAM_Entity"
                    EntityTypeName="" OnSelecting="ldsGridPedidos_Selecting">
                </asp:LinqDataSource>

                </div>


                <div id="menuMessage" runat="server">
                                
                    <span style="float:left; margin: 10px 0;">Proxima actualização dos dados em</span>
                    <span ID="time" style="float:left; margin: 10px 3px;" runat="server"><%=timerPedidos / 1000%></span>
                    <span  style="float:left; margin: 10px 0;">segundos.</span>

                    <div class="clear"></div>

                </div>

                </ContentTemplate>

                <Triggers>
                    <asp:AsyncPostBackTrigger ControlID="gvGridPedidos" EventName="SelectedIndexChanged" />
                </Triggers>

                </asp:UpdatePanel>



            </ContentTemplate>
        </asp:UpdatePanel>

        <asp:UpdatePanel ID="verDetalhes" runat="server" UpdateMode="Conditional" ChildrenAsTriggers="false">

            <ContentTemplate>
                <div id="divVerDetalhes" runat="server" style="float: left; margin: 10px 5px 10px 0;">
                    <ul class="opmenu decisaomenu">

                        <li id="liVerDetalhes" runat="server">
                            <img src="../Images/Icons/tick_circle.png" alt="Ver Detalhes" />
                            <asp:LinkButton ID="lbVerDetalhes" runat="server" Text="Ver Detalhes" OnClick="lbVerDetalhes_Click" />
                        </li>
                        <li>
                            <img src="../Images/Icons/tick_circle.png" alt="Efectuar Pedido" />
                            <asp:LinkButton ID="lbActualizarGrid" runat="server" Text="Actualizar Paineis" OnClick="lbActualizarGrid_Click" />
                        </li>

                    </ul>
                </div>
            </ContentTemplate>

            <Triggers>
                <asp:AsyncPostBackTrigger ControlID="lbVerDetalhes" EventName="Click" />
            </Triggers>
        </asp:UpdatePanel>
    </div>
</asp:Content>
