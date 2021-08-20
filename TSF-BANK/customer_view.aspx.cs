using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DBMS
{
    public partial class customer_view : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            LIST();
        }
        public void LIST()
        {
            DataTable dt = new DataTable { TableName = "MyTable" };
            {
                string s = "select * from customers";
                const string strcon = "datasource=127.0.0.1;port=3306;username=root;password=;database=basic banking system;";
                MySqlConnection con = new MySqlConnection(strcon);
                MySqlCommand cmd = new MySqlCommand(s, con);
                cmd.CommandType = CommandType.Text;
                con.Open();

                MySqlDataReader dr = cmd.ExecuteReader(CommandBehavior.CloseConnection);
                dt.Load(dr);
                con.Close();

                GridView1.DataSource = null;
                GridView1.DataSource = dt;
                GridView1.DataBind();

            }
        }

        
        protected void On_row_command(object sender, GridViewCommandEventArgs e)
        {
            int rowindex;
            int CountId;

            if (e.CommandName == "Operation")
            {

                 rowindex = Convert.ToInt32(e.CommandArgument);
                GridViewRow row = GridView1.Rows[rowindex];
                 CountId = int.Parse(row.Cells[0].Text);
                Session["Customer_id"] = CountId;
                Response.Redirect("View_individual.aspx");
            }
        }
    }
}