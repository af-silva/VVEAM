<%@ control language="C#" autoeventwireup="true" inherits="UserControls_MainMenuAdmin, App_Web_z4dn2xpr" %>


<nav id="menu">
	<ul id="topmenu" class="menubuttons">


        <li class="menubuttons">
            <img src="../Images/Icons/Service_Manager.png" alt="Gerir"/>
            <asp:LinkButton ID="lbGerir" runat="server" Text="Gerir" OnClick="LBHome_Click"  />
        </li>

		<li class="menubuttons">
            <img src="../Images/Icons/barchive.png" alt="Histórico"/>
            <asp:LinkButton  ID="lbHistorico" runat="server" Text="Administração de Ocorrências" OnClick="LBPainelAdmin_Click"  />
        </li>

        <li class="menubuttons">
            <img src="../Images/Icons/bstatistic.png" alt="Estatisticas"/>
            <asp:LinkButton ID="lbEstatisticas" runat="server" Text="Estatísticas" OnClick="LBEstatisticas_Click"  />
        </li>

        

	</ul>				
</nav>