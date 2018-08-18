using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml;

public partial class BlogEntry : System.Web.UI.Page
{
    Model db = new Model();
    protected void Page_Load(object sender, EventArgs e)
    {
        gridDataBind();

    }
    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        try
        {
            
            bool result = db.Insert("insert into Blog(Category,Title,Details1,Details,Author,[Year])values('" + txtCategory.SelectedValue.ToString() + "','" + tbTitle.Text + "','" + txtSummary.Text + "','" + tbDetails.Text + "','" + tbAuthor.Text + "','" + System.DateTime.Now.ToString("dd-MMM-yyyy") + "')");
            if (result == true)
            {
                gridDataBind();

                txtCategory.SelectedValue = "0";
                tbTitle.Text = "";
                txtSummary.Text = "";
                tbDetails.Text = "";

                lblalert.Text = "Blog Added Successfully";
                alertdenger.Visible = false;
                alert.Visible = true;
            }
            else
            {
                lblalert.Text = "Some Error occured in Data Try Again.";
                alertdenger.Visible = true;
                alert.Visible = false;
            }

        }
        catch (Exception ex)
        {

            lblalertdenger.Text = ex.Message;
            alertdenger.Visible = true;
            alert.Visible = false;
        }


    }
    public void gridDataBind()
    {
        DataSet ds1 = new DataSet();
        ds1 = db.BindUserDetails("select * from Blog");
        //ds1.ReadXml(Server.MapPath("BlogDb.xml"));
        if (ds1.Tables.Count > 0)
        {
            if (ds1.Tables[0].Rows.Count > 0)
            {
                gvBookStoreRecords.DataSource = ds1;
                gvBookStoreRecords.DataBind();
            }
        }
    }
}
