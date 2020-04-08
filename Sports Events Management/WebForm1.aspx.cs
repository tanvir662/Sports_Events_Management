using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Sports_Events_Management
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["email"] == null)
            {
                Response.Redirect("login.aspx");
            }
        }

        protected void Btnaddevent_Click(object sender, EventArgs e)
        {
            Response.Redirect("event.aspx");
        }

        protected void btneventdetails_Click(object sender, EventArgs e)
        {
            Response.Redirect("WebForm2.aspx");
        }

        protected void btnstudentdetails_Click(object sender, EventArgs e)
        {
           Response.Redirect("studentdetails.aspx");
        }
    }
}