package org.vector.domain;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;

@TableName(value = "admin")
public class Admin implements Serializable {

	@TableId(value = "a_id", type = IdType.AUTO)
	private Integer aId;
	@TableField(value = "a_name", exist = true)
	private String aName;
	@TableField(value = "a_password", exist = true)
	private Integer aPassword;
	@TableField(value = "a_s_id", exist = true)
	private Integer asId;
	
	@TableField(exist = false)
	private List<Student> sList = new ArrayList<Student>();

	public List<Student> getsList() {
		return sList;
	}

	public Admin() {
		super();
	}

	public Admin(Integer aId, String aName, Integer aPassword, Integer asId, List<Student> sList) {
		super();
		this.aId = aId;
		this.aName = aName;
		this.aPassword = aPassword;
		this.asId = asId;
		this.sList = sList;
	}

	public void setsList(List<Student> sList) {
		this.sList = sList;
	}

	public Integer getaId() {
		return aId;
	}

	public void setaId(Integer aId) {
		this.aId = aId;
	}

	public String getaName() {
		return aName;
	}

	public void setaName(String aName) {
		this.aName = aName;
	}

	public Integer getaPassword() {
		return aPassword;
	}

	public void setaPassword(Integer aPassword) {
		this.aPassword = aPassword;
	}

	public Integer getAsId() {
		return asId;
	}

	public void setAsId(Integer asId) {
		this.asId = asId;
	}

	@Override
	public String toString() {
		return "Admin [aId=" + aId + ", aName=" + aName + ", aPassword=" + aPassword + ", asId=" + asId + "]";
	}

}
