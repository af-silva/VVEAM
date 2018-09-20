<%@ page title="" language="C#" masterpagefile="~/Layouts/BackGroundLayout.master" autoeventwireup="true" inherits="CommonPages_ErrorPage, App_Web_e1rq5dd1" %>


<asp:Content ID="ofPageHeader" ContentPlaceHolderID="head" runat="Server">
    <title>VVEAM - ERROR</title>
</asp:Content>
<asp:Content ID="FormContent" ContentPlaceHolderID="MainContent" runat="Server">

    <div style="width:550px; margin: 100px auto 50px auto;">
        <asp:Image ID="error" runat="server" ImageUrl="~/Images/Icons/stop.png" Width="500px" ImageAlign="Middle"/>
    </div>


</asp:Content>
