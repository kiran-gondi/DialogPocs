using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DialogDemo
{
    public partial class PrintUniqueId : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                // Bind the GridView with some data
                GridView1.DataSource = GetData();
                GridView1.DataBind();
            }
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            // Handle the click event
            LinkButton lnkButton = (LinkButton)sender;
            string uniqueID = lnkButton.UniqueID;
            // Do something with the uniqueID
            Response.Write("UniqueID: " + uniqueID);
        }

        private DataTable GetData()
        {
            // Create a sample DataTable
            DataTable dt = new DataTable();
            dt.Columns.Add("ID", typeof(int));
            dt.Columns.Add("Name", typeof(string));
            for (int i = 1; i <= 5; i++)
            {
                dt.Rows.Add(i, "Name " + i);
            }
            return dt;
        }
    }
}