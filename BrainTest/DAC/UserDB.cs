using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Security.Cryptography;
using System.Text;
using System.Web;

namespace BrainTest.DAC
{
    public class UserDB
    {

        string connStr = ConfigurationManager.ConnectionStrings["myConnectionString"].ConnectionString;
        public UserInfo ERP_Login(string LoginID, string Password)
        {
            SqlConnection myConnection = new SqlConnection(connStr);
            SqlCommand myCommand = new SqlCommand("Com_UserLogin_prc", myConnection);
            myCommand.CommandType = CommandType.StoredProcedure;

            SqlParameter parameterLoginID = new SqlParameter("@LoginID", SqlDbType.NVarChar, 50);
            parameterLoginID.Value = LoginID;
            myCommand.Parameters.Add(parameterLoginID);

            SqlParameter parameterPassword = new SqlParameter("@Password", SqlDbType.NVarChar, 50);
            parameterPassword.Value = Encrypt(Password);
            myCommand.Parameters.Add(parameterPassword);


            SqlParameter parameterUserID = new SqlParameter("@UserID", SqlDbType.Int, 4);
            parameterUserID.Direction = ParameterDirection.Output;
            myCommand.Parameters.Add(parameterUserID);

            SqlParameter parameterUserName = new SqlParameter("@UserName", SqlDbType.NVarChar, 100);
            parameterUserName.Direction = ParameterDirection.Output;
            myCommand.Parameters.Add(parameterUserName);


            myConnection.Open();
            myCommand.ExecuteNonQuery();

            UserInfo ui = new UserInfo();

            ui.EmpID = parameterUserID.Value.ToString();
            ui.UserID = parameterUserID.Value.ToString();
            ui.UserName = parameterUserName.Value.ToString();
            


            myConnection.Close();
            myConnection.Dispose();
            myCommand.Dispose();

            return ui;
        }

        public string Encrypt(string cleanString)
        {
            Byte[] clearBytes = new UnicodeEncoding().GetBytes(cleanString);
            Byte[] hashedBytes = ((HashAlgorithm)CryptoConfig.CreateFromName("MD5")).ComputeHash(clearBytes);

            return BitConverter.ToString(hashedBytes);
        }

        public DataTable BT_GET_General_Posting_Detail(string PostText, int UserID)
        {
            SqlConnection con = new SqlConnection(connStr);
            SqlCommand Cmd = new SqlCommand("BT_GET_General_Posting_Detail_prc", con);
            Cmd.CommandType = CommandType.StoredProcedure;
            Cmd.Parameters.Add("@PostText", SqlDbType.Text).Value = PostText;
            Cmd.Parameters.Add("@UserID", SqlDbType.Int).Value = UserID;
            con.Open();
            SqlDataAdapter myAdapter = new SqlDataAdapter(Cmd);
            DataSet ds = new DataSet();
            myAdapter.Fill(ds);
            con.Close();
            return ds.Tables[0];
        }

        public int BT_Insert_General_Posting(string PostText, int UserID)
        {
            SqlConnection con = new SqlConnection(connStr);
            SqlCommand Cmd = new SqlCommand("BT_Insert_General_Posting_prc", con);
            Cmd.CommandType = CommandType.StoredProcedure;
            Cmd.Parameters.Add("@PostText", SqlDbType.Text).Value = PostText;
            Cmd.Parameters.Add("@UserID", SqlDbType.Int).Value = UserID;
            Cmd.Parameters.Add("@Result", SqlDbType.Int).Direction = ParameterDirection.Output;
            con.Open();
            Cmd.ExecuteNonQuery();
            con.Close();
            return (int)(Cmd.Parameters["@Result"].Value);
        }
        public int BT_InsertUpdate_LikeDislike(int CommentID, int PostID, int UserID, int CommandID)
        {
            SqlConnection con = new SqlConnection(connStr);
            SqlCommand Cmd = new SqlCommand("BT_InsertUpdate_LikeDislike_prc", con);
            Cmd.CommandType = CommandType.StoredProcedure;
            Cmd.Parameters.Add("@CommentID", SqlDbType.Int).Value = CommentID;
            Cmd.Parameters.Add("@PostID", SqlDbType.Int).Value = PostID;
            Cmd.Parameters.Add("@UserID", SqlDbType.Int).Value = UserID;
            Cmd.Parameters.Add("@CommandID", SqlDbType.Int).Value = CommandID;
            Cmd.Parameters.Add("@Result", SqlDbType.Int).Direction = ParameterDirection.Output;
            con.Open();
            Cmd.ExecuteNonQuery();
            con.Close();
            return (int)(Cmd.Parameters["@Result"].Value);
        }
        public int BT_InsertUpdate_PostWiseComments(int PostID, string Comments, int UserID)
        {
            SqlConnection con = new SqlConnection(connStr);
            SqlCommand Cmd = new SqlCommand("BT_InsertUpdate_PostWiseComments_prc", con);
            Cmd.CommandType = CommandType.StoredProcedure;
            Cmd.Parameters.Add("@PostID", SqlDbType.Int).Value = PostID;
            Cmd.Parameters.Add("@Comments", SqlDbType.Text).Value = Comments;
            Cmd.Parameters.Add("@UserID", SqlDbType.Int).Value = UserID;
            Cmd.Parameters.Add("@Result", SqlDbType.Int).Direction = ParameterDirection.Output;
            con.Open();
            Cmd.ExecuteNonQuery();
            con.Close();
            return (int)(Cmd.Parameters["@Result"].Value);
        }
       

    }

    public class UserInfo
    {
        public string EmpID;
        public string UserID;
        public string UserName;
    }




}