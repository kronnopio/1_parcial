using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace _1_parcial
{
    public partial class alta : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                DropRubro.AppendDataBoundItems = true;
                DropRubro.Items.Insert(0, new ListItem(String.Empty, String.Empty));
                DropRubro.SelectedIndex = 0;
                DropTipo.AppendDataBoundItems = true;
                DropTipo.Items.Insert(0, new ListItem(String.Empty, String.Empty));
                DropTipo.SelectedIndex = 0;
            }
        }
        protected void darDeAlta(object sender, EventArgs e)
        {
          
            SqlDataAlta.InsertParameters["servicio"].DefaultValue = Desc_Serv.Text;
            SqlDataAlta.InsertParameters["rubro"].DefaultValue = DropRubro.SelectedValue;
            SqlDataAlta.InsertParameters["tipo"].DefaultValue = DropTipo.SelectedValue;
            int resultado = SqlDataAlta.Insert();
            if(resultado > 0)
            {
                salida.Text = $"Se dio alta {Desc_Serv.Text}!";
                     }
            else { salida.Text = $"Error {resultado}";  }
            Desc_Serv.Text =  "";
            DropRubro.SelectedIndex = 0;
            DropTipo.SelectedIndex = 0;


        }

    }
}