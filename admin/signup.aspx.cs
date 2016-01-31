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

public partial class signup : System.Web.UI.Page
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
    protected void Button1_Click(object sender, EventArgs e)
    {

        SqlConnection con = new SqlConnection(ConnectionString);
        try
        {          
            con.Open();
            SqlCommand cmd = new SqlCommand("insert into login(eid,pwd,glname,contactno,bkno1,bkno2,bkno3)values(@name,@add,@gen,@dob,@faculty,@bk2,@bk3)", con);
            cmd.Parameters.Add("@name", SqlDbType.VarChar, 50).Value = TextBox2.Text;
            cmd.Parameters.Add("@add", SqlDbType.VarChar, 50).Value = TextBox3.Text;
            cmd.Parameters.Add("@gen", SqlDbType.VarChar, 50).Value = TextBox1.Text;
            cmd.Parameters.Add("@dob", SqlDbType.Decimal, 12).Value = Decimal.Parse(TextBox5.Text);
            cmd.Parameters.Add("@faculty", SqlDbType.Int).Value =Int32.Parse(TextBox6.Text);
            cmd.Parameters.Add("@bk2", SqlDbType.Int).Value = Int32.Parse(TextBox7.Text);
            cmd.Parameters.Add("@bk3", SqlDbType.Int).Value = Int32.Parse(TextBox8.Text);
            if (cmd.ExecuteNonQuery() > 0)
                Label13.Text = "Registration is successful. Please click <a href=../Login.aspx>here</a> to login!";
            else
                Label13.Text = "Sorry! Some error occured during registration!";
        

        }
        catch (Exception ex)
        {
            Label13.Text = "error" + ex;
        }
    
        finally
        {
            con.Close();
        }
    }
}
