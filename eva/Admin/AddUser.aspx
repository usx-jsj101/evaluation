﻿<%@ Page Title="" Language="C#" MasterPageFile="~/master/AdminMasterPage.master" AutoEventWireup="true" CodeFile="AddUser.aspx.cs" Inherits="Admin_AddUser" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div id="content">
         <div id="content-header">
            <div id="breadcrumb"><a href="#" title="Go to Home" class="tip-bottom"><i class="icon-home"></i>Home</a> <a href="#" class="current">Tables</a> </div>
        </div>
        <div class="container-fluid">
            <hr>
            <div class="row-fluid">
                <div class="span12">
                    <div class="widget-box">
                        <div class="widget-title">
                            <span class="icon"><i class="icon-align-justify"></i></span>
                            <h5>添加用户</h5>
                        </div>
                        <div class="widget-content nopadding">
                            <form action="#" method="get" class="form-horizontal">
                                <div class="control-group">
                                    <label class="control-label">用户名 :</label>
                                    <div class="controls">
                                        <input type="text" class="span6" placeholder="用户名" />
                                    </div>
                                </div>
                                <div class="control-group">
                                    <label class="control-label">真实姓名 :</label>
                                    <div class="controls">
                                        <input type="text" class="span6" placeholder="真实姓名" />
                                    </div>
                                </div>
                                <div class="control-group">
                                    <label class="control-label">密码</label>
                                    <div class="controls">
                                        <input type="password" class="span6" placeholder="Enter Password" />
                                    </div>
                                </div>
                                <div class="control-group">
                                    <label class="control-label">Company info :</label>
                                    <div class="controls">
                                        <input type="text" class="span11" placeholder="Company name" />
                                    </div>
                                </div>
                                <div class="control-group">
                                    <label class="control-label">Description field:</label>
                                    <div class="controls">
                                        <input type="text" class="span11" />
                                        <span class="help-block">Description field</span>
                                    </div>
                                </div>
                                <div class="control-group">
                                    <label class="control-label">Message</label>
                                    <div class="controls">
                                        <textarea class="span11"></textarea>
                                    </div>
                                </div>
                                <div class="form-actions">
                                    <button type="submit" class="btn btn-success">Save</button>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>

