package kr.re.hep.VO;

import java.util.Date;

public class SigninVO {

	private int signin_no;
	private int member_no;
	private String email;
	private boolean signin_yn;
	private String ip;
	private Date input_dt;

	public SigninVO() {
		super();
		// TODO Auto-generated constructor stub
	}

	public SigninVO(int signin_no, int member_no, String email, boolean signin_yn, String ip, Date input_dt) {
		super();
		this.signin_no = signin_no;
		this.member_no = member_no;
		this.email = email;
		this.signin_yn = signin_yn;
		this.ip = ip;
		this.input_dt = input_dt;
	}

	public int getSignin_no() {
		return signin_no;
	}

	public void setSignin_no(int signin_no) {
		this.signin_no = signin_no;
	}

	public int getMember_no() {
		return member_no;
	}

	public void setMember_no(int member_no) {
		this.member_no = member_no;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public boolean isSignin_yn() {
		return signin_yn;
	}

	public void setSignin_yn(boolean signin_yn) {
		this.signin_yn = signin_yn;
	}

	public String getIp() {
		return ip;
	}

	public void setIp(String ip) {
		this.ip = ip;
	}

	public Date getInput_dt() {
		return input_dt;
	}

	public void setInput_dt(Date input_dt) {
		this.input_dt = input_dt;
	}

	@Override
	public String toString() {
		return "SigninVO [signin_no=" + signin_no + ", member_no=" + member_no + ", email=" + email + ", signin_yn="
				+ signin_yn + ", ip=" + ip + ", input_dt=" + input_dt + "]";
	}

}
