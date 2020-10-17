<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="BrainTest.Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <link href="Asset/hover.css" rel="stylesheet" />
    <link href="../Content/assets/css/metro.css" rel="stylesheet" />
    <link href="../Content/datepicker.css" rel="stylesheet" />
    <script src="../Content/bootstrap-datepicker.js"></script>
    <link href="../Content/Bootstrap_Select_LiveSearch/css/bootstrap-select.css" rel="stylesheet" />
    <script src="../Content/Bootstrap_Select_LiveSearch/js/bootstrap-select.js"></script>
    <style>
        @media only screen and (min-device-width:768px) and (max-device-width:1024px) {
            .FontSizeSm {
                font-size: 10px !important;
            }
        }
    </style>
    <link href="Content/font-awesome/css/font-awesome.css" rel="stylesheet" />

    <%--<style>
        .popup {
            width: 100%;
            height: 100%;
            display: none;
            position: fixed;
            z-index: 10;
            top: 0px;
            left: 0px;
            background: rgba(0,0,0,0.75);
        }

        /* Inner */
        .popup-inner {
            max-width: 700px;
            width: 90%;
            padding: 40px;
            position: absolute;
            top: 50%;
            left: 50%;
            -webkit-transform: translate(-50%, -50%);
            transform: translate(-50%, -50%);
            box-shadow: 0px 2px 6px rgba(0,0,0,1);
            border-radius: 3px;
            background: #fff;
        }

        /* Close Button */
        .popup-close {
            width: 30px;
            height: 30px;
            padding-top: 4px;
            display: inline-block;
            position: absolute;
            top: 0px;
            right: 0px;
            transition: ease 0.25s all;
            -webkit-transform: translate(50%, -50%);
            transform: translate(50%, -50%);
            border-radius: 1000px;
            background: rgba(0,0,0,0.8);
            font-family: Arial, Sans-Serif;
            font-size: 20px;
            text-align: center;
            line-height: 100%;
            color: #fff;
        }

            .popup-close:hover {
                -webkit-transform: translate(50%, -50%) rotate(180deg);
                transform: translate(50%, -50%) rotate(180deg);
                background: rgba(0,0,0,1);
                text-decoration: none;
            }

        .HideCell {
            display: none;
        }
    </style>
    <script>
        $(function () {
            //----- OPEN
            $('[data-popup-open]').on('click', function (e) {
                alert('work');
                var targeted_popup_class = jQuery(this).attr('data-popup-open');
                $('[data-popup="' + targeted_popup_class + '"]').fadeIn(350);
                e.preventDefault();

                var blcid = $(this).closest('tr').find('.postid').text();

                $('input.blcid').val(blcid);

            });

            //----- CLOSE
            $('[data-popup-close]').on('click', function (e) {
                var targeted_popup_class = jQuery(this).attr('data-popup-close');
                $('[data-popup="' + targeted_popup_class + '"]').fadeOut(350);

                e.preventDefault();
            });
        });
    </script>--%>

    <div class="row">
        <div class="col-md-12">
            <section class="panel panel-primary" style="border-color: #00A28A;">
              <header class="panel-heading" style="background-color: #00A28A; border-color: #00A28A;"><center>ADD POST</center>
                    <span class="tools pull-right">
                        <a href="javascript:;" class="fa fa-chevron-down"></a>
                    </span>
                </header>
                <div class="panel-body" runat="server">
                    <div class="row">
                        <div class="col-sm-12">
                            <div class="col-sm-10">
                                <asp:TextBox ID="txtComentsPosting" runat="server" CssClass="form-control" TextMode="MultiLine" placeholder="Enter Your Coments">                                                                                   
                                </asp:TextBox>
                                <asp:RequiredFieldValidator ID="RFDtxtComentsPosting" runat="server" ControlToValidate="txtComentsPosting"
                                    CssClass="normal-red" ErrorMessage="*Require" ValidationGroup="MasterSave"></asp:RequiredFieldValidator>
                            </div>
                            <div class="col-sm-2">
                                <asp:LinkButton ID="btnSavPost" runat="server" ValidationGroup="MasterSave" CssClass="btn green btn-success" OnClick="btnSavPost_Click">
                                                                <span aria-hidden="true" class="glyphicon glyphicon-ok"> Post</span></asp:LinkButton>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
        </div>

    </div>

    <div class="row">
        <div class="col-md-12">
            <section class="panel panel-primary" style="border-color: #00A28A;">
                <header class="panel-heading" style="background-color: #00A28A; border-color: #00A28A;"><center>POST LIST</center>
                    <span class="tools pull-right">
                        <a href="javascript:;" class="fa fa-chevron-down"></a>
                    </span>
                </header>
                <div class="panel-body" runat="server">
                    <div class="row">
                        <div class="col-sm-12">
                            <div class="col-sm-6">
                            </div>
                            <div class="col-sm-5">
                                <asp:TextBox ID="txtSearchPost" runat="server" CssClass="form-control" TextMode="MultiLine" placeholder="Search Your Post">                                                                                   
                                </asp:TextBox>
                            </div>
                            <div class="col-sm-1">
                                <asp:Button ID="btnSearch" runat="server" Text="Search" CssClass="btn yellow btn-warning" OnClick="btnSearch_Click" />
                            </div>
                        </div>
                        <div class="row"></div>
                        <br />
                        <div class="col-sm-12">
                            <div class="table-responsive">

                                <asp:GridView ID="gvPost" GridLines="None" CellPadding="4"
                                    HeaderStyle-CssClass="GrayBackWhiteFontFixedHeader"
                                    FooterStyle-CssClass="GrayBackWhiteFont"
                                    ItemStyle-CssClass="Normal"
                                    ItemStyle-BackColor="#ecd1c4"
                                    AlternatingItemStyle-BackColor="white"
                                    runat="server"
                                    CssClass=" table  table-bordered margin-bottome-0"
                                    AutoGenerateColumns="False" OnRowDataBound="gvPost_RowDataBound"
                                    BorderWidth="1px" BackColor="White" BorderColor="#3366CC" AllowPaging="true" PageSize="10" OnPageIndexChanging="gvPost_PageIndexChanging"
                                    BorderStyle="None" ShowFooter="false" ShowHeader="false">
                                    <Columns>
                                        <asp:TemplateField HeaderStyle-BackColor="SteelBlue" HeaderStyle-ForeColor="white" Visible="false">
                                            <ItemTemplate>
                                                <asp:Label ID="lblPostID" runat="server" CssClass="control-label postid" Visible="false" Text='<%# Eval("PostID")%>'></asp:Label>
                                                <asp:Label ID="lblCommentsID" runat="server" CssClass="control-label" Visible="false" Text='<%# Eval("CommentsID")%>'></asp:Label>
                                            </ItemTemplate>
                                        </asp:TemplateField>

                                        <asp:TemplateField HeaderStyle-BackColor="SteelBlue" HeaderStyle-ForeColor="white">
                                            <ItemTemplate>
                                                <asp:Label ID="lblPostedComents" runat="server" CssClass="control-label" Text='<%# Eval("Comments")%>' ForeColor='<%# Convert.ToInt32(Eval("CommentsID"))==0?System.Drawing.Color.Blue:System.Drawing.Color.Black %>' Font-Bold='<%# Convert.ToInt32(Eval("CommentsID"))==0?true:false %>'></asp:Label>
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderStyle-BackColor="SteelBlue" HeaderStyle-ForeColor="white">
                                            <ItemTemplate>
                                                <asp:Label ID="lblUserName" runat="server" CssClass="control-label" Text='<%# Eval("UserName")%>' ForeColor='<%# Convert.ToInt32(Eval("CommentsID"))==0?System.Drawing.Color.Blue:System.Drawing.Color.Black %>' Font-Bold='<%# Convert.ToInt32(Eval("CommentsID"))==0?true:false %>'></asp:Label>

                                            </ItemTemplate>
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderStyle-BackColor="SteelBlue" HeaderStyle-ForeColor="white">
                                            <ItemTemplate>
                                                <asp:Label ID="lblPostDate" runat="server" CssClass="control-label" Text='<%# Eval("PostDate")%>' ForeColor='<%# Convert.ToInt32(Eval("CommentsID"))==0?System.Drawing.Color.Blue:System.Drawing.Color.Black %>' Font-Bold='<%# Convert.ToInt32(Eval("CommentsID"))==0?true:false %>'></asp:Label>
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderStyle-BackColor="SteelBlue" HeaderStyle-ForeColor="white" HeaderStyle-Width="1px">
                                            <ItemTemplate>

                                                <asp:Panel ID="pnlPost" runat="server" Visible='<%# Convert.ToInt32(Eval("CommentsID"))==0?true:false %>'>
                                                    <div class="row">
                                                        <div class="col-sm-4">
                                                            <asp:Label ID="lblComentsCount" runat="server" CssClass="control-label" Text='<%# Eval("CommentsCount")%>' ForeColor='<%# Convert.ToInt32(Eval("CommentsID"))==0?System.Drawing.Color.Blue:System.Drawing.Color.Black %>' Font-Bold='<%# Convert.ToInt32(Eval("CommentsID"))==0?true:false %>'></asp:Label></span>
                                                        </div>
                                                        <div class="col-sm-1"></div>
                                                        <div class="col-sm-7">
                                                            <div class="input-group">
                                                                <asp:TextBox ID="txtComents" runat="server" CssClass="form-control" TextMode="MultiLine" Rows="1"></asp:TextBox>

                                                                <span class="input-group-btn">
                                                                    <asp:LinkButton ID="lbtnAddComentsPost" runat="server" CssClass="btn blue btn-primary btn-sm" OnClick="lbtnAddComentsPost_Click">Comments</asp:LinkButton>

                                                                </span>
                                                            </div>

                                                        </div>
                                                    </div>
                                                </asp:Panel>
                                                <asp:Panel ID="pnlComents" runat="server" Visible='<%# Convert.ToInt32(Eval("CommentsID"))==0?false:true %>'>
                                                    <div class="row">
                                                        <div class="col-sm-1"></div>
                                                        <div class="col-sm-5">
                                                            <asp:LinkButton ID="btnSaveLike" runat="server" OnClick="btnSaveLike_Click">
                                                                <span aria-hidden="true" class="fa fa-thumbs-up">
                                                                    <asp:Label ID="lblLikeCount" runat="server" CssClass="control-label" Text='<%# Eval("IsLike")%>' ForeColor='<%# Convert.ToInt32(Eval("CommentsID"))==0?System.Drawing.Color.Blue:System.Drawing.Color.Black %>' Font-Bold='<%# Convert.ToInt32(Eval("CommentsID"))==0?true:false %>'></asp:Label></span>

                                                            </asp:LinkButton>
                                                        </div>
                                                        <div class="col-sm-1"></div>
                                                        <div class="col-sm-5">
                                                            <asp:LinkButton ID="btnSaveDisLike" runat="server" OnClick="btnSaveDisLike_Click">
                                                                <span aria-hidden="true" class="fa fa-thumbs-down">
                                                                    <asp:Label ID="lblDisLikeCount" runat="server" CssClass="control-label" Text='<%# Eval("isDislike")%>' ForeColor='<%# Convert.ToInt32(Eval("CommentsID"))==0?System.Drawing.Color.Blue:System.Drawing.Color.Black %>' Font-Bold='<%# Convert.ToInt32(Eval("CommentsID"))==0?true:false %>'></asp:Label></span>

                                                            </asp:LinkButton>
                                                        </div>
                                                    </div>
                                                </asp:Panel>

                                            </ItemTemplate>
                                        </asp:TemplateField>
                                    </Columns>
                                    <FooterStyle CssClass="GrayBackWhiteFont"></FooterStyle>

                                    <HeaderStyle CssClass="GrayBackWhiteFontFixedHeader"></HeaderStyle>
                                </asp:GridView>

                            </div>
                        </div>
                        <div class="row"></div>
                        <br />
                        <div class="col-sm-12">
                            <div class="pull-left">
                                <span class="control-label">Total : </span>
                                <asp:Label ID="lblTotalRow" runat="server" Font-Bold="true" CssClass="control-label" ForeColor="Gray"></asp:Label>
                            </div>
                        </div>
                        <%--<div class="row"></div>
                        <br />
                        <div class="col-md-8 col-md-offset-2">
                            <div class="popup" data-popup="popup-1">
                                <div class="popup-inner">
                                    <div class="row">
                                        <div class="col-md-12">
                                            <div class="col-md-12">
                                                <asp:TextBox runat="server" CssClass="blcid form-control HideCell" ID="txtComentsID"></asp:TextBox>
                                            </div>
                                            <div class="row"></div>

                                            <div class="col-md-8">
                                                <asp:TextBox runat="server" CssClass="blcno form-control" ID="txtComents" TextMode="MultiLine"></asp:TextBox>
                                                <asp:RequiredFieldValidator ID="ReqtxtComents" runat="server" ControlToValidate="txtComents" CssClass="normal-red" ValidationGroup="ACValidation"
                                                    ErrorMessage="Required"></asp:RequiredFieldValidator>
                                            </div>
                                            <div class="col-md-4">
                                                <asp:Button runat="server" ID="addComents" CssClass="btn green btn-success" Text="Post" OnClick="addComents_Click" ValidationGroup="ACValidation" />
                                            </div>
                                        </div>
                                    </div>

                                    <a class="popup-close" data-popup-close="popup-1" href="#">x</a>
                                </div>
                            </div>
                        </div>--%>
                    </div>
                </div>
            </section>
        </div>

    </div>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Rightcolumn" runat="server">
</asp:Content>
