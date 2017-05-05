using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace WebUserControlsCommunicated
{
    public partial class ucGrid : System.Web.UI.UserControl
    {
        public delegate void GridSelectorCommandEventHandler(GridSelectorCommandEventArgs e);
        public event GridSelectorCommandEventHandler GridSelectorChanged;

        public class GridSelectorCommandEventArgs
        {
            public int Id { get; protected set; }
            public string Nombre { get; protected set; }
            public string Cargo { get; protected set; }

            public GridSelectorCommandEventArgs(int id, string nombre, string cargo)
            {
                this.Id = id;
                this.Nombre = nombre;
                this.Cargo = cargo;
            }
        }


        public DataTable DataSource { get; set; }


        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                GridView1.DataSource = this.DataSource;
                GridView1.DataBind();
            }
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            int Id = Convert.ToInt32(GridView1.SelectedRow.Cells[1].Text);
            string nombre = Convert.ToString(GridView1.SelectedRow.Cells[2].Text);
            string cargo = Convert.ToString(GridView1.SelectedRow.Cells[3].Text);


            if (GridSelectorChanged != null)
                GridSelectorChanged(new GridSelectorCommandEventArgs(Id, nombre, cargo));

            
        }
    }
}