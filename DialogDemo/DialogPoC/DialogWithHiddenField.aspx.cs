using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DialogDemo
{
    public partial class DialogWithHiddenField : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            string confirmValue = hiddenField.Value;
            if (confirmValue == "true")
            {
                // Your server-side logic here
                Response.Write("Server-side OnClick event triggered!");
            }
            else
            {
                // Logic for when the user clicks Cancel
                Response.Write("Action was cancelled.");
            }
        }

    }
}