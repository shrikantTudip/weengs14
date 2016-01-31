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

public partial class admin_sixentry : System.Web.UI.Page
{
    public int fee;
    protected void Page_Load(object sender, EventArgs e)
    {

        rname6.Visible = false;
        RadioButtonList6.Visible = false;
        string ename = Request.QueryString[0];
        if (ename == "cs")
        {
            Label1.Text = "Counter Strike";
            fee = 250;
        }
        else if (ename == "bc")
        {
            Label1.Text = "Box cricket";
            rname6.Visible = true;
            RadioButtonList6.Visible = true;
            fee = 300;
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
            SqlCommand cmd = new SqlCommand("insert into creg(bkno,rno,cgid,cr1,cr2,cr3,cr4,cr5,cr6,g1,g2,g3,g4,g5,g6,addr,college,contactno,event,fees,emid,acco,br)values(@bkno,@rno,@cgid,@name1,@name2,@name3,@name4,@name5,@name6,@gen1,@gen2,@gen3,@gen4,@gen5,@gen6,@add,@coll,@cont,@event,@fee,@eid,@acco,@br)", con);
            cmd.Parameters.Add("@bkno", SqlDbType.Int).Value = int.Parse(bkno.Text);
            cmd.Parameters.Add("@rno", SqlDbType.Int).Value = int.Parse(rno.Text);
            string s = "" + Session["cid"];
            cmd.Parameters.Add("@cgid", SqlDbType.Int).Value = int.Parse(s);
            cmd.Parameters.Add("@name1", SqlDbType.VarChar, 50).Value = rname1.Text;
            cmd.Parameters.Add("@name2", SqlDbType.VarChar, 50).Value = rname2.Text;
            cmd.Parameters.Add("@name3", SqlDbType.VarChar, 50).Value = rname3.Text;
            cmd.Parameters.Add("@name4", SqlDbType.VarChar, 50).Value = rname4.Text;
            cmd.Parameters.Add("@name5", SqlDbType.VarChar, 50).Value = rname5.Text;
            cmd.Parameters.Add("@name6", SqlDbType.VarChar, 50).Value = rname6.Text;
            cmd.Parameters.Add("@gen1", SqlDbType.VarChar, 7).Value = RadioButtonList1.SelectedItem.Text;
            cmd.Parameters.Add("@gen2", SqlDbType.VarChar, 7).Value = RadioButtonList2.SelectedItem.Text;
            cmd.Parameters.Add("@gen3", SqlDbType.VarChar, 7).Value = RadioButtonList3.SelectedItem.Text;
            cmd.Parameters.Add("@gen4", SqlDbType.VarChar, 7).Value = RadioButtonList4.SelectedItem.Text;
            cmd.Parameters.Add("@gen5", SqlDbType.VarChar, 7).Value = RadioButtonList5.SelectedItem.Text;
            cmd.Parameters.Add("@gen6", SqlDbType.VarChar, 7).Value = RadioButtonList6.SelectedItem.Text;
            cmd.Parameters.Add("@add", SqlDbType.VarChar, 50).Value = addr.Text;
            cmd.Parameters.Add("@coll", SqlDbType.VarChar, 50).Value = college.Text;
            cmd.Parameters.Add("@cont", SqlDbType.Decimal, 12).Value = Decimal.Parse(cont.Text);
            cmd.Parameters.Add("@event", SqlDbType.VarChar, 50).Value = Label1.Text;
            cmd.Parameters.Add("@fee", SqlDbType.Int).Value = fee;
            cmd.Parameters.Add("@acco", SqlDbType.VarChar, 4).Value = RadioButtonList7.SelectedItem.Text;
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
