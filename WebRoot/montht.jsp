<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@taglib uri="/struts-tags" prefix="s" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>calendar</title>
<link type="text/css" href="<%=basePath %>css/calendar.css" rel="stylesheet" />
<script type="text/javascript" src="<%=basePath %>js/jquery-1.7.min.js"></script> 
<script type="text/javascript"> 

//日历——————————————————————————————————————————
$(function() {
	
	//绘制月历体——————————————————————————————————————————
	
	 for(var i=0;i<42;i++){
	 $("<li><span></span></li>").appendTo(".month-body").addClass("month-cell"); 
	 }

	  var today=new Date()  
	  
	  var FullYear = today.getFullYear(); //获取年份
	  var m = today.getMonth();           //获取月号
	  var month = today.getMonth()+1;     //获取月份
	  
	  if(month<10){
		 month="0"+month; 
	  }
	  var date = today.getDate();	      //获取日期
	  var day = today.getDay();           //获取星期
	  
	  var monthsNum=[31,28,31,30,31,30,31,31,30,31,30,31];
	  var isleapyear = FullYear%4;        //判断闰年
	  if(isleapyear==0){
		  monthsNum[1]=29;
	  }
  
      if(day==0){
		  day = 7;
	  }
	  var firstDay = day-(date%7-1);       //!important 计算月初星期数

	  if(firstDay==7){                     //如果月初为七，归零
		  firstDay =0;
	  }
	  if(firstDay<0){                       //如果月初为负，加七循环
		  firstDay +=7;
	  }
	  if(firstDay>7)
	  {
		  firstDay -=7;
	  }
	  var f = firstDay;
	  for(var j=1;j<=monthsNum[m];j++){
		  $("li.month-cell span").eq(f).text(j).parent().addClass("pink");
		  $("li.month-cell span").eq(f).html("<a href=<%=basePath %>jdbc/viewbyteacher?date="+FullYear+"-"+month+"-"+(f)+"&"+
					"teacherId="+<%=session.getAttribute("teacherId") %>+" target='showframe' style='text-decoration:none'>"+j+"</a>");
	  f++;
	  }
	  
	
		$("li.month-cell span").eq(firstDay-1+date).parent().addClass("yellow");	
	  
	  $(".month-head span").text(FullYear+"年"+month+"月");
	  
})

</script>
</head>
<body>
<div class="month-container" style="top:0px;">
      <div class="month-head"><span></span></div>
      <ul class="month-body">
      <div class="month-cell orange"><span>日</span></div>    
      <div class="month-cell blue"><span>一</span></div>
      <div class="month-cell blue"><span>二</span></div>
      <div class="month-cell blue"><span>三</span></div>
      <div class="month-cell blue"><span>四</span></div>     
      <div class="month-cell blue"><span>五</span></div>      
      <div class="month-cell blue"><span>六</span></div>
      </ul>
      <div class="clear"></div>
</div>

<input type="hidden" id="1" value=<s:property value="list[1]"/> >
<input type="hidden" id="2" value=<s:property value="list[2]"/> >
<input type="hidden" id="3" value=<s:property value="list[3]"/> >
<input type="hidden" id="4" value=<s:property value="list[4]"/> >
<input type="hidden" id="5" value=<s:property value="list[5]"/> >
<input type="hidden" id="6" value=<s:property value="list[6]"/> >
<input type="hidden" id="7" value=<s:property value="list[7]"/> >
<input type="hidden" id="8" value=<s:property value="list[8]"/> >
<input type="hidden" id="9" value=<s:property value="list[9]"/> >

<script>
	var a=document.getElementById("1").value;
	if(a==0){}
	else
	$(function() {$("li.month-cell span").eq(a).parent().addClass("red");	})
	 
</script>
<script>
	var b=document.getElementById("2").value;
	if(b==0){}
	else
	$(function() {$("li.month-cell span").eq(b).parent().addClass("red");	})
</script>
<script>
	var c=document.getElementById("3").value;
	if(c==0){}
	else
	$(function() {$("li.month-cell span").eq(c).parent().addClass("red");	})
</script>
<script>
	var d=document.getElementById("4").value;
	if(d==0){}
	else
	$(function() {$("li.month-cell span").eq(d).parent().addClass("red");	})
</script>
<script>
	var e=document.getElementById("5").value;
	if(e==0){}
	else
	$(function() {$("li.month-cell span").eq(e).parent().addClass("red");	})
</script>
<script>
	var f=document.getElementById("6").value;
	if(f==0)
		{
		
		}
	else
	$(function() {$("li.month-cell span").eq(f).parent().addClass("red");	})
</script>

<script>
	var g=document.getElementById("7").value;
	if(g==0){}
	else
	$(function() {$("li.month-cell span").eq(g).parent().addClass("red");	})
</script>
<script>
	var h=document.getElementById("8").value;
	if(h==0){}
	else
	$(function() {$("li.month-cell span").eq(h).parent().addClass("red");	})
</script>
<script>
	var i=document.getElementById("9").value;
	if(i==0){}
	else
	$(function() {$("li.month-cell span").eq(i).parent().addClass("red");	})
</script>

</body>
</html>