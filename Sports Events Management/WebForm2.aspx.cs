using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Sports_Events_Management
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           
        }
        DataOps dOps = new DataOps();
        public void loaderGrid()
        {
            string query = @"
SELECT [event_name]
      ,[event_type]
      ,[location]
      ,[date]
  FROM [dbo].[event_details]";

            GridView1.DataSource = dOps.GetData(query);
            GridView1.DataBind();
        }

        protected void GridView1_RowDeleting1(object sender, GridViewDeleteEventArgs e)
        {
            Label lblId = (Label)GridView1.Rows[e.RowIndex].FindControl("Label1");
            string query = @"DELETE FROM [dbo].[event_details] WHERE event_name='" + lblId.Text + "'";
            if (dOps.executionquery(query) == 1)
            {
                loaderGrid();
            }
        }
    }
}