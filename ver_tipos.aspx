<%@ Page  Title="Ver tipos" Language="C#"  AutoEventWireup="true"  CodeBehind="ver_tipos.aspx.cs" Inherits="_1_parcial.ver_tipos" %>

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
           <a class="navbar-brand" runat="server" href="~/">Parcial TP4: Ver Tipos</a>
       </div>
    </nav>
    <form id="form1" runat="server">
       

        <div style=" margin:20px 80px 100px 70px;  " />
       
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataMember="DefaultView" DataSourceID="sql_ver_tipos">
                <Columns>
                    <asp:BoundField DataField="desc_tipo_serv" HeaderText="desc_tipo_serv" SortExpression="desc_tipo_serv" />
                </Columns>
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
                <asp:SqlDataSource runat="server" ID="sql_ver_tipos"
                    ConnectionString="<%$ ConnectionStrings:parcialConnectionString %>" 
                    SelectCommand="SELECT [desc_tipo_serv] FROM [TIPOS_SERVICIO]" OnSelecting="ver_rubros_Selecting">
                </asp:SqlDataSource>
              
            </div>
    <div class="container body-content">
         
            <footer>

                <p>&copy; <%: DateTime.Now.Year %> - Walter Reverdito
                </p>
                
                <a class="navbar-brand" runat="server" href="~/">Regresar</a>
            </footer>
        </div>
    </form>
    </body>

</html>
