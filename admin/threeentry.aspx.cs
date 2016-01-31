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

public partial class admin_threeentry : System.Web.UI.Page
{
    public int fee;
    public string ename;
    protected void Page_Load(object sender, EventArgs e)
    {

        ename = Request.QueryString[0];
        if (ename == "race")
        {
            Label1.Text = "Robo Race";
            fee = 250;
        }
        else if (ename == "war")
        {
            Label1.Text = "Robo War";
            fee = 250;
        }
        else if (ename == "project")
        {
            Label1.Text = "Project Exhibition";
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
            SqlCommand cmd = new SqlCommand("insert into creg(bkno,rno,cgid,cr1,cr2,cr3,g1,g2,g3,addr,college,contactno,event,fees,emid,acco,br)values(@bkno,@rno,@cgid,@name1,@name2,@name3,@gen1,@gen2,@gen3,@add,@coll,@cont,@event,@fee,@eid,@acco,@br)", con);
            cmd.Parameters.Add("@bkno", SqlDbType.Int).Value = int.Parse(bkno.Text);
            cmd.Parameters.Add("@rno", SqlDbType.Int).Value = int.Parse(rno.Text);
            string s = "" + Session["cid"];
            cmd.Parameters.Add("@cgid", SqlDbType.Int).Value = int.Parse(s);
            cmd.Parameters.Add("@name1", SqlDbType.VarChar, 50).Value = rname1.Text;
            cmd.Parameters.Add("@name2", SqlDbType.VarChar, 50).Value = rname2.Text;
            cmd.Parameters.Add("@name3", SqlDbType.VarChar, 50).Value = rname3.Text;
            cmd.Parameters.Add("@gen1", SqlDbType.VarChar, 7).Value = RadioButtonList1.SelectedItem.Text;
            cmd.Parameters.Add("@gen2", SqlDbType.VarChar, 7).Value = RadioButtonList2.SelectedItem.Text;
            cmd.Parameters.Add("@gen3", SqlDbType.VarChar, 7).Value = RadioButtonList3.SelectedItem.Text;
            cmd.Parameters.Add("@add", SqlDbType.VarChar, 50).Value = addr.Text;
            cmd.Parameters.Add("@coll", SqlDbType.VarChar, 50).Value = college.Text;
            cmd.Parameters.Add("@cont", SqlDbType.Decimal, 12).Value = Decimal.Parse(cont.Text);
            cmd.Parameters.Add("@event", SqlDbType.VarChar, 50).Value = Label1.Text;
            cmd.Parameters.Add("@fee", SqlDbType.Int).Value = fee;
            cmd.Parameters.Add("@acco", SqlDbType.VarChar, 4).Value = RadioButtonList4.SelectedItem.Text;
            cmd.Parameters.Add("@eid", SqlDbType.VarChar, 50).Value = eid.Text;
            cmd.Parameters.Add("@br", SqlDbType.VarChar, 10).Value = branch.SelectedItem.Text;
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
