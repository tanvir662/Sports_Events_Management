using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Sports_Events_Management
{
    public partial class student_register : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Btnregister_Click(object sender, EventArgs e)
        {
            DataOps dOps = new DataOps();
            string query = @"INSERT INTO [dbo].[student_reg]([sportsname]
      ,[student_id]
      ,[email]
      ,[mobile]
      ,[dob]
      ,[password])
           VALUES
        ('" + Texteventname.Text + "','" + Textstudentid.Text + "','" + Textemail.Text + "','" + Textmobile.Text + "','" + Textdob.Text + "','" + Textpassword.Text + "')";
            int r = dOps.executionquery(query);
            Label1.Text = "Successfully register";
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            DataOps dOps = new DataOps();
            string query = @"INSERT INTO [dbo].[student_reg]([sportsname]
      ,[student_id]
      ,[email]
      ,[mobile]
      ,[dob]
      ,[password])
           VALUES
        ('" + Texteventname.Text + "','" + Textstudentid.Text + "','" + Textemail.Text + "','" + Textmobile.Text + "','" + Textdob.Text + "','" + Textpassword.Text + "')";
            int r = dOps.executionquery(query);
            Label1.Text = "Successfully register";
        }
    }
}