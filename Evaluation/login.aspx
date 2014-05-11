﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="Eva.Evaluation.login" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>登录页面</title>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link rel="stylesheet" href="css/bootstrap.min.css" />
    <link rel="stylesheet" href="css/bootstrap-responsive.min.css" />
    <link rel="stylesheet" href="css/matrix-login.css" />
    <link href="font-awesome/css/font-awesome.css" rel="stylesheet" />
    <link href='http://fonts.googleapis.com/css?family=Open+Sans:400,700,800' rel='stylesheet'
        type='text/css'>
</head>
<body>
    <div id="loginbox">
        <form id="loginform" class="form-vertical" runat="server">
        <div class="control-group normal_text">
            <h3>
                <img src="img/login_banner.png" alt="Logo" /></h3>
        </div>
        <div class="control-group">
            <div class="controls">
                <div class="main_input_box">
                    <span class="add-on bg_lg"><i class="icon-user"></i></span>
                    <asp:TextBox ID="txtUserName" runat="server" placeholder="用户名"></asp:TextBox>
                </div>
            </div>
        </div>
        <div class="control-group">
            <div class="controls">
                <div class="main_input_box">
                    <span class="add-on bg_ly"><i class="icon-lock"></i></span>
                    <asp:TextBox ID="txtPaw" runat="server" placeholder="密码" TextMode="Password"></asp:TextBox>
                </div>
            </div>
        </div>
        <div class="form-actions">
            <span class="pull-left"><a href="#" class="flip-link btn btn-info" id="to-recover">忘记密码?</a></span> <span class="pull-right">
                    <asp:Button ID="btnlogin" runat="server" Text="登录/Login" class="btn btn-success" OnClick="btnlogin_Click" /></span>
        </div>
        </form>
        <form id="recoverform" action="#" class="form-vertical">
        <p class="normal_text">
            Enter your e-mail address below and we will send you instructions how to recover
            a password.</p>
        <div class="controls">
            <div class="main_input_box">
                <span class="add-on bg_lo"><i class="icon-envelope"></i></span>
                <input type="text" placeholder="E-mail address" />
            </div>
        </div>
        <div class="form-actions">
            <span class="pull-left"><a href="#" class="flip-link btn btn-success" id="to-login">
                &laquo; Back to login</a></span> <span class="pull-right"><a class="btn btn-info" />
                    Reecover</a></span>
        </div>
        </form>
    </div>
    <script src="js/jquery.min.js"></script>
    <script src="js/matrix.login.js"></script>
</body>
</html>
