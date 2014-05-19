﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Master/Student.Master" AutoEventWireup="true"
    CodeBehind="MarkApply.aspx.cs" Inherits="Eva.Evaluation.Student.MarkApply" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="content">
        <div id="content-header">
            <div id="breadcrumb">
                <a href="#" title="Go to Home" class="tip-bottom"><i class="icon-home"></i>主页</a>
                <a href="#" class="current">加分申请</a>
            </div>
        </div>
        <div class="container-fluid">
            <hr>
            <div class="row-fluid">
                <div class="span12">
                    <div class="widget-box">
                        <div class="widget-title">
                            <span class="icon"><i class="icon-align-justify"></i></span>
                            <h5>
                                加分申请</h5>
                        </div>
                        <div class="widget-content nopadding">
                            <form id="Form1" action="#" method="get" class="form-horizontal" runat="server">
                            <div class="control-group">
                                <label class="control-label">
                                    课程</label>
                                <div class="controls">
                                    <asp:TextBox ID="txtCourseName" runat="server" class="span6" placeholder="课程名" ReadOnly="true"></asp:TextBox>
                                </div>
                            </div>
                            <div class="control-group">
                                <label class="control-label">
                                    分数</label>
                                <div class="controls">
                                    <asp:TextBox ID="txtScore" runat="server" class="span6" placeholder="分数" ReadOnly="true"></asp:TextBox>
                                </div>
                            </div>
                            <div class="control-group">
                                <label class="control-label">
                                    加分</label>
                                <div class="controls">
                                    <asp:TextBox ID="txtBonusPoint" runat="server" class="span6" placeholder="加分"></asp:TextBox>
                                </div>
                            </div>
                            <div class="control-group">
                                <label class="control-label">
                                    理由</label>
                                <div class="controls">
                                    <asp:TextBox ID="txtReson" runat="server" class="span6" placeholder="理由" Rows="6" TextMode="MultiLine"></asp:TextBox>
                                </div>
                            </div>
                            <div class="form-actions">
                                <asp:Button ID="Save" runat="server" Text="保存" class="btn btn-success" 
                                    onclick="Save_Click"  />
                            </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
