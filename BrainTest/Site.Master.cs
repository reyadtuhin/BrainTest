using BrainTest.DAC;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BrainTest
{
    public partial class SiteMaster : MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                    
            }

            try
            {
                CheckAuth();
                lblUserInfo.Text = "Welcome " + Request.Cookies["UserName"].Value;
                
            }
            catch (Exception ex)
            {
                Response.Redirect("Login.aspx");
            }
           
        }

        public void CheckAuth()
        {
            if (Session["UserID"] == null)
            {
                Response.Redirect("~/Login.aspx");
            }
        }

        protected void lbtnLogOut_Click(object sender, EventArgs e)
        {
            FormsAuthentication.SignOut();
            Session.Clear();
            Response.Redirect("~/Login.aspx");
        }


    }
}