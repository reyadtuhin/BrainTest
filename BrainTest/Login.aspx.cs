using BrainTest.DAC;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BrainTest
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                
                
            }

        }

    
       

        protected void LoginBtn_Click(object sender, EventArgs e)
        {
 
            string UserID = "0";
            UserDB db = new UserDB();
            UserInfo uinfo = new UserInfo();
            string PCName = Dns.GetHostName();
            string IP = HttpContext.Current.Request.UserHostAddress;
             
            uinfo = db.ERP_Login(UserName.Text, Pass.Text);
            UserID = uinfo.UserID;

            if (UserID != "0")
            {                
                Response.Cookies["UserID"].Value = uinfo.EmpID;
                Response.Cookies["UserName"].Value = uinfo.UserName;
                Session["UserID"] = uinfo.UserID;
                FormsAuthentication.RedirectFromLoginPage(UserID, false);
                FormsAuthentication.SetAuthCookie(UserID, false);
                Response.Redirect("Default.aspx");
            }
            else
            {
                MyMessage.Text = "Please Enter Correct UserID & Password";
                MyMessage.ForeColor = System.Drawing.Color.Red; 
            }
           }
        



        }
    }