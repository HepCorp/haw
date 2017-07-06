package kr.re.hep.vo;

import java.util.Date;

public class QuestDirectedVO {

	private int quest_no;
	private int direct_no;
	private boolean required_yn;
	private Date input_dt;
	private Date time_stamp;

	public QuestDirectedVO() {
		super();
		// TODO Auto-generated constructor stub
	}

	public QuestDirectedVO(int quest_no, int direct_no, boolean required_yn, Date input_dt, Date time_stamp) {
		super();
		this.quest_no = quest_no;
		this.direct_no = direct_no;
		this.required_yn = required_yn;
		this.input_dt = input_dt;
		this.time_stamp = time_stamp;
	}

	public int getQuest_no() {
		return quest_no;
	}

	public void setQuest_no(int quest_no) {
		this.quest_no = quest_no;
	}

	public int getDirect_no() {
		return direct_no;
	}

	public void setDirect_no(int direct_no) {
		this.direct_no = direct_no;
	}

	public boolean isRequired_yn() {
		return required_yn;
	}

	public void setRequired_yn(boolean required_yn) {
		this.required_yn = required_yn;
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
		return "QuestDirectedVO [quest_no=" + quest_no + ", direct_no=" + direct_no + ", required_yn=" + required_yn
				+ ", input_dt=" + input_dt + ", time_stamp=" + time_stamp + "]";
	}

}
