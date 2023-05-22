<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="bajar.aspx.cs" Inherits="_1_parcial.bajar" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
       <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Mi parcial ASP.NET</title>

    <asp:PlaceHolder runat="server">
        <%: Scripts.Render("~/bundles/modernizr") %>
    </asp:PlaceHolder>

    <webopt:bundlereference runat="server" path="~/Content/css" />
    <link href="~/favicon.ico" rel="shortcut icon" type="image/x-icon" />


</head>
<body>
      <nav class="navbar navbar-expand-sm navbar-toggleable-sm navbar-dark bg-dark">
       <div class="container">
           <a class="navbar-brand" runat="server" href="~/">Parcial TP4: Baja</a>
       </div>
    </nav>
    <form id="form1" runat="server">
         <div style="margin:20px 80px 100px 70px;">
            <asp:Label ID="Label1" runat="server" Text="Ingrese Cod Servicio: "></asp:Label>
            <asp:TextBox ID="codigo" runat="server"></asp:TextBox>

             <asp:RequiredFieldValidator ID="RequiredFieldValidator1" 
                 runat="server"
                 ControlToValidate="codigo"
                 ErrorMessage="Requerido"
                 ForeColor="#CC0000" >
             </asp:RequiredFieldValidator>
             <br /><br />
            <asp:Button ID="consult" runat="server" Text="Consultar" OnClick="consultar" />
             <br /><br />
             <asp:Label ID="mensaje" runat="server"></asp:Label>
              <br /><br />
             <asp:Label ID="Label2" runat="server" Text="Descricion Servicio: "></asp:Label>
             <asp:Label ID="DescServ" runat="server" Text="Label"></asp:Label> &nbsp;&nbsp;

             <asp:Label ID="Label3" runat="server" Text="Descricion Rubro: "></asp:Label>
             <asp:Label ID="Rubro" runat="server" Text="Label"></asp:Label> &nbsp;&nbsp;

             <asp:Label ID="Label4" runat="server" Text="Descricion Tipo: "></asp:Label>
             <asp:Label ID="Tipo" runat="server" Text="Label"></asp:Label> &nbsp;&nbsp;
             <br />         <br />
             <asp:Button ID="Button1" runat="server" Text="Bajar" OnClick="borrar" />
        </div>
         <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:parcialConnectionString %>" SelectCommand="SELECT SERVICIOS.cod_servicio, 
SERVICIOS.desc_servicio, 
SERVICIOS.rubro,
SERVICIOS.tipo_servicio,
RUBROS.desc_rubro, 
TIPOS_SERVICIO.desc_tipo_serv 
FROM SERVICIOS LEFT OUTER JOIN RUBROS ON SERVICIOS.rubro = RUBROS.cod_rubro LEFT OUTER JOIN TIPOS_SERVICIO ON SERVICIOS.tipo_servicio = TIPOS_SERVICIO.cod_tipo_serv WHERE (SERVICIOS.cod_servicio = @codigo)" DeleteCommand="DELETE FROM SERVICIOS WHERE (cod_servicio = @codigo)">
             <DeleteParameters>
                 <asp:Parameter Name="codigo" />
             </DeleteParameters>
             <SelectParameters>
                 <asp:Parameter Name="codigo" />
             </SelectParameters>
         </asp:SqlDataSource>
    </form>

    <div class="container body-content">
         
            <footer>
                <hr />
                <p>&copy; <%: DateTime.Now.Year %>- Walter Reverdito
                </p>
                
                <a class="navbar-brand" runat="server" href="~/">Regresar</a>
            </footer>
        </div>
</body>
</html>
