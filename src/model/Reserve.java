package model;

public class Reserve {
		private long startTime;
		private long endTime;
		private String teacherName;
		private String className;
		private String placeName;
		private int reserveId;
		public void Print(){
			System.out.println(teacherName+" "+className+" "+placeName+" "+startTime+" "+endTime+" "+reserveId);
		}
		public long getStartTime() {
			return startTime;
		}
		public void setStartTime(long startTime) {
			this.startTime = startTime;
		}
		public long getEndTime() {
			return endTime;
		}
		public void setEndTime(long endTime) {
			this.endTime = endTime;
		}
		public String getTeacherName() {
			return teacherName;
		}
		public void setTeacherName(String teacherName) {
			this.teacherName = teacherName;
		}
		public String getClassName() {
			return className;
		}
		public void setClassName(String className) {
			this.className = className;
		}
		public String getPlaceName() {
			return placeName;
		}
		public void setPlaceName(String placeName) {
			this.placeName = placeName;
		}
		public int getReserveId() {
			return reserveId;
		}
		public void setReserveId(int reserveId) {
			this.reserveId = reserveId;
		}
		
	
	
}
