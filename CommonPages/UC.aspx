<%@ page title="" language="C#" masterpagefile="~/Layouts/ContentLayout.master" autoeventwireup="true" inherits="CommonPages_UC, App_Web_e1rq5dd1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="PageHeader" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="NavigationBar" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="Content" Runat="Server">

<asp:ScriptManager ID="spWarning" runat="server"></asp:ScriptManager>

    <asp:UpdatePanel ID="upWarning" runat="server" UpdateMode="Conditional" ChildrenAsTriggers="false">
        <ContentTemplate>
            <div id="warningDiv" runat="server" style="width:550px; margin: 50px auto 50px auto; ">
                    
                <div style="float:left;">
                    <asp:Image ID="warningImage" runat="server" ImageUrl="~/Images/Icons/warning.png" 
                        Width="90px" ImageAlign="Middle"/>
                </div>

                <div style="float:right;">
                    <asp:Label ID="lMsg" runat="server" Font-Size="28px" Font-Bold="true" Width="450px"></asp:Label>
                </div>

                <div class="clear"></div>

            </div>
        </ContentTemplate>
     </asp:UpdatePanel>





</asp:Content>

