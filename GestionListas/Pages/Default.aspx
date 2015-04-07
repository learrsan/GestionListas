<%-- The following 4 lines are ASP.NET directives needed when using SharePoint components --%>

<%@ Page Inherits="Microsoft.SharePoint.WebPartPages.WebPartPage, Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" MasterPageFile="~masterurl/default.master" Language="C#" %>

<%@ Import Namespace="System.EnterpriseServices.Internal" %>
<%@ Import Namespace="GestionListas" %>
<%@ Register TagPrefix="Utilities" Namespace="Microsoft.SharePoint.Utilities" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<%@ Register TagPrefix="WebPartPages" Namespace="Microsoft.SharePoint.WebPartPages" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<%@ Register TagPrefix="SharePoint" Namespace="Microsoft.SharePoint.WebControls" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>

<%-- The markup and script in the following Content element will be placed in the <head> of the page --%>
<asp:Content ContentPlaceHolderID="PlaceHolderAdditionalPageHead" runat="server">
    <script type="text/javascript" src="../Scripts/jquery-1.9.1.min.js"></script>
    <script type="text/javascript" src="/_layouts/15/sp.runtime.js"></script>
    <script type="text/javascript" src="/_layouts/15/sp.js"></script>
    <meta name="WebPartPageExpansion" content="full" />

    <!-- Add your CSS styles to the following file -->
    <link rel="Stylesheet" type="text/css" href="../Content/App.css" />

    <!-- Add your JavaScript to the following file -->
    <script type="text/javascript" src="../Scripts/App.js"></script>
</asp:Content>

<%-- The markup in the following Content element will be placed in the TitleArea of the page --%>
<asp:Content ContentPlaceHolderID="PlaceHolderPageTitleInTitleArea" runat="server">
    Page Title
</asp:Content>

<%-- The markup and script in the following Content element will be placed in the <body> of the page --%>
<asp:Content ContentPlaceHolderID="PlaceHolderMain" runat="server">

    <div>
        <asp:Label ID="lblNombre" runat="server" Text="Nombre"></asp:Label><br/>
        <asp:TextBox ID="txtNombre" runat="server"></asp:TextBox><br/>
        <asp:Label ID="lblApellido" runat="server" Text="Apellido"></asp:Label><br/>
        <asp:TextBox ID="txtApellido" runat="server"></asp:TextBox><br/>
        <asp:Label ID="lblEdad" runat="server" Text="Edad"></asp:Label><br/>
        <asp:TextBox ID="txtEdad" runat="server"></asp:TextBox><br/>
        <asp:Label ID="lblNota" runat="server" Text="Nota"></asp:Label><br/>
        <asp:TextBox ID="txtNota" runat="server"></asp:TextBox><br/>
        
        <asp:Button ID="btnOk" runat="server" Text="Ok" OnClick="OnAdd"/>

    </div>

</asp:Content>

<script runat="server">

    protected void OnAdd(Object sender, EventArgs e)
    {
        CSOM.AddItem(txtNombre.Text, txtApellido.Text, Convert.ToInt32(txtEdad.Text),
            Convert.ToInt32(txtNota.Text));
    }
</script>