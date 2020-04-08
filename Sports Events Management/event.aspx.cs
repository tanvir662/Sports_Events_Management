using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Sports_Events_Management
{
    public partial class _event : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["email"] == null)
            {
                Response.Redirect("login.aspx");
            }
        }

        protected void Btnsave_Click(object sender, EventArgs e)
        {
            DataOps dOps = new DataOps();
            string query = @"INSERT INTO [dbo].[event_details]([event_name]
      ,[event_type]
      ,[location]
      ,[date])
           VALUES
        ('" + Texteventname.Text + "','" + Texteventtype.Text + "','" + Textlocation.Text + "','" + Textdate.Text + "')";
            int r = dOps.executionquery(query);
        }
    }
}