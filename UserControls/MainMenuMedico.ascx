<%@ control language="C#" autoeventwireup="true" inherits="UserControls_MainMenuMedico, App_Web_z4dn2xpr" %>

<nav id="menu">
	<ul id="topmenu" class="menubuttons">
        

        <li class="menubuttons">
            <img src="../Images/Icons/request.png" alt="Pedidos Pendentes"/>
            <asp:LinkButton ID="lbNovosPedidos" runat="server" Text="Pedidos Pendentes"  OnClick="lbNovosPedidos_Click" />
        </li>


        <li class="menubuttons">
            <img src="../Images/Icons/request.png" alt="Admissões Pendentes"/>
            <asp:LinkButton ID="lbAdmissao" runat="server" Text="Admissões Pendentes"  OnClick="lbAdmissao_Click" />
        </li>
        

		<li class="menubuttons">
            <img src="../Images/Icons/barchive.png" alt="Histórico"/>
            <asp:LinkButton ID="lbHistorico" runat="server" Text="Histórico"  OnClick="lbHistorico_Click" />
        </li>


	</ul>				
</nav>