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
public partial class user_threeauth : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        branch.Visible = false;
        Label2.Visible = false;
        string ename = Request.QueryString[0];
        if (ename == "race")
            Label1.Text = "Robo Race";
        else if (ename == "war")
            Label1.Text = "Robo War";
        else if (ename == "project")
            Label1.Text = "Project Exhibition";
        else if (ename == "soccer")
            Label1.Text = "Robo Soccer";
        if (ename == "project")
        {
            branch.Visible = true;
            Label2.Visible = true;
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (this.txtimgcode.Text == this.Session["CaptchaImageText"].ToString())
        {
            Register();
        }
        else
        {
            lblmsg.Text = "image code is not valid.";
        }
        this.txtimgcode.Text = "";

    }
    public string ConnectionString
    {
        get
        {
            //Reading connection string from web.config
            return ConfigurationManager.ConnectionStrings["LocalSqlServer"].ConnectionString;
        }
    }
    private void Register()
    {
        SqlConnection con = new SqlConnection(ConnectionString);
        try
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("insert into ureg(ur1,ur2,ur3,gen1,gen2,gen3,addr,contactno,college,event,food,acco,eid,br)values(@name1,@name2,@name3,@gen1,@gen2,@gen3,@add,@cont,@coll,@event,@fd,@acco,@eid,@br)", con);
            cmd.Parameters.Add("@name1", SqlDbType.VarChar, 50).Value = rname1.Text;
            cmd.Parameters.Add("@name2", SqlDbType.VarChar, 50).Value = rname2.Text;
            cmd.Parameters.Add("@name3", SqlDbType.VarChar, 50).Value = rname3.Text;
            cmd.Parameters.Add("@add", SqlDbType.VarChar, 50).Value = addr.Text;
            cmd.Parameters.Add("@gen1", SqlDbType.VarChar, 7).Value = RadioButtonList1.SelectedItem.Text;
            cmd.Parameters.Add("@gen2", SqlDbType.VarChar, 7).Value = RadioButtonList2.SelectedItem.Text;
            cmd.Parameters.Add("@gen3", SqlDbType.VarChar, 7).Value = RadioButtonList3.SelectedItem.Text;
            cmd.Parameters.Add("@cont", SqlDbType.Decimal, 12).Value = Decimal.Parse(cont.Text);
            cmd.Parameters.Add("@coll", SqlDbType.VarChar, 50).Value = college.Text;
            cmd.Parameters.Add("@event", SqlDbType.VarChar, 50).Value = Label1.Text;
            cmd.Parameters.Add("@fd", SqlDbType.VarChar, 4).Value = RadioButtonList5.SelectedItem.Text;
            cmd.Parameters.Add("@acco", SqlDbType.VarChar, 4).Value = RadioButtonList4.SelectedItem.Text;
            cmd.Parameters.Add("@eid", SqlDbType.VarChar, 50).Value = eid.Text;
            cmd.Parameters.Add("@br", SqlDbType.VarChar, 10).Value = branch.SelectedItem.Text;
            if (cmd.ExecuteNonQuery() > 0)
                Response.Redirect("thanku.aspx");
            else
                lblmsg.Text = "Sorry! Some error occured during registration!";


        }
        catch (Exception ex)
        {
            lblmsg.Text = "error" + ex;
        }

        finally
        {
            con.Close();
        }

    }
}
