using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DialogDemo.DialogPoC
{
    public partial class DialogWitCGDemo01 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void myLinkButton_Click(object sender, EventArgs e)
        {
            // Server-side logic here
            Response.Write("Server-side method called!");
        }
    }
}