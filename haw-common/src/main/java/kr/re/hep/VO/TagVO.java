package kr.re.hep.VO;

import java.util.Date;

public class TagVO {

	private int tag_no;
	private String tag_nm;
	private Date input_dt;
	private Date time_stamp;

	public TagVO() {
		super();
		// TODO Auto-generated constructor stub
	}

	public TagVO(int tag_no, String tag_nm, Date input_dt, Date time_stamp) {
		super();
		this.tag_no = tag_no;
		this.tag_nm = tag_nm;
		this.input_dt = input_dt;
		this.time_stamp = time_stamp;
	}

	public int getTag_no() {
		return tag_no;
	}

	public void setTag_no(int tag_no) {
		this.tag_no = tag_no;
	}

	public String getTag_nm() {
		return tag_nm;
	}

	public void setTag_nm(String tag_nm) {
		this.tag_nm = tag_nm;
	}

	public Date getInput_dt() {
		return input_dt;
	}

	public void setInput_dt(Date input_dt) {
		this.input_dt = input_dt;
	}

	public Date getTime_stamp() {
		return time_stamp;
	}

	public void setTime_stamp(Date time_stamp) {
		this.time_stamp = time_stamp;
	}

	@Override
	public String toString() {
		return "TagVO [tag_no=" + tag_no + ", tag_nm=" + tag_nm + ", input_dt=" + input_dt + ", time_stamp="
				+ time_stamp + "]";
	}

}
