package org.vector.domain;

import java.io.Serializable;
import java.util.List;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;

@TableName(value = "category")
public class Category implements Serializable {

	@TableId(value = "c_id", type = IdType.AUTO)
	private Integer cId;
	@TableField(value = "c_name", exist = true)
	private String cName;
	@TableField(value = "c_context", exist = true)
	private String cContext;

	@TableField(exist = false)
	private List<News> nList;
	
	public List<News> getnList() {
		return nList;
	}

	public void setnList(List<News> nList) {
		this.nList = nList;
	}

	public Integer getcId() {
		return cId;
	}

	public void setcId(Integer cId) {
		this.cId = cId;
	}

	public String getcName() {
		return cName;
	}

	public void setcName(String cName) {
		this.cName = cName;
	}

	public String getcContext() {
		return cContext;
	}

	public void setcContext(String cContext) {
		this.cContext = cContext;
	}

	@Override
	public String toString() {
		return "Category [cId=" + cId + ", cName=" + cName + ", cContext=" + cContext + "]";
	}

}
