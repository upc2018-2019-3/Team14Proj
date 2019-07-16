<%@ page language="java" import="java.util.*" contentType="text/html;charset=gb2312"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML>
<HEAD>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link rel="stylesheet" href="<%=basePath %>images/css/bootstrap.css" />
<link rel="stylesheet" href="<%=basePath %>images/css/css.css" />
<script type="text/javascript" src="<%=basePath %>images/js/jquery1.9.0.min.js"></script>
<script type="text/javascript" src="<%=basePath %>images/js/bootstrap.min.js"></script>
<script type="text/javascript" src="<%=basePath %>images/js/sdmenu.js"></script>
<script type="text/javascript" src="<%=basePath %>images/js/laydate/laydate.js"></script>
</HEAD>
<%
	String username=(String)session.getAttribute("user");  String sf=(String)session.getAttribute("sf");  
	if(username==null){
		response.sendRedirect(path+"index.jsp");
	}
	else{ 
%>
<body>
<div class="left">
     
<script type="text/javascript">
var myMenu;
window.onload = function() {
	myMenu = new SDMenu("my_menu");
	myMenu.init();
};
</script>

<div id="my_menu" class="sdmenu">

	<div class="collapsed">
		<span>密码信息管理</span>
		<a href="<%=basePath %>admin/system/editpwd.jsp" target="MainFrame">密码信息管理</a> 
	</div>
	<%if(sf.equals("系统管理员")){ %>  
	<div class="collapsed">
		<span>普通职工管理</span>
		<a href="<%=basePath %>admin/xs/index.jsp" target="MainFrame">普通职工名单</a> 
		<a href="<%=basePath %>admin/xs/add.jsp?method=addxs" target="MainFrame">增加普通职工</a>  
		<a href="<%=basePath %>admin/xs/s.jsp" target="MainFrame">普通职工查询</a> 
	</div> 
	
	<div class="collapsed">
		<span>部门经理管理</span>
		<a href="<%=basePath %>admin/system/index.jsp" target="MainFrame">部门经理名单</a> 
		<a href="<%=basePath %>admin/system/add.jsp?method=addm" target="MainFrame">增加部门经理</a> 
		 <a href="<%=basePath %>admin/system/s.jsp" target="MainFrame">部门经理查询</a>  
	</div>
	
	<div class="collapsed">
		<span>财务人员管理</span>
		<a href="<%=basePath %>admin/jys/index.jsp" target="MainFrame">财务人员名单</a> 
		<a href="<%=basePath %>admin/jys/add.jsp?method=addjys" target="MainFrame">增加财务人员</a> 
		 <a href="<%=basePath %>admin/jys/s.jsp" target="MainFrame">财务人员查询</a>  
	</div> 
		
	
	<%}else if(sf.equals("财务人员")){ %> 
	<div class="collapsed">
		<span>申请单管理</span>
		<a href="<%=basePath %>admin/xm/index5.jsp" target="MainFrame">待审批申请单目录</a>   
		<a href="<%=basePath %>admin/xm/index55.jsp" target="MainFrame">已审批申请单目录</a>  
		  <a href="<%=basePath %>admin/xm/pj.jsp" target="MainFrame">待支付申请单目录</a> 
		  <a href="<%=basePath %>admin/xm/pj2.jsp" target="MainFrame">已支付申请单目录</a> 
		 <a href="<%=basePath %>admin/xm/s5.jsp" target="MainFrame">申请单查询</a>  
		
	</div>
	
	<%}else if(sf.equals("部门经理")){ %> 
	<div class="collapsed">
		<span>申请单管理</span>
		<a href="<%=basePath %>admin/xm/index2.jsp" target="MainFrame">待审批申请单目录</a>  
		<a href="<%=basePath %>admin/xm/index22.jsp" target="MainFrame">已审批申请单目录</a>  
		 <a href="<%=basePath %>admin/xm/s2.jsp" target="MainFrame">申请单查询</a>  
	</div>
	
	<%}else if(sf.equals("普通职工")){ %> 
	<div class="collapsed">
		<span>申请单管理</span>
		<a href="<%=basePath %>admin/xm/index.jsp" target="MainFrame">申请单目录</a>  
		<a href="<%=basePath %>admin/xm/indexx.jsp" target="MainFrame">未通过审批申请单目录</a>  
		<a href="<%=basePath %>admin/xm/indexxx.jsp" target="MainFrame">已支付申请单目录</a>  
		<a href="<%=basePath %>admin/xm/add.jsp?method=addxm" target="MainFrame">填写申请单</a> 
		 <a href="<%=basePath %>admin/xm/s.jsp" target="MainFrame">申请单查询</a>  
	</div>
	<%} %> 
 
</div>
     </div>
     <div class="Switch"></div>
     <script type="text/javascript">
	$(document).ready(function(e) {
    $(".Switch").click(function(){
	$(".left").toggle();
	 
		});
});
</script> 
</body>
<%} %>

</html>
