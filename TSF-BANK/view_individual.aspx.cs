using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DBMS.TSF_BANK
{
    public partial class view_individual : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            LIST();
            SHOW();
        }
        public void LIST()
        {
            DataTable dt = new DataTable { TableName = "MyTable" };
            {
                string s = "select * from customers WHERE Customer_id=" + int.Parse(Session["Customer_id"].ToString()) + ";";
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
        public void SHOW()
        {
            DataTable dt = new DataTable { TableName = "MyTable" };
            {
                string s = "select * from transactions where sender_id=" + int.Parse(Session["Customer_id"].ToString()) + "||"+ "receiver_id="+ int.Parse(Session["Customer_id"].ToString())+";";
                const string strcon = "datasource=127.0.0.1;port=3306;username=root;password=;database=basic banking system;";
                MySqlConnection con = new MySqlConnection(strcon);
                MySqlCommand cmd = new MySqlCommand(s, con);
                cmd.CommandType = CommandType.Text;
                con.Open();

                MySqlDataReader dr = cmd.ExecuteReader(CommandBehavior.CloseConnection);
                dt.Load(dr);
                con.Close();

                GridView2.DataSource = null;
                GridView2.DataSource = dt;
                GridView2.DataBind();

            }
        }
    }
}