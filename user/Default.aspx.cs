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

public partial class user_Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string ename = Request.QueryString[0];
        if (ename == "technoquiz")
            Response.Redirect("twoauth.aspx?event=technoquiz");
        else if (ename == "papercit")
            Response.Redirect("twoauth.aspx?event=papercit");
        else if (ename == "paperetc")
            Response.Redirect("twoauth.aspx?event=paperetc");
        else if (ename == "papermech")
            Response.Redirect("twoauth.aspx?event=papermech");
        else if (ename == "papercivil")
            Response.Redirect("twoauth.aspx?event=papercivil");
        else if (ename == "quest")
            Label1.Text = "Quest of Excellence";
        else if (ename == "project")
            Response.Redirect("threeauth.aspx?event=project");
        else if (ename == "poster")
            Response.Redirect("twoauth.aspx?event=poster");
        else if (ename == "codies")
            Label1.Text = "Coadies";
        else if (ename == "cktdebug")
            Label1.Text = "Circuit Debuging";
        else if (ename == "addzap")
            Label1.Text = "Addzap";
        else if (ename == "war")
            Response.Redirect("threeauth.aspx?event=war");
        else if (ename == "soccer")
            Response.Redirect("threeauth.aspx?event=soccer");
        else if (ename == "race")
            Response.Redirect("threeauth.aspx?event=race");
        else if (ename == "microprograming")
            Label1.Text = "MicroProgramming using 8051";
        else if (ename == "cadcivil")
            Label1.Text = "CAD Programming for civil";
        else if (ename == "cadcam")
            Label1.Text = "CAD/CAM for Mech";
        else if (ename == "blindc")
            Label1.Text = "Blind C";
        else if (ename == "cs")
            Response.Redirect("cs.aspx?event=cs");
        else if (ename == "boxcrik")
            Response.Redirect("cs.aspx?event=boxcrik");
        else if (ename == "lathewar")
            Response.Redirect("twoauth.aspx?event=lathewar");
        else if (ename == "nfs")
            Label1.Text = "NFS";
        else if (ename == "crik07")
            Label1.Text = "Cricket 2007";
        else if (ename == "digitalphotography")
            Label1.Text = "Digital Photography";
        else if (ename == "sketch")
            Label1.Text = "Pencil Sketching";
        else if (ename == "rangoli")
            Label1.Text = "Rangoli Competition";
        else if (ename == "cadciv")
            Label1.Text = "CAD For Civil";
        else if (ename == "circuitdesign")
            Label1.Text = "Circuit design";
        else if (ename == "webdesign")
            Label1.Text = "Web Design";
        else if (ename == "civildesign")
            Label1.Text = "Civil Design";       
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
            SqlCommand cmd = new SqlCommand("insert into ureg(ur1,gen1,addr,contactno,college,event,food,acco,eid)values(@name,@gen,@add,@cont,@coll,@event,@fd,@acco,@eid)", con);
            cmd.Parameters.Add("@name", SqlDbType.VarChar, 50).Value = rname.Text;
            cmd.Parameters.Add("@add", SqlDbType.VarChar, 50).Value = addr.Text;
            cmd.Parameters.Add("@gen", SqlDbType.VarChar, 7).Value = RadioButtonList1.SelectedItem.Text;
            cmd.Parameters.Add("@cont", SqlDbType.Decimal, 12).Value = Decimal.Parse(cont.Text);
            cmd.Parameters.Add("@coll", SqlDbType.VarChar, 50).Value = college.Text;
            cmd.Parameters.Add("@event", SqlDbType.VarChar, 50).Value = Label1.Text;
            cmd.Parameters.Add("@fd", SqlDbType.VarChar, 4).Value = RadioButtonList3.SelectedItem.Text;
            cmd.Parameters.Add("@acco", SqlDbType.VarChar, 4).Value = RadioButtonList2.SelectedItem.Text;
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
