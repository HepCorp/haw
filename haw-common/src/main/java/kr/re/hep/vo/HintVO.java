package kr.re.hep.vo;

import java.util.Date;

public class HintVO {

	private int hint_no;
	private int mission_no;
	private int hint_seq;
	private String hint;
	private int point;
	private Date input_dt;
	private Date time_stamp;

	public HintVO() {
		super();
		// TODO Auto-generated constructor stub
	}

	public HintVO(int hint_no, int mission_no, int hint_seq, String hint, int point, Date input_dt, Date time_stamp) {
		super();
		this.hint_no = hint_no;
		this.mission_no = mission_no;
		this.hint_seq = hint_seq;
		this.hint = hint;
		this.point = point;
		this.input_dt = input_dt;
		this.time_stamp = time_stamp;
	}

	public int getHint_no() {
		return hint_no;
	}

	public void setHint_no(int hint_no) {
		this.hint_no = hint_no;
	}

	public int getMission_no() {
		return mission_no;
	}

	public void setMission_no(int mission_no) {
		this.mission_no = mission_no;
	}

	public int getHint_seq() {
		return hint_seq;
	}

	public void setHint_seq(int hint_seq) {
		this.hint_seq = hint_seq;
	}

	public String getHint() {
		return hint;
	}

	public void setHint(String hint) {
		this.hint = hint;
	}

	public int getPoint() {
		return point;
	}

	public void setPoint(int point) {
		this.point = point;
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
		return "HintVO [hint_no=" + hint_no + ", mission_no=" + mission_no + ", hint_seq=" + hint_seq + ", hint=" + hint
				+ ", point=" + point + ", input_dt=" + input_dt + ", time_stamp=" + time_stamp + "]";
	}

}
