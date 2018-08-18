using System;
using System.Collections.Generic;
using System.Data;
using System.Data.OleDb;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for Model
/// </summary>
/// 
namespace krishanduttsharma
{
    public class Model
    {
        OleDbConnection con;
        OleDbCommand cmd;

        public Model()
        {

        }
        public void getconncetion()
        {
            string path = HttpContext.Current.Server.MapPath("\\App_Data\\BlogDb.accdb");
            string connString = "Provider=Microsoft.ACE.OLEDB.12.0;Data Source=" + path + ";Persist Security Info = False; ";
            con = new OleDbConnection(connString);
        }
        public bool Insert(string strquery)
        {
            getconncetion();
            bool result;
            using (con)
            {
                cmd = new OleDbCommand(strquery, con);
                //cmd.CommandText = strquery;
                //cmd.Connection = con;
                con.Open();
                int res = cmd.ExecuteNonQuery();
                if (res == 1)
                    result = true;
                else
                    result = false;
                con.Close();


                return result;

            }

        }
        public DataSet BindUserDetails(string strquery)
        {
            getconncetion();
            DataSet ds = new DataSet();
            using (con)
            {
                using (cmd = new OleDbCommand(strquery, con))
                {
                    OleDbDataAdapter Da = new OleDbDataAdapter(cmd);
                    Da.Fill(ds);
                }
            }
            return ds;
        }
    }
}