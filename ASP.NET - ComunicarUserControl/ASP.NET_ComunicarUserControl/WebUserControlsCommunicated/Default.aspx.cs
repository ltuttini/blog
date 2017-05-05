using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace WebUserControlsCommunicated
{
    public partial class _Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            ucGrid1.GridSelectorChanged += new ucGrid.GridSelectorCommandEventHandler(ucGrid1_GridSelectorChanged);

            if (!IsPostBack)
            {
                ucGrid1.DataSource = CargarTabla();
            }
        }

        void ucGrid1_GridSelectorChanged(ucGrid.GridSelectorCommandEventArgs e)
        {
            ucTextView1.Id = e.Id;
            ucTextView1.Nombre = e.Nombre;
            ucTextView1.Cargo = e.Cargo;

            ucTextView1.Refresh(); 
        }



        private DataTable CargarTabla()
        {
            DataTable dt = new DataTable();
            dt.Columns.Add("Id");
            dt.Columns.Add("Nombre");
            dt.Columns.Add("Cargo");

            DataRow row = dt.NewRow();
            row["Id"] = 1;
            row["Nombre"] = "Andres";
            row["Cargo"] = "Developer";
            dt.Rows.Add(row);

            row = dt.NewRow();
            row["Id"] = 2;
            row["Nombre"] = "Federico";
            row["Cargo"] = "PM";
            dt.Rows.Add(row);

            row = dt.NewRow();
            row["Id"] = 3;
            row["Nombre"] = "Leonardo";
            row["Cargo"] = "Developer";
            dt.Rows.Add(row);

            return dt;

        }

    }
}
