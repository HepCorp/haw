package kr.re.hep.vo;

import java.util.Date;

public class RegionConditionVO {

	private int condition_no;
	private int region_no;
	private String city_serial;
	private String region_nm;
	private boolean open_yn;
	private int badge_cnt;
	private int quest_cnt;
	private int point;
	private boolean enabled_yn;
	private Date input_dt;
	private Date time_stamp;

	public RegionConditionVO() {
		super();
		// TODO Auto-generated constructor stub
	}

	public RegionConditionVO(int condition_no, int region_no, String city_serial, String region_nm, boolean open_yn,
			int badge_cnt, int quest_cnt, int point, boolean enabled_yn, Date input_dt, Date time_stamp) {
		super();
		this.condition_no = condition_no;
		this.region_no = region_no;
		this.city_serial = city_serial;
		this.region_nm = region_nm;
		this.open_yn = open_yn;
		this.badge_cnt = badge_cnt;
		this.quest_cnt = quest_cnt;
		this.point = point;
		this.enabled_yn = enabled_yn;
		this.input_dt = input_dt;
		this.time_stamp = time_stamp;
	}

	public int getCondition_no() {
		return condition_no;
	}

	public void setCondition_no(int condition_no) {
		this.condition_no = condition_no;
	}

	public int getRegion_no() {
		return region_no;
	}

	public void setRegion_no(int region_no) {
		this.region_no = region_no;
	}

	public String getCity_serial() {
		return city_serial;
	}

	public void setCity_serial(String city_serial) {
		this.city_serial = city_serial;
	}

	public String getRegion_nm() {
		return region_nm;
	}

	public void setRegion_nm(String region_nm) {
		this.region_nm = region_nm;
	}

	public boolean isOpen_yn() {
		return open_yn;
	}

	public void setOpen_yn(boolean open_yn) {
		this.open_yn = open_yn;
	}

	public int getBadge_cnt() {
		return badge_cnt;
	}

	public void setBadge_cnt(int badge_cnt) {
		this.badge_cnt = badge_cnt;
	}

	public int getQuest_cnt() {
		return quest_cnt;
	}

	public void setQuest_cnt(int quest_cnt) {
		this.quest_cnt = quest_cnt;
	}

	public int getPoint() {
		return point;
	}

	public void setPoint(int point) {
		this.point = point;
	}

	public boolean isEnabled_yn() {
		return enabled_yn;
	}

	public void setEnabled_yn(boolean enabled_yn) {
		this.enabled_yn = enabled_yn;
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
		return "RegionConditionVO [condition_no=" + condition_no + ", region_no=" + region_no + ", city_serial="
				+ city_serial + ", region_nm=" + region_nm + ", open_yn=" + open_yn + ", badge_cnt=" + badge_cnt
				+ ", quest_cnt=" + quest_cnt + ", point=" + point + ", enabled_yn=" + enabled_yn + ", input_dt="
				+ input_dt + ", time_stamp=" + time_stamp + "]";
	}

}
