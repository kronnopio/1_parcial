<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="_1_parcial._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <main>
      
        <div class="container" />
        <br /><br />
        <asp:Button ID="Button_alta" runat="server" Text="Alta" PostBackUrl="alta.aspx" />&nbsp;&nbsp;
        <asp:Button ID="Button_baja" runat="server" Text="Baja" PostBackUrl="baja.aspx"  />&nbsp;&nbsp;
        <asp:Button ID="Button_modificaion" runat="server" Text="Modificacion" />
        <br /> <br /> 
        <asp:Button ID="Button_serv" runat="server" Text="Ver Servicios" />&nbsp;&nbsp;
        <asp:Button ID="Button_tipo" runat="server" PostBackUrl="ver_tipos.aspx" Text="Ver Tipos" />&nbsp;&nbsp;
        <asp:Button ID="Button_rub" runat="server" PostBackUrl="ver_rubros.aspx" Text="Ver Rubros" />&nbsp;&nbsp;
        </div>
  
    </main>

</asp:Content>
