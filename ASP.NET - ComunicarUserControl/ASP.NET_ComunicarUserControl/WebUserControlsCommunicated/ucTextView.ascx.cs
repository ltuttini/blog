using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebUserControlsCommunicated
{
    public partial class ucTextView : System.Web.UI.UserControl
    {

        public int Id { get; set; }
        public string Nombre { get; set; }
        public string Cargo { get; set; }

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        public void Refresh(int id, string nombre, string cargo)
        {
            this.Id = Id;
            this.Nombre = nombre;
            this.Cargo = cargo;

            this.Refresh();
        }

        public void Refresh()
        {
            txtId.Text = Convert.ToString(this.Id);
            txtNombre.Text = this.Nombre;
            txtCargo.Text = this.Cargo;
        }
    }
}