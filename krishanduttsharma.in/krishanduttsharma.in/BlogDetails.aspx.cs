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

public partial class CatBlog : System.Web.UI.Page
{
    Model db = new Model();
    protected void Page_Load(object sender, EventArgs e)
    {
        FillBlog();
    }
    public void FillBlog()
    {
        
        string cat = Request.QueryString["id"].ToString();
        DataSet ds1 = new DataSet();
        ds1 = db.BindUserDetails("select * from Blog");
        //ds1.ReadXml(Server.MapPath("BlogDb.xml"));

        ds1.Tables[0].DefaultView.RowFilter = "BlogID = '" + cat + "'";
        DataTable dt1 = (ds1.Tables[0].DefaultView).ToTable();
        DataSet ds = new DataSet();
        ds.Tables.Add(dt1);
        if (ds.Tables.Count > 0)
        {
            if (ds.Tables[0].Rows.Count > 0)
            {
                string str = "<section class='clearfix'><div class='g2'><ul class='no-list info'>";
                for (int i = 0; i <= ds.Tables[0].Rows.Count - 1; i++)
                {
                    str = str + "<li><h5>" + ds.Tables[0].Rows[i]["Title"].ToString();
                    str = str + "</h5><p style='text-align:left;'>" + ds.Tables[0].Rows[i]["Details"].ToString();
                    str = str + "</p><span class='label label-info' style='float:left;'>" + ds.Tables[0].Rows[i]["Category"].ToString();
                    str = str + "</span><span class='label label-info' style='float:right;'>" + ds.Tables[0].Rows[i]["Year"].ToString();
                    str = str + "</span></li><hr/>";
                }
                str = str + "</ul></div>";

                str = str + "<br/><div class='g1'><div class='main-links sidebar'><ul><li><a href='images/krishandutt.pdf' target='_blank'>Download My Resume</a></li><li><a href='#resume'>View My Resume</a></li><li><a href='#portfolio'>My Portfolio</a></li><li><a href='#contact'>Hire me for your next project</a></li><li><a href='#features'>Features</a></li></ul>";

                DataTable dt = ds1.Tables[0];
                DataTable uniqueCols = new DataTable();
                uniqueCols.Columns.AddRange(new DataColumn[2] { new DataColumn("Category", typeof(string)), new DataColumn("count", typeof(int)) });

                var query = from row in dt.AsEnumerable()
                            group row by row.Field<string>("Category") into sales
                            orderby sales.Key
                            select new
                            {
                                Name = sales.Key,
                                CountOfClients = sales.Count()
                            };

                str = str + "<br/><br/><h5>Category</h5>";
                foreach (var salesman in query)
                {

                    str = str + "<a href='../CatBlog.aspx?cat=" + salesman.Name + "#Blog'>" + salesman.Name + "(" + salesman.CountOfClients + ")</a></br></br>";
                }

                str = str + "</div></div> </section>";
                blog1.InnerHtml = str;
            }
        }
    }
}
