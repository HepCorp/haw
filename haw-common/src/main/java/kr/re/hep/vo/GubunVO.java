package kr.re.hep.vo;

import java.util.Date;

public class GubunVO {

	private int gubun_no;
	private String column_nm;
	private String gubun_cd;
	private String gubun_nm;
	private Date input_dt;

	public GubunVO() {
		super();
		// TODO Auto-generated constructor stub
	}

	public GubunVO(int gubun_no, String column_nm, String gubun_cd, String gubun_nm, Date input_dt) {
		super();
		this.gubun_no = gubun_no;
		this.column_nm = column_nm;
		this.gubun_cd = gubun_cd;
		this.gubun_nm = gubun_nm;
		this.input_dt = input_dt;
	}

	public int getGubun_no() {
		return gubun_no;
	}

	public void setGubun_no(int gubun_no) {
		this.gubun_no = gubun_no;
	}

	public String getColumn_nm() {
		return column_nm;
	}

	public void setColumn_nm(String column_nm) {
		this.column_nm = column_nm;
	}

	public String getGubun_cd() {
		return gubun_cd;
	}

	public void setGubun_cd(String gubun_cd) {
		this.gubun_cd = gubun_cd;
	}

	public String getGubun_nm() {
		return gubun_nm;
	}

	public void setGubun_nm(String gubun_nm) {
		this.gubun_nm = gubun_nm;
	}

	public Date getInput_dt() {
		return input_dt;
	}

	public void setInput_dt(Date input_dt) {
		this.input_dt = input_dt;
	}

	@Override
	public String toString() {
		return "GubunVO [gubun_no=" + gubun_no + ", column_nm=" + column_nm + ", gubun_cd=" + gubun_cd + ", gubun_nm="
				+ gubun_nm + ", input_dt=" + input_dt + "]";
	}

}
