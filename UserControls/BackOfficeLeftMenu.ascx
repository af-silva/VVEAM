<%@ control language="C#" autoeventwireup="true" inherits="UserControls_BackOfficeLeftMenu, App_Web_z4dn2xpr" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>

<asp:ScriptManager ID="smGestaoApp" runat="Server" />
<asp:UpdatePanel ID="upGestaoApp" runat="server" UpdateMode="Conditional">
    
    <ContentTemplate>
        <ajaxToolkit:Accordion ID="aLeftMenu" runat="Server" SelectedIndex="-1" HeaderCssClass="accordionHeader"
            HeaderSelectedCssClass="accordionHeaderSelected" ContentCssClass="accordionContent"
            AutoSize="None" FadeTransitions="true" TransitionDuration="1" FramesPerSecond="40"
            RequireOpenedPane="false" SuppressHeaderPostbacks="true">
           
            <Panes>
                <ajaxToolkit:AccordionPane ID="apPainelGRH" runat="server" HeaderCssClass="accordionHeader"
                    ContentCssClass="accordionContent">
                    <Header>
                        <div style="float:left">Gestão de Recursos Humanos</div><span class="image"></span>
                        <div class="clear"></div>
                    </Header>
                    <Content>

                        <div class="box-menu">
                            <div class="menu">
                                <ul class="leftmenu">
                                    <li class="leftmenubuttons">
                                        <img src="../Images/Icons/ManageAplication.png" alt="Utilizadores" /><asp:LinkButton
                                            ID="lbGUtilizadores" runat="server" Text="Utilizadores" OnClick="GUtilizador_Click"/></li>
                                    <li class="leftmenubuttons">
                                        <img src="../Images/Icons/ManageAplication.png" alt="Tripulantes" /><asp:LinkButton
                                            ID="lbGTripulantes" runat="server" Text="Tripulantes" OnClick="GTripulantes_Click" /></li>
                                   
                                </ul>
                            </div>
                        </div>
                    </Content>
                </ajaxToolkit:AccordionPane>

                <ajaxToolkit:AccordionPane ID="apPainelGE" runat="server" HeaderCssClass="accordionHeader"
                    ContentCssClass="accordionContent">
                    <Header>
                        <div style="float:left">Gestão de Entidades</div><span class="image"></span>
                        <div class="clear"></div>
                    </Header>
                    <Content>
                        <div class="box-menu">
                            <div class="menu">
                                <ul class="leftmenu">
                                    <li class="leftmenubuttons">
                                        <img src="../Images/Icons/ManageAplication.png" alt="Instituções" /><asp:LinkButton
                                            ID="lbGInstituicoes" runat="server" Text="Instituições" OnClick="GInstituicoes_Click" /></li>
                                    <li class="leftmenubuttons">
                                        <img src="../Images/Icons/ManageAplication.png" alt="CODU" /><asp:LinkButton
                                            ID="lbGCodu" runat="server" Text="CODU" OnClick="GCodu_Click"/></li>
                                    <li class="leftmenubuttons">
                                        <img src="../Images/Icons/ManageAplication.png" alt="Serviçõs" /><asp:LinkButton
                                            ID="lbGServicos" runat="server" Text="Serviços" OnClick="GServicos_Click" /></li>
                                </ul>
                            </div>
                        </div>
                    </Content>
                </ajaxToolkit:AccordionPane>

                <ajaxToolkit:AccordionPane ID="apPainelGV" runat="server" HeaderCssClass="accordionHeader"
                    ContentCssClass="accordionContent">
                    <Header>
                        <div style="float:left">Gestão de Veiculos</div><span class="image"></span>
                        <div class="clear"></div>
                    </Header>
                    <Content>
                        <div class="box-menu">
                            <div class="menu">
                                <ul class="leftmenu">
                                    <li class="leftmenubuttons">
                                        <img src="../Images/Icons/ManageAplication.png" alt="Veiculos" /><asp:LinkButton
                                            ID="lbGVeiculos" runat="server" Text="Veiculos" OnClick="GVeiculos_Click" /></li>
                                    <li class="leftmenubuttons">
                                        <img src="../Images/Icons/ManageAplication.png" alt="Tipo Veiculos" /><asp:LinkButton
                                            ID="lbGTipoVeiculos" runat="server" Text="Tipos de Veiculo" OnClick="GTipoVeiculo_Click" /></li>
                                </ul>
                            </div>
                        </div>
                    </Content>
                </ajaxToolkit:AccordionPane>

                <ajaxToolkit:AccordionPane ID="apPainelGVS" runat="server" HeaderCssClass="accordionHeader"
                    ContentCssClass="accordionContent">
                    <Header>
                        <div style="float:left">Gestão de Variaveis de Sistema</div><span class="image"></span>
                        <div class="clear"></div>
                    </Header>
                    <Content>
                        <div class="box-menu">
                            <div class="menu">
                                <ul class="leftmenu">
                                    <li class="leftmenubuttons">
                                        <img src="../Images/Icons/ManageAplication.png" alt="Sintomas" /><asp:LinkButton
                                            ID="lbGSintomas" runat="server" Text="Sintomas" OnClick="GSintomas_Click" /></li>
                                    <li class="leftmenubuttons">
                                        <img src="../Images/Icons/ManageAplication.png" alt="Critérios" /><asp:LinkButton
                                            ID="lbGCriterios" runat="server" Text="Critérios" OnClick="GCriterios_Click" /></li>
                                    <li class="leftmenubuttons">
                                        <img src="../Images/Icons/ManageAplication.png" alt="Local de Contacto" /><asp:LinkButton
                                            ID="lbGLocalContacto" runat="server" Text="Local de Contacto" OnClick="GLocalContacto_Click" /></li>
                                    <li class="leftmenubuttons">
                                        <img src="../Images/Icons/ManageAplication.png" alt="Risco de Hemorragia" /><asp:LinkButton
                                            ID="lbGRHemorragia" runat="server" Text="Risco de Hemorragia" OnClick="GRHemorragia_Click" /></li>
                                    <li class="leftmenubuttons">
                                        <img src="../Images/Icons/ManageAplication.png" alt="Classe Killip" /><asp:LinkButton
                                            ID="lbGClasseKillip" runat="server" Text="Classe Killip" OnClick="GClasseKillip_Click" /></li>
                                    <li class="leftmenubuttons">
                                        <img src="../Images/Icons/ManageAplication.png" alt="Razões de Aceitação" /><asp:LinkButton
                                            ID="LinkButton1" runat="server" Text="Razões de Aceitação" OnClick="GRazao_Click" /></li>
                                </ul>
                            </div>
                        </div>
                    </Content>
                </ajaxToolkit:AccordionPane>
            </Panes>

        </ajaxToolkit:Accordion>
    </ContentTemplate>
</asp:UpdatePanel>