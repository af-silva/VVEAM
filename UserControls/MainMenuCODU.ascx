<%@ control language="C#" autoeventwireup="true" inherits="UserControls_MainMenuCODU, App_Web_z4dn2xpr" %>


<nav id="menu">
	<ul id="topmenu" class="menubuttons">


		<li class="menubuttons">
            <img src="../Images/Icons/new_occ.png" alt="Nova Ocorrencia"/>
            <asp:LinkButton ID="lbNovaOcorrencia" runat="server" Text="Nova Ocorrência" OnClick="lbNovaOcorrencia_Click" />
        </li>

        <li class="menubuttons">
            <img src="../Images/Icons/request.png" alt="Pedidos Pendentes"/>
            <asp:LinkButton ID="lbPedidos" runat="server" Text="Pedidos Pendentes" OnClick="lbPedidosPendentes_Click" />
        </li>

        <li class="menubuttons">
            <img src="../Images/Icons/request.png" alt="Admissões Pendentes"/>
            <asp:LinkButton ID="LinkButton1" runat="server" Text="Admissões Pendentes" OnClick="lbAdmissoesPendentes_Click" />
        </li>

		<li class="menubuttons">
            <img src="../Images/Icons/barchive.png" alt="Histórico"/>
            <asp:LinkButton  ID="lbHistorico" runat="server" Text="Histórico" OnClick="lbHistorico_Click" />
        </li>


	</ul>				
</nav>