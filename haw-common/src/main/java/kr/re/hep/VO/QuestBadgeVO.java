package kr.re.hep.VO;

import java.util.Date;

public class QuestBadgeVO {

	private int quest_no;
	private int badge_no;
	private boolean required_yn;
	private Date input_dt;
	private Date time_stamp;

	public QuestBadgeVO() {
		super();
		// TODO Auto-generated constructor stub
	}

	public QuestBadgeVO(int quest_no, int badge_no, boolean required_yn, Date input_dt, Date time_stamp) {
		super();
		this.quest_no = quest_no;
		this.badge_no = badge_no;
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

	public int getBadge_no() {
		return badge_no;
	}

	public void setBadge_no(int badge_no) {
		this.badge_no = badge_no;
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
		return "QuestBadgeVO [quest_no=" + quest_no + ", badge_no=" + badge_no + ", required_yn=" + required_yn
				+ ", input_dt=" + input_dt + ", time_stamp=" + time_stamp + "]";
	}

}
