<%@ page title="" language="C#" masterpagefile="~/Layouts/BackGroundLayout.master" autoeventwireup="true" inherits="Account_Login, App_Web_p5rixcgp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <!--[if lte IE 9]>
			<script src="http://html5shiv.googlecode.com/svn/trunk/html5.js"></script>
		<![endif]-->
    <script type="text/javascript" src="http://www.google.com/jsapi"></script>
    <script type="text/javascript">
		//<![CDATA[
        google.load("jquery", "1");
        //google.load("jqueryui", "1");
        //google.load("swfobject", "1");
		//]]>
    </script>
    <script src="../Scripts/modernizr.js"></script>
    <script src="../Scripts/placeholderie.js"></script>
    <title>Login - Vias Verdes do EAM</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="Server">
    <form id="login" runat="server">
    <asp:Login ID="LoginUser" runat="server" OnLoggedIn="Login_OnLoggedIn" EnableViewState="false"
        RenderOuterTable="false" DisplayRememberMe="true">
        <LayoutTemplate>
            <div class="box">
                <div class="box-shadow">
                </div>
                <div class="box-gradient">
                    <div class="logo-title">
                        <img id="logo-inem" src="../Images/Image/logoinem.png" alt="Inem Logo" />
                        <img id="logo-cndcv" src="../Images/Image/Logo_CNDCV4-300x93.jpg" alt="CNDCV Logo" />
                        <h1 id="title">
                            Registo Nacional do Enfarte Agudo do Miocardio</h1>
                    </div>
                    <div class="clear">
                    </div>
                    <asp:ValidationSummary ID="LoginUserValidationSummary" runat="server" CssClass="validationErrorList"
                        ValidationGroup="LoginUserValidationGroup"></asp:ValidationSummary>
                    <fieldset class="inputs">
                        <asp:Label ID="UserNameLabel" runat="server" AssociatedControlID="UserName">Username:</asp:Label>
                        <asp:TextBox ID="UserName" runat="server" CssClass="textEntry username"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="UserNameRequired" runat="server" ControlToValidate="UserName"
                            CssClass="failureNotification" ErrorMessage="É necessario inserir um Nome de Utilizador."
                            ToolTip="É necessario inserir um utilizador." ValidationGroup="LoginUserValidationGroup">*
                        </asp:RequiredFieldValidator>
                    </fieldset>
                    <fieldset class="inputs">
                        <asp:Label ID="PasswordLabel" runat="server" AssociatedControlID="Password">Password:</asp:Label>
                        <asp:TextBox ID="Password" runat="server" CssClass="passwordEntry password" TextMode="Password"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="PasswordRequired" runat="server" ControlToValidate="Password"
                            CssClass="failureNotification" ErrorMessage="É necessario inserir uma password."
                            ToolTip="É necessario inserir uma password." ValidationGroup="LoginUserValidationGroup">*
                        </asp:RequiredFieldValidator>
                    </fieldset>
                    <fieldset id="actions">
                        <asp:Button ID="LoginButton" runat="server" CommandName="Login" Text="Log In" ValidationGroup="LoginUserValidationGroup"
                            CssClass="submit" />
                    </fieldset>
                    <fieldset style="margin-top: 10px">
                        <asp:CheckBox ID="RememberMe" runat="server" Style="margin-left: 20px; float: left;" />
                        <asp:Label ID="RememberMeLabel" runat="server" AssociatedControlID="RememberMe" CssClass="inline"
                            Style="float: left; margin-left: 10px;" Text="Permanecer conectado"> </asp:Label>
                    </fieldset>
                </div>
            </div>
        </LayoutTemplate>
    </asp:Login>
    </form>
</asp:Content>
