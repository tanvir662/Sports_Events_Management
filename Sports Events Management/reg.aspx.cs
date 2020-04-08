using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Sports_Events_Management
{
    public partial class reg : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnsubmit_Click(object sender, EventArgs e)
        {
            DataOps dOps = new DataOps();
            string query = @"INSERT INTO [dbo].[register]([email],[password])
           VALUES
        ('" + txtentermail.Text + "','" + txtpassword.Text + "')";
            int r = dOps.executionquery(query);

            if (txtpassword.Text == repassword.Text)
            {

                Label1.Text = "Successfully register";
            }
            else
            {
                Label2.Text = "password doesn't match";
            }

        }
    }
}