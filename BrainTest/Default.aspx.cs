using BrainTest.DAC;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BrainTest
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
            try
            {

                if (!Page.IsPostBack)
                {
                    BindGrid();
                }
            }
            catch (Exception ex)
            {
                Response.Redirect("Login.aspx");
            }
        }

        protected void gvPost_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            gvPost.PageIndex=e.NewPageIndex;
            BindGrid();
        }

        protected void gvPost_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            if (e.Row.RowType == DataControlRowType.DataRow)
            {
                int CommentsID = Int32.Parse((e.Row.FindControl("lblCommentsID") as Label).Text);
                if (CommentsID==0)
                {
                    e.Row.BackColor = System.Drawing.Color.LightGray;
                }
                else
                {
                    e.Row.BackColor = System.Drawing.Color.White;
                }
            }
        }
        private void BindGrid()
        {
            DataTable dt = new UserDB().BT_GET_General_Posting_Detail(txtSearchPost.Text, Int32.Parse(Request.Cookies["UserID"].Value));
            gvPost.DataSource = dt;
            gvPost.DataBind();
            lblTotalRow.Text = dt.Rows.Count.ToString();
        }

        protected void btnSearch_Click(object sender, EventArgs e)
        {
            BindGrid();
        }

        protected void btnSavPost_Click(object sender, EventArgs e)
        {
            try
            {
                int result = new UserDB().BT_Insert_General_Posting(txtComentsPosting.Text, Int32.Parse(Request.Cookies["UserID"].Value));
                if(result>0)
                {
                    BindGrid();
                }
            }
            catch
            {

            }
        }

        protected void btnSaveLike_Click(object sender, EventArgs e)
        {
            LinkButton lbtn = sender as LinkButton;
            GridViewRow row = (GridViewRow)lbtn.NamingContainer;

            
            try
            {
                int PostID = Int32.Parse((row.FindControl("lblPostID") as Label).Text);
                int CommentsID = Int32.Parse((row.FindControl("lblCommentsID") as Label).Text);
                int result = new UserDB().BT_InsertUpdate_LikeDislike(CommentsID, PostID, Int32.Parse(Request.Cookies["UserID"].Value), 1);
                if (result > 0)
                {
                    BindGrid();
                }
            }
            catch
            {

            }
        }

        protected void btnSaveDisLike_Click(object sender, EventArgs e)
        {
            LinkButton lbtn = sender as LinkButton;
            GridViewRow row = (GridViewRow)lbtn.NamingContainer;


            try
            {
                int PostID = Int32.Parse((row.FindControl("lblPostID") as Label).Text);
                int CommentsID = Int32.Parse((row.FindControl("lblCommentsID") as Label).Text);
                int result = new UserDB().BT_InsertUpdate_LikeDislike(CommentsID, PostID, Int32.Parse(Request.Cookies["UserID"].Value), 2);
                if (result > 0)
                {
                    BindGrid();
                }
            }
            catch
            {

            }
        }

        //protected void addComents_Click(object sender, EventArgs e)
        //{
        //    try
        //    {
        //        int result = new UserDB().BT_InsertUpdate_PostWiseComments(Int32.Parse(txtComentsID.Text), txtComents.Text, Int32.Parse(Request.Cookies["UserID"].Value));
        //        if (result > 0)
        //        {
        //            BindGrid();
        //        }
        //    }
        //    catch
        //    {

        //    }
        //}

        

        protected void lbtnAddComentsPost_Click(object sender, EventArgs e)
        {
            LinkButton lbtn = sender as LinkButton;
            GridViewRow row = (GridViewRow)lbtn.NamingContainer;
            try
            {
                int PostID = Int32.Parse((row.FindControl("lblPostID") as Label).Text);
                string Coments = (row.FindControl("txtComents") as TextBox).Text;
                int result = new UserDB().BT_InsertUpdate_PostWiseComments(PostID, Coments, Int32.Parse(Request.Cookies["UserID"].Value));
                if (result > 0)
                {
                    BindGrid();
                }
            }
            catch
            {

            }
        }

        

    }
}