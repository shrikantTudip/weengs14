using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using System.Data.SqlClient;
public partial class login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    public string ConnectionString
    {
        get
        {
            //Reading connection string from web.config
            return ConfigurationManager.ConnectionStrings["LocalSqlServer"].ConnectionString;
        }
    }
    protected void Button1_Click(Object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(ConnectionString);
        try
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("select cgid,eid,pwd from login where eid = @lname and pwd = @pwd", con);
            cmd.Parameters.Add("@lname", SqlDbType.VarChar, 50).Value = TextBox1.Text;
            cmd.Parameters.Add("@pwd", SqlDbType.VarChar, 50).Value = TextBox2.Text;

            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.Read())
            {
                Session.Add("username", dr["eid"]);
                Session.Add("cid", dr["cgid"]);
                dr.Close();
                Response.Redirect("./admin/Default.aspx");
            }
            else
            {
                lblerror.Text = "Username or Password is Wrong";
            }
        }
        catch (Exception ex)
        {
            lblerror.Text = "error" + ex;
        }

        finally
        {
            con.Close();
        }


    }
}
