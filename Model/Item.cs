﻿using System;
namespace Eva.Model
{
	/// <summary>
	/// Item:实体类(属性说明自动提取数据库字段的描述信息)
	/// </summary>
	[Serializable]
	public partial class Item
	{
		public Item()
		{}
		#region Model
		private int _id;
		private string _name;
		private decimal? _value;
		/// <summary>
		/// 
		/// </summary>
		public int Id
		{
			set{ _id=value;}
			get{return _id;}
		}
		/// <summary>
		/// 
		/// </summary>
		public string Name
		{
			set{ _name=value;}
			get{return _name;}
		}
		/// <summary>
		/// 
		/// </summary>
		public decimal? Value
		{
			set{ _value=value;}
			get{return _value;}
		}
		#endregion Model

	}
}
