package kr.re.hep.member;

public class TeamVO {

	private String team;
	private int team_no;
	private String team_nm;
	private int team_tot;
	private int team_cnt;
	private String color;
	private String image;
	private int point;
	private String description;

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public String getTeam() {
		return team;
	}

	public void setTeam(String team) {
		this.team = team;
	}

	public int getTeam_no() {
		return team_no;
	}

	public void setTeam_no(int team_no) {
		this.team_no = team_no;
	}

	public String getTeam_nm() {
		return team_nm;
	}

	public void setTeam_nm(String team_nm) {
		this.team_nm = team_nm;
	}

	public int getTeam_tot() {
		return team_tot;
	}

	public void setTeam_tot(int team_tot) {
		this.team_tot = team_tot;
	}

	public int getTeam_cnt() {
		return team_cnt;
	}

	public void setTeam_cnt(int team_cnt) {
		this.team_cnt = team_cnt;
	}

	public String getColor() {
		return color;
	}

	public void setColor(String color) {
		this.color = color;
	}

	public String getImage() {
		return image;
	}

	public void setImage(String image) {
		this.image = image;
	}

	public int getPoint() {
		return point;
	}

	public void setPoint(int point) {
		this.point = point;
	}

	@Override
	public String toString() {
		return "TeamVO [team=" + team + ", team_no=" + team_no + ", team_nm=" + team_nm + ", team_tot=" + team_tot
				+ ", team_cnt=" + team_cnt + ", color=" + color + ", image=" + image + ", point=" + point
				+ ", description=" + description + "]";
	}


}
