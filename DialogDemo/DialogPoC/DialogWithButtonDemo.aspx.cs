using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DialogDemo.DialogPoC
{
    public partial class DialogWithButtonDemo : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void lnkButton_Click(object sender, EventArgs e)
        {
            // Your server-side logic here
            // For example, you can set a boolean flag or perform some action
            Response.Write("DialogWithButtonDemo Server-side OnClick event triggered!");
        }
    }
}