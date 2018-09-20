<%@ page title="" language="C#" masterpagefile="~/Layouts/ContentLayout.master" autoeventwireup="true" inherits="Ocorrencia_OCRAdmissaoPendente, App_Web_nmukrsuu" %>

<asp:Content ID="Content1" ContentPlaceHolderID="PageHeader" runat="Server">

    <script type="text/javascript">

        function countDown() {


                if ('#<%=time.ClientID %>' != null) {

                    s = document.getElementById('<%= time.ClientID %>').firstChild.nodeValue;
                    s--;
                    if (s < 0) {
                        s = <%=(timerAdmissao/1000)%>
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
    <div>
        <asp:ScriptManager ID="smAdmissaoPendente" runat="server" />
        <asp:Timer ID="TimerGrid" runat="server" OnTick="TimerGrid_Tick">
        </asp:Timer>
        <asp:UpdatePanel ID="upHomePedido" UpdateMode="Conditional" runat="server">
            <Triggers>
                <asp:AsyncPostBackTrigger ControlID="TimerGrid" EventName="Tick" />
                <asp:AsyncPostBackTrigger ControlID="lbVerDetalhes" EventName="Click" />
            </Triggers>
            <ContentTemplate>
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
                <asp:GridView runat="server" ID="gvGrid" AutoGenerateColumns="false" DataKeyNames="CODIGO"
                    CellPadding="8" GridLines="None" CssClass="Grid" PagerStyle-CssClass="pgr" AlternatingRowStyle-CssClass="alt"
                    DataSourceID="ldsGrid" EnablePersistedSelection="True" OnSelectedIndexChanged="gvGrid_SelectedIndexChanged"
                    PageSize="10" AllowPaging="True" AllowSorting="true">
                    <PagerStyle CssClass="pgr" />
                    <AlternatingRowStyle CssClass="alt" />
                    <Columns>
                        <asp:TemplateField Visible="false">
                            <ItemTemplate>
                                <asp:Label runat="server" ID="lCodigo" Text='<%# Convert.ToString(Eval("OCR_OCORRENCIA.CODIGO"))%>' />
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Ficha CODU" SortExpression="OCR_OCORRENCIA.FICHA_CODU"
                            ItemStyle-HorizontalAlign="Center">
                            <ItemTemplate>
                                <%# Eval("OCR_OCORRENCIA.FICHA_CODU")%>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="CODU" SortExpression="OCR_OCORRENCIA.OCR_CODU.NOME"
                            ItemStyle-HorizontalAlign="Center" Visible="false">
                            <ItemTemplate>
                                <%# Eval("OCR_OCORRENCIA.OCR_CODU.NOME")%>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Data Ocorrência" SortExpression="OCR_OCORRENCIA.DATA_OCORRENCIA"
                            ItemStyle-HorizontalAlign="Center">
                            <ItemTemplate>
                                <%# Eval("OCR_OCORRENCIA.DATA_OCORRENCIA", "{0:dd-MM-yyyy}")%>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Pedido efectuado" SortExpression="INSTANTE_PEDIDO"
                            ItemStyle-HorizontalAlign="Center">
                            <ItemTemplate>
                                <%# Eval("INSTANTE_PEDIDO", "{0:dd-MM-yyyy HH:mm}")%>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Pedido Respondido" SortExpression="INSTANTE_RESPOSTA"
                            ItemStyle-HorizontalAlign="Center">
                            <ItemTemplate>
                                <%# Eval("INSTANTE_RESPOSTA", "{0:dd-MM-yyyy HH:mm}")%>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Médico" ItemStyle-HorizontalAlign="Center" SortExpression="ORA_ASPNET_USERS.USERNAME">
                            <ItemTemplate>
                                <%# Eval("ORA_ASPNET_USERS.USERNAME")%>
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                    <SelectedRowStyle BackColor="#D7FF9B" Font-Bold="false" ForeColor="#333333" />
                </asp:GridView>
                <asp:LinqDataSource ID="ldsGrid" runat="server" ContextTypeName="DAL.VVEAM_Entity"
                    EntityTypeName="" OnSelecting="ldsGrid_Selecting">
                </asp:LinqDataSource>
                <div id="menuMessage" runat="server">
                    <span style="float: left; margin: 10px 0;">Proxima actualização dos dados em</span>
                    <span id="time" style="float: left; margin: 10px 3px;" runat="server">
                        <%=timerAdmissao / 1000%></span> <span style="float: left; margin: 10px 0;">segundos.</span>
                    <div class="clear">
                    </div>
                </div>
            </ContentTemplate>
        </asp:UpdatePanel>
        <asp:UpdatePanel ID="verDetalhes" runat="server" UpdateMode="Conditional">
            <ContentTemplate>
                <div id="divBDetalhes" runat="server" style="float: left; margin: 0 5px 0 0;">
                    <ul class="opmenu decisaomenu">
                        <li id="liVerDetalhes" runat="server">
                            <img src="../Images/Icons/tick_circle.png" alt="Ver Detalhes" />
                            <asp:LinkButton ID="lbVerDetalhes" runat="server" Text="Ver Detalhes" OnClick="lbVerDetalhes_Click" />
                        </li>
                        <li>
                            <img src="../Images/Icons/tick_circle.png" alt="Efectuar Pedido" />
                            <asp:LinkButton ID="lbActualizarGrid" runat="server" Text="Actualizar" OnClick="lbActualizarGrid_Click" />
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
