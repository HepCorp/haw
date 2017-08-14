package kr.re.hep.vo;

import java.util.Date;

public class QuestVO {

	private int quest_no;
	private int region_no;
	private int quest_seq;
	private String type;
	private String tag_str;
	private boolean open_yn;
	private int badge_cnt;
	private int quest_clear;
	private String quest_nm;
	private String auth;
	private int level;
	private String description;
	private int point;
	private boolean archive_yn;
	private String input_dt;
	private Date time_stamp;

	private String quest_no_str;
	private String region_str;
	private String open_str;
	private String badge_str;
	private String quest_str;
	private String level_str;
	private String point_str;
	private String type_str;

	public QuestVO(int quest_no, int region_no, int quest_seq, String type, String tag_str, boolean open_yn,
			int badge_cnt, int quest_clear, String quest_nm, String auth, int level, String description, int point,
			boolean archive_yn, String input_dt, Date time_stamp, String region_str, String open_str, String badge_str,
			String quest_str, String level_str, String point_str, String type_str, String quest_no_str) {
		super();
		this.quest_no = quest_no;
		this.region_no = region_no;
		this.quest_seq = quest_seq;
		this.type = type;
		this.tag_str = tag_str;
		this.open_yn = open_yn;
		this.badge_cnt = badge_cnt;
		this.quest_clear = quest_clear;
		this.quest_nm = quest_nm;
		this.auth = auth;
		this.level = level;
		this.description = description;
		this.point = point;
		this.archive_yn = archive_yn;
		this.input_dt = input_dt;
		this.time_stamp = time_stamp;
		this.region_str = region_str;
		this.open_str = open_str;
		this.badge_str = badge_str;
		this.quest_str = quest_str;
		this.level_str = level_str;
		this.point_str = point_str;
		this.type_str = type_str;
		this.quest_no_str = quest_no_str;
	}

	public QuestVO() {
		super();
		// TODO Auto-generated constructor stub
	}

	@Override
	public String toString() {
		return "QuestVO [quest_no=" + quest_no + ", region_no=" + region_no + ", quest_seq=" + quest_seq + ", type="
				+ type + ", tag_str=" + tag_str + ", open_yn=" + open_yn + ", badge_cnt=" + badge_cnt + ", quest_clear="
				+ quest_clear + ", quest_nm=" + quest_nm + ", auth=" + auth + ", level=" + level + ", description="
				+ description + ", point=" + point + ", archive_yn=" + archive_yn + ", input_dt=" + input_dt
				+ ", time_stamp=" + time_stamp + ", quest_no_str=" + quest_no_str + ", region_str=" + region_str
				+ ", open_str=" + open_str + ", badge_str=" + badge_str + ", quest_str=" + quest_str + ", level_str="
				+ level_str + ", point_str=" + point_str + ", type_str=" + type_str + "]";
	}

	public String getQuest_no_str() {
		return quest_no_str;
	}

	public void setQuest_no_str(String quest_no_str) {
		this.quest_no_str = quest_no_str;
	}

	public String getType_str() {
		return type_str;
	}

	public void setType_str(String type_str) {
		this.type_str = type_str;
	}

	public String getPoint_str() {
		return point_str;
	}

	public void setPoint_str(String point_str) {
		this.point_str = point_str;
	}

	public String getLevel_str() {
		return level_str;
	}

	public void setLevel_str(String level_str) {
		this.level_str = level_str;
	}

	public String getQuest_str() {
		return quest_str;
	}

	public void setQuest_str(String quest_str) {
		this.quest_str = quest_str;
	}

	public String getBadge_str() {
		return badge_str;
	}

	public void setBadge_str(String badge_str) {
		this.badge_str = badge_str;
	}

	public String getOpen_str() {
		return open_str;
	}

	public void setOpen_str(String open_str) {
		this.open_str = open_str;
	}

	public String getRegion_str() {
		return region_str;
	}

	public void setRegion_str(String region_str) {
		this.region_str = region_str;
	}

	public int getQuest_no() {
		return quest_no;
	}

	public void setQuest_no(int quest_no) {
		this.quest_no = quest_no;
	}

	public int getRegion_no() {
		return region_no;
	}

	public void setRegion_no(int region_no) {
		this.region_no = region_no;
	}

	public int getQuest_seq() {
		return quest_seq;
	}

	public void setQuest_seq(int quest_seq) {
		this.quest_seq = quest_seq;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public String getTag_str() {
		return tag_str;
	}

	public void setTag_str(String tag_str) {
		this.tag_str = tag_str;
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

	public int getQuest_clear() {
		return quest_clear;
	}

	public void setQuest_clear(int quest_clear) {
		this.quest_clear = quest_clear;
	}

	public String getQuest_nm() {
		return quest_nm;
	}

	public void setQuest_nm(String quest_nm) {
		this.quest_nm = quest_nm;
	}

	public String getAuth() {
		return auth;
	}

	public void setAuth(String auth) {
		this.auth = auth;
	}

	public int getLevel() {
		return level;
	}

	public void setLevel(int level) {
		this.level = level;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public int getPoint() {
		return point;
	}

	public void setPoint(int point) {
		this.point = point;
	}

	public boolean isArchive_yn() {
		return archive_yn;
	}

	public void setArchive_yn(boolean archive_yn) {
		this.archive_yn = archive_yn;
	}

	public String getInput_dt() {
		return input_dt;
	}

	public void setInput_dt(String input_dt) {
		this.input_dt = input_dt;
	}

	public Date getTime_stamp() {
		return time_stamp;
	}

	public void setTime_stamp(Date time_stamp) {
		this.time_stamp = time_stamp;
	}

}
