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
		<span>������Ϣ����</span>
		<a href="<%=basePath %>admin/system/editpwd.jsp" target="MainFrame">������Ϣ����</a> 
	</div>
	<%if(sf.equals("ϵͳ����Ա")){ %>  
	<div class="collapsed">
		<span>��ְͨ������</span>
		<a href="<%=basePath %>admin/xs/index.jsp" target="MainFrame">��ְͨ������</a> 
		<a href="<%=basePath %>admin/xs/add.jsp?method=addxs" target="MainFrame">������ְͨ��</a>  
		<a href="<%=basePath %>admin/xs/s.jsp" target="MainFrame">��ְͨ����ѯ</a> 
	</div> 
	
	<div class="collapsed">
		<span>���ž������</span>
		<a href="<%=basePath %>admin/system/index.jsp" target="MainFrame">���ž�������</a> 
		<a href="<%=basePath %>admin/system/add.jsp?method=addm" target="MainFrame">���Ӳ��ž���</a> 
		 <a href="<%=basePath %>admin/system/s.jsp" target="MainFrame">���ž����ѯ</a>  
	</div>
	
	<div class="collapsed">
		<span>������Ա����</span>
		<a href="<%=basePath %>admin/jys/index.jsp" target="MainFrame">������Ա����</a> 
		<a href="<%=basePath %>admin/jys/add.jsp?method=addjys" target="MainFrame">���Ӳ�����Ա</a> 
		 <a href="<%=basePath %>admin/jys/s.jsp" target="MainFrame">������Ա��ѯ</a>  
	</div> 
		
	
	<%}else if(sf.equals("������Ա")){ %> 
	<div class="collapsed">
		<span>���뵥����</span>
		<a href="<%=basePath %>admin/xm/index5.jsp" target="MainFrame">���������뵥Ŀ¼</a>   
		<a href="<%=basePath %>admin/xm/index55.jsp" target="MainFrame">���������뵥Ŀ¼</a>  
		  <a href="<%=basePath %>admin/xm/pj.jsp" target="MainFrame">��֧�����뵥Ŀ¼</a> 
		  <a href="<%=basePath %>admin/xm/pj2.jsp" target="MainFrame">��֧�����뵥Ŀ¼</a> 
		 <a href="<%=basePath %>admin/xm/s5.jsp" target="MainFrame">���뵥��ѯ</a>  
		
	</div>
	
	<%}else if(sf.equals("���ž���")){ %> 
	<div class="collapsed">
		<span>���뵥����</span>
		<a href="<%=basePath %>admin/xm/index2.jsp" target="MainFrame">���������뵥Ŀ¼</a>  
		<a href="<%=basePath %>admin/xm/index22.jsp" target="MainFrame">���������뵥Ŀ¼</a>  
		 <a href="<%=basePath %>admin/xm/s2.jsp" target="MainFrame">���뵥��ѯ</a>  
	</div>
	
	<%}else if(sf.equals("��ְͨ��")){ %> 
	<div class="collapsed">
		<span>���뵥����</span>
		<a href="<%=basePath %>admin/xm/index.jsp" target="MainFrame">���뵥Ŀ¼</a>  
		<a href="<%=basePath %>admin/xm/indexx.jsp" target="MainFrame">δͨ���������뵥Ŀ¼</a>  
		<a href="<%=basePath %>admin/xm/indexxx.jsp" target="MainFrame">��֧�����뵥Ŀ¼</a>  
		<a href="<%=basePath %>admin/xm/add.jsp?method=addxm" target="MainFrame">��д���뵥</a> 
		 <a href="<%=basePath %>admin/xm/s.jsp" target="MainFrame">���뵥��ѯ</a>  
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
