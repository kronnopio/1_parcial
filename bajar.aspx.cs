using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Services.Description;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace _1_parcial
{
    public partial class bajar : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                DescServ.Text = "";
                Rubro.Text = "";
                Tipo.Text = "";
            }
        }
        protected void consultar(object sender, EventArgs e)
        {
            SqlDataSource1.SelectParameters["codigo"].DefaultValue = codigo.Text;
            SqlDataSource1.DataSourceMode = SqlDataSourceMode.DataReader;
            SqlDataReader sqlDataReader = (SqlDataReader)SqlDataSource1.Select(DataSourceSelectArguments.Empty);
            if (sqlDataReader != null)
            {
                if (sqlDataReader.Read())
                {
                    mensaje.Text = $"Esta";

                    DescServ.Text = $"{sqlDataReader["desc_servicio"]}";
                    Rubro.Text = $"{sqlDataReader["desc_rubro"]}";
                    Tipo.Text = $"{sqlDataReader["desc_tipo_serv"]}";

                }
                else
                {
                    mensaje.Text = $"No Esta";
                    DescServ.Text = "";
                    Rubro.Text = "";
                    Tipo.Text = "";
                }
            }
        }
        protected void borrar(object sender, EventArgs e)
        {
            SqlDataSource1.DeleteParameters["codigo"].DefaultValue = codigo.Text;
            int resultado = SqlDataSource1.Delete();
            if (resultado > 0)
            {
                mensaje.Text = $"Item eliminado";
                DescServ.Text = "";
                Rubro.Text = "";
                Tipo.Text = "";
                codigo.Text = "";
            }
            else
            {
                mensaje.Text = $"Fallo eliminacion";
                DescServ.Text = "";
                Rubro.Text = "";
                Tipo.Text = "";
                codigo.Text = "";
            }
        }
    }
}