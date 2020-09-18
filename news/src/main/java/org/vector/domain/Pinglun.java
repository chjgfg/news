package org.vector.domain;

import java.util.Date;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;

@TableName(value = "pinglun")
public class Pinglun {
	@TableId(value = "po_id", type = IdType.AUTO)
	private int poId;
	@TableField(value = "p_id", exist = true)
	private int pId;
	@TableField(value = "p_context", exist = true)
	private String pContext;
	@TableField(value = "p_point", exist = true)
	private int pPoint;
	@TableField(value = "p_time", exist = true)
	private Date pTime;
	@TableField(value = "p_s_id", exist = true)
	private String psId;

	public int getPoId() {
		return poId;
	}

	public void setPoId(int poId) {
		this.poId = poId;
	}

	public int getpId() {
		return pId;
	}

	public void setpId(int pId) {
		this.pId = pId;
	}

	public String getpContext() {
		return pContext;
	}

	public void setpContext(String pContext) {
		this.pContext = pContext;
	}

	public int getpPoint() {
		return pPoint;
	}

	public void setpPoint(int pPoint) {
		this.pPoint = pPoint;
	}

	public Date getpTime() {
		return pTime;
	}

	public void setpTime(Date pTime) {
		this.pTime = pTime;
	}

	public String getPsId() {
		return psId;
	}

	public void setPsId(String psId) {
		this.psId = psId;
	}

	@Override
	public String toString() {
		return "Pinglun [poId=" + poId + ", pId=" + pId + ", pContext=" + pContext + ", pPoint=" + pPoint + ", pTime="
				+ pTime + ", psId=" + psId + "]";
	}

}
