<%@ page title="" language="C#" masterpagefile="~/Layouts/ContentLayout.master" autoeventwireup="true" inherits="Default, App_Web_e1rq5dd1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="PageHeader" runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="NavigationBar" runat="Server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="Content" runat="Server">
    <div style="width: 800px; margin: 50px auto 50px auto; text-align:center;">
        <asp:Label ID="lMsg" runat="server" Font-Size="22px" Font-Bold="true"  Text="Projecto Final de Curso em Eng. Informática Ramo de Gestão"></asp:Label>
        <br />
        <asp:Label ID="Label1" runat="server" Font-Size="22px" Font-Bold="true"  Text="Gestão das Vias Verdes do Enfarte Agudo do Miocárdio"></asp:Label>
    </div>

    <div style="width: 500px; margin:50px auto 50px auto;">
        <asp:Image ID="iVVEAM" runat="server" ImageUrl="~/Images/Image/VVEAM.png" Width="500px"
            ImageAlign="Middle" />
    </div>
</asp:Content>
