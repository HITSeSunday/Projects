package model;

public class Reserve implements Comparable<Reserve>{
		private String startTime;
		private String endTime;
		private String teacherName;
		private String date;
		private String ssname;
		private int teacherId;
		private int reserveId;
		private int ss;
		public int compareTo(Reserve a){
			return -this.getStartTime().compareTo(a.getStartTime());
		}
		public int getSs() {
			return ss;
		}
		public int getTeacherId() {
			return teacherId;
		}
		public void setTeacherId(int teacherId) {
			this.teacherId = teacherId;
		}
		public void setSs(int ss) {
			this.ss = ss;
		}
		public void Print(){
			System.out.println(teacherName+startTime+" "+endTime+" "+reserveId+"  "+ssname);
		}
		public String getDate() {
			return date;
		}
		public void setDate(String date) {
			this.date = date;
		}
		public String getSsname() {
			return ssname;
		}
		public void setSsname(String ssname) {
			this.ssname = ssname;
		}
		public String getStartTime() {
			return startTime;
		}
		public void setStartTime(String startTime) {
			this.startTime = startTime;
		}
		public String getEndTime() {
			return endTime;
		}
		public void setEndTime(String endTime) {
			this.endTime = endTime;
		}
		public String getTeacherName() {
			return teacherName;
		}
		public void setTeacherName(String teacherName) {
			this.teacherName = teacherName;
		}
		public int getReserveId() {
			return reserveId;
		}
		public void setReserveId(int reserveId) {
			this.reserveId = reserveId;
		}
		
	
	
}
