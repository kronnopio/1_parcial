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



        }

    }
}