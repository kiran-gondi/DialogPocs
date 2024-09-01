using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DialogDemo.DialogPoC
{
    public partial class DialogWithoutScriptManager : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                RadGrid1.Rebind();
            }
        }

        protected void RadGrid1_NeedDataSource(object sender, Telerik.Web.UI.GridNeedDataSourceEventArgs e)
        {
            // Bind the RadGrid with some data
            RadGrid1.DataSource = GetData();
        }

        protected void lnkButton_Click(object sender, EventArgs e)
        {
            // Your server-side logic here
            // For example, you can set a boolean flag or perform some action
            Response.Write("DialogWithoutScriptManager Server-side OnClick event triggered!");
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