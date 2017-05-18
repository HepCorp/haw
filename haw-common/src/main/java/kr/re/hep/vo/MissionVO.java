package kr.re.hep.vo;

import java.util.Date;

public class MissionVO {

	private int mission_no;
	private int quest_no;
	private int mission_seq;
	private String type;
	private String tag_str;
	private int level;
	private String from;
	private String mission;
	private String answer;
	private String attach;
	private String attach_img;
	private String url;
	private Date limit_time;
	private int point;
	private boolean archive_yn;
	private Date input_dt;
	private Date time_stamp;
	
	private String quest_str;

	public MissionVO() {
		super();
		// TODO Auto-generated constructor stub
	}

	public MissionVO(int mission_no, int quest_no, int mission_seq, String type, String tag_str, int level, String from,
			String mission, String answer, String attach, String attach_img, String url, Date limit_time, int point,
			boolean archive_yn, Date input_dt, Date time_stamp, String quest_str) {
		super();
		this.mission_no = mission_no;
		this.quest_no = quest_no;
		this.mission_seq = mission_seq;
		this.type = type;
		this.tag_str = tag_str;
		this.level = level;
		this.from = from;
		this.mission = mission;
		this.answer = answer;
		this.attach = attach;
		this.attach_img = attach_img;
		this.url = url;
		this.limit_time = limit_time;
		this.point = point;
		this.archive_yn = archive_yn;
		this.input_dt = input_dt;
		this.time_stamp = time_stamp;
		this.quest_str = quest_str;
	}

	public String getQuest_str() {
		return quest_str;
	}

	public void setQuest_str(String quest_str) {
		this.quest_str = quest_str;
	}

	public int getMission_no() {
		return mission_no;
	}

	public void setMission_no(int mission_no) {
		this.mission_no = mission_no;
	}

	public int getQuest_no() {
		return quest_no;
	}

	public void setQuest_no(int quest_no) {
		this.quest_no = quest_no;
	}

	public int getMission_seq() {
		return mission_seq;
	}

	public void setMission_seq(int mission_seq) {
		this.mission_seq = mission_seq;
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

	public int getLevel() {
		return level;
	}

	public void setLevel(int level) {
		this.level = level;
	}

	public String getFrom() {
		return from;
	}

	public void setFrom(String from) {
		this.from = from;
	}

	public String getMission() {
		return mission;
	}

	public void setMission(String mission) {
		this.mission = mission;
	}

	public String getAnswer() {
		return answer;
	}

	public void setAnswer(String answer) {
		this.answer = answer;
	}

	public String getAttach() {
		return attach;
	}

	public void setAttach(String attach) {
		this.attach = attach;
	}

	public String getAttach_img() {
		return attach_img;
	}

	public void setAttach_img(String attach_img) {
		this.attach_img = attach_img;
	}

	public String getUrl() {
		return url;
	}

	public void setUrl(String url) {
		this.url = url;
	}

	public Date getLimit_time() {
		return limit_time;
	}

	public void setLimit_time(Date limit_time) {
		this.limit_time = limit_time;
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
		return "MissionVO [mission_no=" + mission_no + ", quest_no=" + quest_no + ", mission_seq=" + mission_seq
				+ ", type=" + type + ", tag_str=" + tag_str + ", level=" + level + ", from=" + from + ", mission="
				+ mission + ", answer=" + answer + ", attach=" + attach + ", attach_img=" + attach_img + ", url=" + url
				+ ", limit_time=" + limit_time + ", point=" + point + ", archive_yn=" + archive_yn + ", input_dt="
				+ input_dt + ", time_stamp=" + time_stamp + "]";
	}

}
