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

    public partial class blog : System.Web.UI.Page
    {
        Model db = new Model();
        
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                FillBlog();
            }
        }


        public void FillBlog()
        {
            DataSet ds2 = new DataSet();
            //ds2.ReadXml(Server.MapPath("BlogDb.xml"));
            ds2 = db.BindUserDetails("select * from Blog");
            DataView ds = new DataView();
            ds = ds2.Tables[0].DefaultView;
            ds.Sort = "BlogID desc";

            if (ds.Table.DefaultView.Count > 0)
            {

                string str = "<section class='clearfix'><div class='g2'><ul class='no-list info'>";
                foreach (DataRow drForm in ds.Table.DefaultView.ToTable().Rows)
                {

                    str = str + "<li><h5><a href='../BlogDetails.aspx?id=" + drForm["BlogID"].ToString() + "#Blog'>" + drForm["Title"].ToString() + "</a>";
                    str = str + "</h5><p style='text-align:left;'>" + drForm["Details1"].ToString();
                    str = str + "</p><span class='label label-info' style='float:left;'>" + drForm["Category"].ToString();
                    str = str + "</span><span class='label label-info' style='float:right;'>" + drForm["Year"].ToString();
                    str = str + "</span></li><hr/>";
                }
                str = str + "</ul></div>";

                str = str + "<br/><div class='g1'><div class='main-links sidebar'><ul><li><a href='images/krishandutt.pdf' target='_blank'>Download My Resume</a></li><li><a href='#resume'>View My Resume</a></li><li><a href='#portfolio'>My Portfolio</a></li><li><a href='#contact'>Hire me for your next project</a></li><li><a href='#features'>Features</a></li><li><a href='http://www.hitwebcounter.com' target='_blank'><img src='http://hitwebcounter.com/counter/counter.php?page=6400827&style=0027&nbdigits=7&type=page&initCount=20' title='.' alt='.' border='0'></a></li><li><img src='images/kdQR.png' title='.' alt='.' border='0' height='200px' width='200px'></li></ul>";

                DataTable dt = ds.Table;
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
