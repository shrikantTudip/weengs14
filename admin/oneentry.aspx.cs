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

public partial class admin_oneentry : System.Web.UI.Page
{
    public int fee;
    protected void Page_Load(object sender, EventArgs e)
    {
        string ename = Request.QueryString[0];
        if (ename == "quest")
        {
            Label1.Text = "Quest of Excellence";
            fee=200;
        }
        else if (ename == "cktdbug")
        {
            Label1.Text = "Circuit Debuging";
            fee = 100;
        }
        else if (ename == "addzap")
        {
            fee = 100;
            Label1.Text = "Addzap";
        }
        else if (ename == "micro")
        {
            Label1.Text = "MicroProgramming using 8051";
            fee = 100;
        }
        else if (ename == "cadcivil")
        {
            Label1.Text = "CAD Programming for civil";
            fee = 100;
        }
        else if (ename == "cadcam")
        {
            Label1.Text = "CAD/CAM for Mech";
            fee = 100;
        }
        else if (ename == "blindc")
        {
            Label1.Text = "Blind C";
            fee = 100;
        }
        else if (ename == "cktdesign")
        {
            Label1.Text = "Circuit Designing";
            fee = 100;
        }
        else if (ename == "web")
        {
            Label1.Text = "Web Designing";
            fee = 100;
        }
        else if (ename == "nfs")
        {
            Label1.Text = "NFS";
            fee = 100;
        }
        else if (ename == "crik7")
        {
            Label1.Text = "Cricket 2007";
            fee = 150;
        }
        else if (ename == "digital")
        {
            Label1.Text = "Digital Photography";
            fee = 100;
        }
        else if (ename == "sketch")
        {
            Label1.Text = "Pencil Sketch";
            fee = 100;
        }
        else if (ename == "rangoli")
        {
            Label1.Text = "Rangoli";
            fee = 100;
        }            
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Register();
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
          SqlCommand cmd = new SqlCommand("insert into creg(bkno,rno,cgid,cr1,g1,addr,college,contactno,event,fees,emid,acco)values(@bkno,@rno,@cgid,@name,@gen,@add,@coll,@cont,@event,@fee,@eid,@acco)", con);
             cmd.Parameters.Add("@bkno", SqlDbType.Int).Value = int.Parse(bkno.Text);
             cmd.Parameters.Add("@rno", SqlDbType.Int).Value = int.Parse(rno.Text);
            string s = "" + Session["cid"];
            cmd.Parameters.Add("@cgid", SqlDbType.Int).Value = int.Parse(s);
            cmd.Parameters.Add("@name", SqlDbType.VarChar, 50).Value = rname.Text;
            cmd.Parameters.Add("@gen", SqlDbType.VarChar, 7).Value = RadioButtonList1.SelectedItem.Text;
            cmd.Parameters.Add("@add", SqlDbType.VarChar, 50).Value = addr.Text;
            cmd.Parameters.Add("@coll", SqlDbType.VarChar, 50).Value = college.Text;
            cmd.Parameters.Add("@cont", SqlDbType.Decimal, 12).Value = Decimal.Parse(cont.Text);
            cmd.Parameters.Add("@event", SqlDbType.VarChar, 50).Value = Label1.Text;
            cmd.Parameters.Add("@fee", SqlDbType.Int).Value = fee;
            cmd.Parameters.Add("@acco", SqlDbType.VarChar, 4).Value = RadioButtonList2.SelectedItem.Text;
            cmd.Parameters.Add("@eid", SqlDbType.VarChar, 50).Value = eid.Text;
            if (cmd.ExecuteNonQuery() > 0)
                lblmsg.Text = "Thank You for registration!";
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
