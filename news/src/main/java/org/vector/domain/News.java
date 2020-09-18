package org.vector.domain;

import java.util.Date;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;

@TableName(value = "news")
public class News {
	@TableId(value = "n_id", type = IdType.AUTO)
	private Integer nId;
	@TableField(value = "n_title", exist = true)
	private String nTitle;
	@TableField(value = "n_time", exist = true)
	private Date nTime;
	@TableField(value = "n_from", exist = true)
	private String nFrom;
	@TableField(value = "n_context", exist = true)
	private String nContext;
	@TableField(value = "n_edit", exist = true)
	private String nEdit;
	@TableField(value = "n_c_id", exist = true)
	private Integer ncId;

	@TableField(exist = false)
	private Category category;

	public Category getCategory() {
		return category;
	}

	public void setCategory(Category category) {
		this.category = category;
	}

	public Integer getnId() {
		return nId;
	}

	public void setnId(Integer nId) {
		this.nId = nId;
	}

	public String getnTitle() {
		return nTitle;
	}

	public void setnTitle(String nTitle) {
		this.nTitle = nTitle;
	}

	public Date getnTime() {
		return nTime;
	}

	public void setnTime(Date nTime) {
		this.nTime = nTime;
	}

	public String getnFrom() {
		return nFrom;
	}

	public void setnFrom(String nFrom) {
		this.nFrom = nFrom;
	}

	public String getnContext() {
		return nContext;
	}

	public void setnContext(String nContext) {
		this.nContext = nContext;
	}

	public String getnEdit() {
		return nEdit;
	}

	public void setnEdit(String nEdit) {
		this.nEdit = nEdit;
	}

	public Integer getNcId() {
		return ncId;
	}

	public void setNcId(Integer ncId) {
		this.ncId = ncId;
	}

	@Override
	public String toString() {
		return "News [nId=" + nId + ", nTitle=" + nTitle + ", nTime=" + nTime + ", nFrom=" + nFrom + ", nContext="
				+ nContext + ", nEdit=" + nEdit + ", ncId=" + ncId + "]";
	}

}
