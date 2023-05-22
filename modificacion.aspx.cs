using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Runtime.Remoting.Messaging;
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
                    
                    DropRubro.SelectedIndex = Convert.ToInt32(sqlDataReader["rubro"]);
                    DropTipo.SelectedIndex = Convert.ToInt32(sqlDataReader["tipo_servicio"]);

                }
                else
                {
                    mensaje.Text = $"No Esta";
                }
            }
        }

        protected void modificar(object sender, EventArgs e)
        {
            ConsultaDataSource.UpdateParameters["des_servicio"].DefaultValue = DescServ.Text;
            ConsultaDataSource.UpdateParameters["cod_tipo"].DefaultValue = DropTipo.SelectedValue;
            ConsultaDataSource.UpdateParameters["cod_rubro"].DefaultValue = DropRubro.SelectedValue;
            ConsultaDataSource.UpdateParameters["cod_servicio"].DefaultValue = codigo.Text;
            int resultado = ConsultaDataSource.Update();
            if (resultado > 0)
            {
                mensaje.Text = " Modificado!";
            }
            else { 
                mensaje.Text = "Fallo Modificacion"; }
            DescServ.Text = "";
            DropRubro.SelectedIndex = 0;
            DropTipo.SelectedIndex = 0;
            codigo.Text = "";

        }
    }
}