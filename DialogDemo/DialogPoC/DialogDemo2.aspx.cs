using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DialogDemo.DialogPoC
{
    public partial class DialogDemo2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void lnkButton_Click(object sender, EventArgs e)
        {
            // Your server-side logic here
            Response.Write("DialogDemo2 Server-side OnClick event triggered!");
        }

        //protected void lnkButton_Click(object sender, EventArgs e)
        //{
        //    string eventArgument = Request["__EVENTARGUMENT"];
        //    if (!string.IsNullOrEmpty(eventArgument))
        //    {
        //        string[] parameters = eventArgument.Split(',');
        //        string param1 = parameters[0];
        //        string param2 = parameters[1];

        //        // Your server-side logic here using param1 and param2
        //        Response.Write("DialogDemo2 Server-side OnClick event triggered!" + "param1: " + param1 + "param2: " + param2);
        //    }

        //}

    }
}