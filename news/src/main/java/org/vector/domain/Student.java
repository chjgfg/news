package org.vector.domain;

import java.io.Serializable;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;

@TableName(value = "student")
public class Student implements Serializable {
	@TableId(value = "s_id", type = IdType.AUTO)
	private Integer sId;
	@TableField(value = "s_name", exist = true)
	private String sName;
	@TableField(value = "s_password", exist = true)
	private Integer sPassword;
	@TableField(value = "s_telephone", exist = true)
	private String sTelephone;
	@TableField(value = "s_email", exist = true)
	private String sEmail;
	@TableField(value = "s_a_id", exist = true)
	private Integer saId;

	@TableField(exist = false)
	private Admin admin;

	public Admin getAdmin() {
		return admin;
	}

	public Student() {
		super();
	}

	public Integer getsId() {
		return sId;
	}

	public void setsId(Integer sId) {
		this.sId = sId;
	}

	public String getsName() {
		return sName;
	}

	public void setsName(String sName) {
		this.sName = sName;
	}

	public Integer getsPassword() {
		return sPassword;
	}

	public void setsPassword(Integer sPassword) {
		this.sPassword = sPassword;
	}

	public String getsTelephone() {
		return sTelephone;
	}

	public void setsTelephone(String sTelephone) {
		this.sTelephone = sTelephone;
	}

	public String getsEmail() {
		return sEmail;
	}

	public void setsEmail(String sEmail) {
		this.sEmail = sEmail;
	}

	public Integer getSaId() {
		return saId;
	}

	public void setSaId(Integer saId) {
		this.saId = saId;
	}

	@Override
	public String toString() {
		return "Student [sId=" + sId + ", sName=" + sName + ", sPassword=" + sPassword + ", sTelephone=" + sTelephone
				+ ", sEmail=" + sEmail + ", saId=" + saId + "]";
	}

	
}
