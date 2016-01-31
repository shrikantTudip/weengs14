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
public partial class user_paper : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string ename = Request.QueryString[0];
        if (ename == "technoquiz")
            Label1.Text = "TechnoQuiz";
        else if (ename == "papercit")
            Label1.Text = "Paper Presentation IT/CSE";
        else if (ename == "paperetc")
            Label1.Text = "Paper Presentation E&TC";
        else if (ename == "papermech")
            Label1.Text = "Paper Presentation MECH";
        else if (ename == "papercivil")
            Label1.Text = "Paper Presentation CIVIL";
        
        else if (ename == "poster")
            Label1.Text = "Poster Presentation";
        else if (ename == "lathewar")
            Label1.Text = "Lathe War";
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
            SqlCommand cmd = new SqlCommand("insert into ureg(ur1,ur2,gen1,gen2,addr,contactno,college,event,food,acco,eid)values(@name1,@name2,@gen1,@gen2,@add,@cont,@coll,@event,@fd,@acco,@eid)", con);
            cmd.Parameters.Add("@name1", SqlDbType.VarChar, 50).Value = rname1.Text;
            cmd.Parameters.Add("@name2", SqlDbType.VarChar, 50).Value = rname2.Text;
            cmd.Parameters.Add("@add", SqlDbType.VarChar, 50).Value = addr.Text;
            cmd.Parameters.Add("@gen1", SqlDbType.VarChar, 7).Value = RadioButtonList1.SelectedItem.Text;
            cmd.Parameters.Add("@gen2", SqlDbType.VarChar, 7).Value = RadioButtonList2.SelectedItem.Text;
            cmd.Parameters.Add("@cont", SqlDbType.Decimal, 12).Value = Decimal.Parse(cont.Text);
            cmd.Parameters.Add("@coll", SqlDbType.VarChar, 50).Value = college.Text;
            cmd.Parameters.Add("@event", SqlDbType.VarChar, 50).Value = Label1.Text;
            cmd.Parameters.Add("@fd", SqlDbType.VarChar, 4).Value = RadioButtonList4.SelectedItem.Text;
            cmd.Parameters.Add("@acco", SqlDbType.VarChar, 4).Value = RadioButtonList3.SelectedItem.Text;
            cmd.Parameters.Add("@eid", SqlDbType.VarChar, 50).Value = eid.Text;
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
