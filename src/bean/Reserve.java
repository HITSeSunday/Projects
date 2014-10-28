package bean;

public class Reserve {
	private long StartTime;
	private long EndTime;
	private String TeacherName;
	private String ClassName;
	private String Place;
	private int reserveid;
	public int getReserveid() {
		return reserveid;
	}
	public void setReserveid(int reserveid) {
		this.reserveid = reserveid;
	}
	public void Print(){
		System.out.println(TeacherName+" "+ClassName+" "+Place+" "+StartTime+" "+EndTime);
	}
	public void setStartTime(long _StartTime) {
		this.StartTime = _StartTime;
	}

	public void setEndTime(long _EndTime) {
		this.EndTime = _EndTime;
	}

	public void setTeacherName(String _Tea) {
		this.TeacherName = _Tea;
	}

	public void setClassName(String _Class) {
		this.ClassName = _Class;
	}

	public void setPlace(String _Place) {
		this.Place = _Place;
	}

	public long getStartTime() {
		return this.StartTime;
	}

	public long getEndTime() {
		return this.EndTime;
	}

	public String getTeacherName() {
		return this.TeacherName;
	}

	public String getClassName() {
		return this.ClassName;
	}

	public String getPlace() {
		return this.Place;
	}

}
