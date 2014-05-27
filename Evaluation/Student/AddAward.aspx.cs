﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Eva.Evaluation.Student
{
    public partial class AddAward : System.Web.UI.Page
    {
        Model.Awards award = new Model.Awards();
        BLL.Awards bll = new BLL.Awards();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                SetDate();
            }
        }



        protected void SetDate()
        {
            YearList.Items.Add(new ListItem("", ""));
            for (int i = 1991; i < 2020; i++)
            {
                YearList.Items.Add(new ListItem(i.ToString(), i.ToString()));
            }

            Termlist.Items.Add(new ListItem("", ""));
            for (int i = 1; i < 3; i++)
            {
                Termlist.Items.Add(new ListItem(i.ToString(), i.ToString()));
            }
            GradeList.Items.Add(new ListItem("", ""));
            GradeList.Items.Add(new ListItem("国级", "1"));
            GradeList.Items.Add(new ListItem("省级", "2"));
            GradeList.Items.Add(new ListItem("市级", "3"));

            ScoreList.Items.Add(new ListItem("", ""));
            ScoreList.Items.Add(new ListItem("一等奖", "1"));
            ScoreList.Items.Add(new ListItem("二等奖", "2"));
            ScoreList.Items.Add(new ListItem("三等奖", "3"));



        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
            string strErr = "";
            if (txtName.Text.Trim().Length == 0)
            {
                strErr += "赛事不能为空！";
            }

            if (strErr != "")
            {
                Maticsoft.Common.MessageBox.Show(this, strErr);
            }

            award.AcademicYear = int.Parse(YearList.SelectedValue);
            award.SchoolTerm = int.Parse(Termlist.SelectedValue);
            award.Name = txtName.Text;
            award.Grade = GradeList.SelectedItem.Text;
            award.Score = ScoreList.SelectedItem.Text;

            if (bll.Add(award) != 0)
            {
                Maticsoft.Common.MessageBox.ShowAndRedirect(this, "添加成功!", "AwardList.aspx");
            }
            else
            {
                Maticsoft.Common.MessageBox.Show(this, "添加失败!");
            }

        }


    }
}