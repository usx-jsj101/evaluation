﻿using System;
using System.Data;
using System.Collections.Generic;
using Maticsoft.Common;
using Eva.Model;
namespace Eva.BLL
{
	/// <summary>
	/// Mark
	/// </summary>
	public partial class Mark
	{
		private readonly Eva.DAL.Mark dal=new Eva.DAL.Mark();
		public Mark()
		{}
		#region  Method

		/// <summary>
		/// 增加一条数据
		/// </summary>
		public int  Add(Eva.Model.Mark model)
		{
			return dal.Add(model);
		}

		/// <summary>
		/// 更新一条数据
		/// </summary>
		public bool Update(Eva.Model.Mark model)
		{
			return dal.Update(model);
		}

		/// <summary>
		/// 删除一条数据
		/// </summary>
		public bool Delete(int Id)
		{
			
			return dal.Delete(Id);
		}
		/// <summary>
		/// 删除一条数据
		/// </summary>
		public bool DeleteList(string Idlist )
		{
			return dal.DeleteList(Idlist );
		}

		/// <summary>
		/// 得到一个对象实体
		/// </summary>
		public Eva.Model.Mark GetModel(int Id)
		{
			
			return dal.GetModel(Id);
		}

		/// <summary>
		/// 得到一个对象实体，从缓存中
		/// </summary>
		public Eva.Model.Mark GetModelByCache(int Id)
		{
			
			string CacheKey = "MarkModel-" + Id;
			object objModel = Maticsoft.Common.DataCache.GetCache(CacheKey);
			if (objModel == null)
			{
				try
				{
					objModel = dal.GetModel(Id);
					if (objModel != null)
					{
						int ModelCache = Maticsoft.Common.ConfigHelper.GetConfigInt("ModelCache");
						Maticsoft.Common.DataCache.SetCache(CacheKey, objModel, DateTime.Now.AddMinutes(ModelCache), TimeSpan.Zero);
					}
				}
				catch{}
			}
			return (Eva.Model.Mark)objModel;
		}

		/// <summary>
		/// 获得数据列表
		/// </summary>
		public DataSet GetList(string strWhere)
		{
			return dal.GetList(strWhere);
		}
		/// <summary>
		/// 获得前几行数据
		/// </summary>
		public DataSet GetList(int Top,string strWhere,string filedOrder)
		{
			return dal.GetList(Top,strWhere,filedOrder);
		}
		/// <summary>
		/// 获得数据列表
		/// </summary>
		public List<Eva.Model.Mark> GetModelList(string strWhere)
		{
			DataSet ds = dal.GetList(strWhere);
			return DataTableToList(ds.Tables[0]);
		}
		/// <summary>
		/// 获得数据列表
		/// </summary>
		public List<Eva.Model.Mark> DataTableToList(DataTable dt)
		{
			List<Eva.Model.Mark> modelList = new List<Eva.Model.Mark>();
			int rowsCount = dt.Rows.Count;
			if (rowsCount > 0)
			{
				Eva.Model.Mark model;
				for (int n = 0; n < rowsCount; n++)
				{
					model = new Eva.Model.Mark();
					if(dt.Rows[n]["Id"]!=null && dt.Rows[n]["Id"].ToString()!="")
					{
						model.Id=int.Parse(dt.Rows[n]["Id"].ToString());
					}
					if(dt.Rows[n]["CourseId"]!=null && dt.Rows[n]["CourseId"].ToString()!="")
					{
						model.CourseId=int.Parse(dt.Rows[n]["CourseId"].ToString());
					}
					if(dt.Rows[n]["StudentId"]!=null && dt.Rows[n]["StudentId"].ToString()!="")
					{
						model.StudentId=int.Parse(dt.Rows[n]["StudentId"].ToString());
					}
					if(dt.Rows[n]["EvalutionId"]!=null && dt.Rows[n]["EvalutionId"].ToString()!="")
					{
						model.EvalutionId=int.Parse(dt.Rows[n]["EvalutionId"].ToString());
					}
					if(dt.Rows[n]["Score"]!=null && dt.Rows[n]["Score"].ToString()!="")
					{
						model.Score=decimal.Parse(dt.Rows[n]["Score"].ToString());
					}
					if(dt.Rows[n]["BonusPoint"]!=null && dt.Rows[n]["BonusPoint"].ToString()!="")
					{
						model.BonusPoint=decimal.Parse(dt.Rows[n]["BonusPoint"].ToString());
					}
					if(dt.Rows[n]["AcademicYear"]!=null && dt.Rows[n]["AcademicYear"].ToString()!="")
					{
						model.AcademicYear=int.Parse(dt.Rows[n]["AcademicYear"].ToString());
					}
					if(dt.Rows[n]["SchoolTerm"]!=null && dt.Rows[n]["SchoolTerm"].ToString()!="")
					{
						model.SchoolTerm=int.Parse(dt.Rows[n]["SchoolTerm"].ToString());
					}
					if(dt.Rows[n]["CheckStep"]!=null && dt.Rows[n]["CheckStep"].ToString()!="")
					{
						model.CheckStep=int.Parse(dt.Rows[n]["CheckStep"].ToString());
					}
					modelList.Add(model);
				}
			}
			return modelList;
		}

		/// <summary>
		/// 获得数据列表
		/// </summary>
		public DataSet GetAllList()
		{
			return GetList("");
		}

		/// <summary>
		/// 分页获取数据列表
		/// </summary>
		public int GetRecordCount(string strWhere)
		{
			return dal.GetRecordCount(strWhere);
		}
		/// <summary>
		/// 分页获取数据列表
		/// </summary>
		public DataSet GetListByPage(string strWhere, string orderby, int startIndex, int endIndex)
		{
			return dal.GetListByPage( strWhere,  orderby,  startIndex,  endIndex);
		}
		/// <summary>
		/// 分页获取数据列表
		/// </summary>
		//public DataSet GetList(int PageSize,int PageIndex,string strWhere)
		//{
			//return dal.GetList(PageSize,PageIndex,strWhere);
		//}

		#endregion  Method
	}
}
