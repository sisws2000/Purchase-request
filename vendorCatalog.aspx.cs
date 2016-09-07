using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

public partial class ProjectWithMasterPageCS_Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        //string CS = ConfigurationManager.ConnectionStrings["PRCS"].ConnectionString;
        //using (SqlConnection con = new SqlConnection(CS))
        //{
        //    SqlDataAdapter dataAdapter = new SqlDataAdapter("GetAllCatalogList", con);
        //    dataAdapter.SelectCommand.CommandType = CommandType.StoredProcedure;
        //    DataSet dataset = new DataSet();
        //    dataAdapter.Fill(dataset);
            
        //    vendorCatalogGridView.DataSource = dataset;
        //    vendorCatalogGridView.DataBind();
        //}
    }
}