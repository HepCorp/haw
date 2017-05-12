package kr.re.hep.vo;

import java.util.Date;

public class RegionVO {

	private int region_no;
	private String city_serial;
	private String region_nm;
	private Date input_dt;
	private Date time_stamp;

	public RegionVO() {
		super();
		// TODO Auto-generated constructor stub
	}

	public RegionVO(int region_no, String city_serial, String region_nm, Date input_dt, Date time_stamp) {
		super();
		this.region_no = region_no;
		this.city_serial = city_serial;
		this.region_nm = region_nm;
		this.input_dt = input_dt;
		this.time_stamp = time_stamp;
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
		return "RegionVO [region_no=" + region_no + ", city_serial=" + city_serial + ", region_nm=" + region_nm
				+ ", input_dt=" + input_dt + ", time_stamp=" + time_stamp + "]";
	}

}
