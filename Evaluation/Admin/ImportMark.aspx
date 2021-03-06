﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Master/Admin.Master" AutoEventWireup="true"
    CodeBehind="ImportMark.aspx.cs" Inherits="Eva.Evaluation.Admin.ImportMark" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="Form1" runat="server">
    <div id="content">
        <div id="content-header" style="height: 67px">
            <div id="breadcrumb">
                <a href="#" title="Go to Home" class="tip-bottom"><i class="icon-home"></i>管理员界面</a>
                <a href="#" class="current">成绩管理</a>
            </div>
            <h1>
                学生成绩导入</h1>
        </div>
        <div class="container-fluid">
            <hr>
            <div class="row-fluid">
                <div class="span12">
                    <div class="widget-box">
                        <div class="widget-title">
                            <span class="icon"><i class="icon-th"></i></span>
                            <h5>
                                成绩列表</h5>
                        </div>
                        <div class="widget-content nopadding">
                            <div>
                                <div id="Memo">
                                    <p>
                                        1.请先下载《学生成绩导入模板》，按照模板中的要求填写基本信息。注意：模板中的数据列不能少，否则不能上传。</p>
                                    <p>
                                        2.单击“选择文件”按钮，选择要上传的文件后，再单击“上传”按钮。</p>
                                    <p>
                                        3.上传后若有红字提示，按照提示修改上传文件内容，然后重新上传。</p>
                                    <p>
                                        4.点击“提交”按钮，导入数据。导入成功后，在学生管理菜单中可以看到导入的学生成绩。</p>
                                </div>
                                <div id="dingbu" style="height: 60px;">
                                    <asp:HyperLink ID="hlDownload" NavigateUrl="~/Admin/学生成绩导入模板.xls" Style="margin-right: 20px;"
                                        runat="server">学生成绩模板下载</asp:HyperLink>
                                    <asp:FileUpload ID="FileUpload1" runat="server" />
                                    &nbsp;&nbsp;
                                    <asp:Button ID="btnUpload" runat="server" Text="上传" CssClass="submit" OnClick="btnUpload_Click1" />
                                    &nbsp;&nbsp;
                                    <asp:Button ID="btnSubmit" runat="server" OnClick="btnSubmit_Click" CssClass="submit"
                                        Text="提交" Visible="False" />
                                    <br />
                                    <div style="padding: 10px;">
                                        <asp:Label ID="Upload_info" runat="server"></asp:Label></div>
                                </div>
                                <div id="table">
                                    <table summary="Submitted table designs" width="98%;" style="margin: 5px auto; text-align: center;">
                                        <thead>
                                            <tr>
                                                <th scope="col">
                                                    序号
                                                </th>
                                                <th scope="col">
                                                    学生姓名
                                                </th>
                                                <th scope="col">
                                                    课程
                                                </th>
                                                <th scope="col">
                                                    成绩
                                                </th>
                                               
                                                <th scope="col">
                                                    学年
                                                </th>
                                                <th scope="col">
                                                    学期
                                                </th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <asp:Repeater ID="Repeater1" runat="server">
                                                <ItemTemplate>
                                                    <tr>
                                                        <td>
                                                            <%#Eval("序号")%>
                                                        </td>
                                                        <td>
                                                            <%#Eval("学生姓名")%>
                                                        </td>
                                                        <td>
                                                            <%#Eval("课程")%>
                                                        </td>
                                                        <td>
                                                            <%#Eval("成绩")%>
                                                        </td>
                                                        
                                                        <td>
                                                            <%#Eval("学年")%>
                                                        </td>
                                                        <td>
                                                            <%#Eval("学期")%>
                                                        </td>
                                                    </tr>
                                                </ItemTemplate>
                                            </asp:Repeater>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    </form>
</asp:Content>
