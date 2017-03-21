package kr.re.hep.member;

import java.util.Date;

public class MemberVO {

	private int member_no;
	private String name;
	private String email;
	private String password;
	private String password2;
	private String nickname;
	private boolean tutorial_yn;
	private String ip;
	private Date input_dt;
	private Date time_stamp;

	public MemberVO() {
		super();
		// TODO Auto-generated constructor stub
	}

	public MemberVO(int member_no, String name, String email, String password, String nickname, boolean tutorial_yn,
			String ip, Date input_dt, Date time_stamp) {
		super();
		this.member_no = member_no;
		this.name = name;
		this.email = email;
		this.password = password;
		this.nickname = nickname;
		this.tutorial_yn = tutorial_yn;
		this.ip = ip;
		this.input_dt = input_dt;
		this.time_stamp = time_stamp;
	}

	public String getPassword2() {
		return password2;
	}

	public void setPassword2(String password2) {
		this.password2 = password2;
	}

	public int getMember_no() {
		return member_no;
	}

	public void setMember_no(int member_no) {
		this.member_no = member_no;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getNickname() {
		return nickname;
	}

	public void setNickname(String nickname) {
		this.nickname = nickname;
	}

	public boolean isTutorial_yn() {
		return tutorial_yn;
	}

	public void setTutorial_yn(boolean tutorial_yn) {
		this.tutorial_yn = tutorial_yn;
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

	public Date getTime_stamp() {
		return time_stamp;
	}

	public void setTime_stamp(Date time_stamp) {
		this.time_stamp = time_stamp;
	}

	@Override
	public String toString() {
		return "MemberVO [member_no=" + member_no + ", name=" + name + ", email=" + email + ", password=" + password
				+ ", nickname=" + nickname + ", tutorial_yn=" + tutorial_yn + ", ip=" + ip + ", input_dt=" + input_dt
				+ ", time_stamp=" + time_stamp + "]";
	}

}
