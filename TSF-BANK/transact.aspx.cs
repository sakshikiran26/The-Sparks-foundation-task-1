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
    public partial class transact : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            

        }
        public void SHOW(object sender, EventArgs e)
        {
            string amt =TextBox3.Text;
            //string send =TextBox1.Text;
           //string recieve = TextBox2.Text;
            //Session["Customer_id"] = send;
            string s = "select balance from customers WHERE Customer_id='" + this.TextBox1.Text + "';";
            const string strcon = "datasource=127.0.0.1;port=3306;username=root;password=;database=basic banking system;";
            MySqlConnection con = new MySqlConnection(strcon);
            MySqlCommand cmd = new MySqlCommand(s, con);
            cmd.CommandType = CommandType.Text;
            con.Open();
            object temp = cmd.ExecuteScalar();
            string s_bal = Convert.ToString(temp);
            con.Close();
            //Session["Customer_id"] = recieve;
            string s1 = "select balance from customers WHERE Customer_id='" + this.TextBox2.Text + "';";
            const string strcon1 = "datasource=127.0.0.1;port=3306;username=root;password=;database=basic banking system;";
            MySqlConnection con1 = new MySqlConnection(strcon1);
            MySqlCommand cmd1 = new MySqlCommand(s1, con1);
            cmd1.CommandType = CommandType.Text;
            con1.Open();
            object temp1 = cmd1.ExecuteScalar();
            string r_bal = Convert.ToString(temp1);
            con1.Close();
            if (int.Parse(s_bal) < int.Parse(amt))
            {
                Response.Write("<script>alert('You don't have enough balance')</script>");
            }
            else
            {
                s_bal = (int.Parse(s_bal) - int.Parse(amt)).ToString();
                r_bal = (int.Parse(r_bal) + int.Parse(amt)).ToString();

                //Session["Customer_id"] = send;
                string s2 = "update customers set balance= '" + s_bal + "' where Customer_id='" + this.TextBox1.Text + "';";
                const string strcon2 = "datasource=127.0.0.1;port=3306;username=root;password=;database=basic banking system;";
                MySqlConnection con2 = new MySqlConnection(strcon2);
                MySqlCommand cmd2 = new MySqlCommand(s2, con2);
                cmd2.CommandType = CommandType.Text;
                con2.Open();
                object temp2 = cmd2.ExecuteNonQuery();
                con2.Close();
                //Session["customer_id"] = recieve;
                string s3 = "update customers set balance= '" + r_bal + "' where Customer_id='" + this.TextBox2.Text + "';";
                const string strcon3 = "datasource=127.0.0.1;port=3306;username=root;password=;database=basic banking system;";
                MySqlConnection con3 = new MySqlConnection(strcon3);
                MySqlCommand cmd3 = new MySqlCommand(s3, con3);
                cmd3.CommandType = CommandType.Text;
                con3.Open();
                object temp3 = cmd3.ExecuteNonQuery();
                con3.Close();

                Response.Write("<script>alert('Transaction successful')</script>");
                cmd= new MySqlCommand("insert into transactions (sender_id,receiver_id,amount,date,t_status) values ("+ int.Parse(TextBox1.Text) + "," + int.Parse(TextBox2.Text) + "," +int.Parse( amt) + ", CURRENT_TIMESTAMP ,'Sucess');", con);
                cmd.CommandType = CommandType.Text;
                cmd.Connection = con;
                con.Open();
                 cmd.ExecuteNonQuery();
                con.Close();
            }


        }

    }
}