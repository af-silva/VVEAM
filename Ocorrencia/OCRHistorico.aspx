<%@ page title="" language="C#" masterpagefile="~/Layouts/ContentLayout.master" autoeventwireup="true" inherits="Ocorrencia_OCRHistorico, App_Web_nmukrsuu" %>

<asp:Content ID="Content1" ContentPlaceHolderID="PageHeader" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="NavigationBar" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="Content" Runat="Server">

<div>
        <asp:ScriptManager ID="ScriptManager1" runat="server" />


        <asp:UpdatePanel ID="upHomePedido" UpdateMode="Conditional" runat="server">
            <Triggers>
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

                <asp:GridView runat="server" ID="gvGrid" AutoGenerateColumns="false" DataKeyNames="OCR_OCORRENCIA"
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

                        <asp:TemplateField HeaderText="Ficha Codu" SortExpression="OCR_OCORRENCIA.FICHA_CODU">
                            <ItemTemplate>
                                <%# Eval("OCR_OCORRENCIA.FICHA_CODU")%>
                            </ItemTemplate>
                        </asp:TemplateField>

                        <asp:TemplateField HeaderText="Data Ocorrência" SortExpression="OCR_OCORRENCIA.DATA_OCORRENCIA" ItemStyle-HorizontalAlign="Center">
                            <ItemTemplate>
                                <%# Eval("OCR_OCORRENCIA.DATA_OCORRENCIA", "{0:d}")%>
                            </ItemTemplate>
                        </asp:TemplateField>

                        <asp:TemplateField HeaderText="CODU" SortExpression="OCR_OCORRENCIA.OCR_CODU.NOME" ItemStyle-HorizontalAlign="Center">
                            <ItemTemplate>
                                <%# Eval("OCR_OCORRENCIA.OCR_CODU.NOME")%>
                            </ItemTemplate>
                        </asp:TemplateField>

                        <asp:TemplateField HeaderText="Hospital" SortExpression="GI_INSTITUICAO.NOME" ItemStyle-HorizontalAlign="Center">
                            <ItemTemplate>
                                <%# Eval("GI_INSTITUICAO.NOME")%>
                            </ItemTemplate>
                        </asp:TemplateField>

                        <asp:TemplateField HeaderText="Criação da Ocorrência" SortExpression="OCR_OCORRENCIA.DATA_SISTEMA" ItemStyle-HorizontalAlign="Center">
                            <ItemTemplate>
                                <%# Eval("OCR_OCORRENCIA.DATA_SISTEMA")%>
                            </ItemTemplate>
                        </asp:TemplateField>

                        <asp:TemplateField HeaderText="Instante de Admissão" SortExpression="INSTANTE_ADMISSAO" ItemStyle-HorizontalAlign="Center">
                            <ItemTemplate>
                                <%# Eval("INSTANTE_ADMISSAO")%>
                            </ItemTemplate>
                        </asp:TemplateField>
                        

                    </Columns>

                    <SelectedRowStyle BackColor="#D7FF9B" Font-Bold="false" ForeColor="#333333" />

                </asp:GridView>
                


                <asp:LinqDataSource ID="ldsGrid" runat="server" ContextTypeName="DAL.VVEAM_Entity"
                    EntityTypeName="" OnSelecting="ldsGrid_Selecting" >
                </asp:LinqDataSource>
                

            </ContentTemplate>

        </asp:UpdatePanel>

        <asp:UpdatePanel ID="verDetalhes" runat="server" UpdateMode="Conditional">
            <ContentTemplate>

                <div id="divBDetalhes" runat="server" style="float: left; margin: 0 5px 0 0;">
                    <ul class="opmenu decisaomenu">

                        <li>
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

