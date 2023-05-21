<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ver_rubros.aspx.cs" Inherits="_1_parcial.ver_rubros" %>

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
           <a class="navbar-brand" runat="server" href="~/">Parcial TP4: Ver Rubros</a>
       </div>
    </nav>


    <form id="form1" runat="server">
        <div  style="margin:20px 80px 100px 70px;  ">
            <asp:GridView ID="GridView1" runat="server" BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataSourceID="sql_ver_rubros">
                <FooterStyle BackColor="#99CCCC" ForeColor="#003399" />
                <HeaderStyle BackColor="#003399" Font-Bold="True" ForeColor="#CCCCFF" />
                <PagerStyle BackColor="#99CCCC" ForeColor="#003399" HorizontalAlign="Left" />
                <RowStyle BackColor="White" ForeColor="#003399" />
                <SelectedRowStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
                <SortedAscendingCellStyle BackColor="#EDF6F6" />
                <SortedAscendingHeaderStyle BackColor="#0D4AC4" />
                <SortedDescendingCellStyle BackColor="#D6DFDF" />
                <SortedDescendingHeaderStyle BackColor="#002876" />
            </asp:GridView>
            <asp:SqlDataSource ID="sql_ver_rubros" runat="server" 
                ConnectionString="<%$ ConnectionStrings:parcialConnectionString %>" 
                SelectCommand="SELECT [desc_rubro] FROM [RUBROS] ORDER BY [desc_rubro]"></asp:SqlDataSource>
        </div>
    </form>

    <div class="container body-content">
         
            <footer>

                <p>&copy; <%: DateTime.Now.Year %>- Walter Reverdito
                </p>
                
                <a class="navbar-brand" runat="server" href="~/">Regresar</a>
            </footer>
        </div>
</body>
</html>
