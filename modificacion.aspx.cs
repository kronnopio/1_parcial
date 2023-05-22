using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace _1_parcial
{
    public partial class modificacion : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                DropTipo.AppendDataBoundItems = true;
                DropTipo.Items.Insert(0, new ListItem(String.Empty, String.Empty));
                DropTipo.SelectedIndex = 0;
                
                DropRubro.AppendDataBoundItems = true;
                DropRubro.Items.Insert(0, new ListItem(String.Empty, String.Empty));
                DropRubro.SelectedIndex = 0;
                }

            }
        protected void consultar(object sender, EventArgs e)
        {
            ConsultaDataSource.SelectParameters["codigo"].DefaultValue = codigo.Text;
            ConsultaDataSource.DataSourceMode = SqlDataSourceMode.DataReader;
            SqlDataReader sqlDataReader = (SqlDataReader)ConsultaDataSource.Select(DataSourceSelectArguments.Empty);
            if (sqlDataReader != null)
            {
                if (sqlDataReader.Read())
                {
                    mensaje.Text = $"Esta [{sqlDataReader["cod_servicio"]}] " ;
                    DescServ.Text = $"{sqlDataReader["desc_servicio"]}";
                    DesTipo.Text = $"{sqlDataReader["desc_tipo_serv"]}";
                    DesRubro.Text = $"{sqlDataReader["desc_rubro"]}";
                   
                }
                else
                {
                    mensaje.Text = $"No Esta";
                }
            }
        }
    }
}