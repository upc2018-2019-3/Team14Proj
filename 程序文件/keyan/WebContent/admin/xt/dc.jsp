<%@ page language="java" import="java.util.*"  contentType="text/html;charset=gb2312"%> 
<jsp:useBean id="cb" scope="page" class="com.bean.ComBean" />
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link rel="stylesheet" href="<%=basePath %>images/css/bootstrap.css" />
<link rel="stylesheet" href="<%=basePath %>images/css/css.css" />
<script type="text/javascript" src="<%=basePath %>images/js/jquery1.9.0.min.js"></script>
<script type="text/javascript" src="<%=basePath %>images/js/bootstrap.min.js"></script>
<script type="text/javascript" src="<%=basePath %>images/js/sdmenu.js"></script>
<script type="text/javascript" src="<%=basePath %>images/js/laydate/laydate.js"></script>
</head> 
<script  language="javascript" >
function top2(){
   	form3.action="<%=basePath%>admin/xt/dc.jsp?page=1";
    form3.submit();
}
function last2(){
    if(form3.pageCount.value==0){//�����ҳ��Ϊ0����ô���һҳΪ1��Ҳ���ǵ�һҳ�������ǵ�0ҳ
    form3.action="<%=basePath%>admin/xt/dc.jsp?page=1";
    form3.submit();
	}else{
	form3.action="<%=basePath%>admin/xt/dc.jsp?page="+form3.pageCount.value;
    	form3.submit();
	}
}
function pre2(){
  var page=parseInt(form3.page.value);
  if(page<=1){
    alert("������һҳ");
  }else{
    form3.action="<%=basePath%>admin/xt/dc.jsp?page="+(page-1);
    form3.submit();
  }
}

function next2(){
  var page=parseInt(form3.page.value);
  var pageCount=parseInt(form3.pageCount.value);
  if(page>=pageCount){
    alert("�������һҳ");
  }else{
    form3.action="<%=basePath%>admin/mb/index.jsp?page="+(page+1);
    form3.submit();
  }
}
function bjump2(){
  	var pageCount=parseInt(form3.pageCount.value);
  	if( fIsNumber(form3.busjump.value,"1234567890")!=1 ){
		alert("��ת�ı�����ֻ����������!");
		form3.busjump.select();
		form3.busjump.focus();
		return false;
	}
	if(form3.busjump.value>pageCount){//�����ת�ı����������ҳ���������һҳ���������������һҳ
	  if(pageCount==0){	
	  form3.action="<%=basePath%>admin/xt/dc.jsp?page=1";
	  form3.submit();
	}
	else{
		form3.action="<%=basePath%>admin/xt/dc.jsp?page="+pageCount;
		form3.submit();
	}
}
else if(form3.busjump.value<=pageCount){
var page=parseInt(form3.busjump.value);
   if(page==0){
      page=1;//������������0����ô����������1
      form3.action="<%=basePath%>admin/xt/dc.jsp?page="+page;
      form3.submit();
   }else{
      form3.action="<%=basePath%>admin/xt/dc.jsp?page="+page;
      form3.submit();
   }

}

}
//****�ж��Ƿ���Number.
function fIsNumber (sV,sR){
var sTmp;
if(sV.length==0){ return (false);}
for (var i=0; i < sV.length; i++){
sTmp= sV.substring (i, i+1);
if (sR.indexOf (sTmp, 0)==-1) {return (false);}
}
return (true);
}
function del()
{
	pageform.submit();
}
</script>
<script language="JavaScript" type="text/javascript">  
var idTmr;  
function  getExplorer() {  
    var explorer = window.navigator.userAgent ;  
    //ie  
    if (explorer.indexOf("MSIE") >= 0) {  
        return 'ie';  
    }  
    //firefox  
    else if (explorer.indexOf("Firefox") >= 0) {  
        return 'Firefox';  
    }  
    //Chrome  
    else if(explorer.indexOf("Chrome") >= 0){  
        return 'Chrome';  
    }  
    //Opera  
    else if(explorer.indexOf("Opera") >= 0){  
        return 'Opera';  
    }  
    //Safari  
    else if(explorer.indexOf("Safari") >= 0){  
        return 'Safari';  
    }  
}  
function method5(tableid) {  
    if(getExplorer()=='ie')  
    {  
        var curTbl = document.getElementById(tableid);  
        var oXL = new ActiveXObject("Excel.Application");  
        var oWB = oXL.Workbooks.Add();  
        var xlsheet = oWB.Worksheets(1);  
        var sel = document.body.createTextRange();  
        sel.moveToElementText(curTbl);  
        sel.select();  
        sel.execCommand("Copy");  
        xlsheet.Paste();  
        oXL.Visible = true;  

        try {  
            var fname = oXL.Application.GetSaveAsFilename("Excel.xls", "Excel Spreadsheets (*.xls), *.xls");  
        } catch (e) {  
            print("Nested catch caught " + e);  
        } finally {  
            oWB.SaveAs(fname);  
            oWB.Close(savechanges = false);  
            oXL.Quit();  
            oXL = null;  
            idTmr = window.setInterval("Cleanup();", 1);  
        }  

    }  
    else  
    {  
        tableToExcel(tableid)  
    }  
}  
function Cleanup() {  
    window.clearInterval(idTmr);  
    CollectGarbage();  
}  
var tableToExcel = (function() {  
    var uri = 'data:application/vnd.ms-excel;base64,',  
            template = '<html><head><meta charset="UTF-8"></head><body><table>{table}</table></body></html>',  
            base64 = function(s) { return window.btoa(unescape(encodeURIComponent(s))) },  
            format = function(s, c) {  
                return s.replace(/{(\w+)}/g,  
                        function(m, p) { return c[p]; }) }  
    return function(table, name) {  
        if (!table.nodeType) table = document.getElementById(table)  
        var ctx = {worksheet: name || 'Worksheet', table: table.innerHTML}  
        window.location.href = uri + base64(format(template, ctx))  
    }  
})()  
</script>
<%
String message = (String)request.getAttribute("message");
	if(message == null){
		message = "";
	}
	if (!message.trim().equals("")){
		out.println("<script language='javascript'>");
		out.println("alert('"+message+"');");
		out.println("</script>");
	}
	request.removeAttribute("message"); 
	
	String username=(String)session.getAttribute("user");  
	if(username==null){
		response.sendRedirect(path+"index.jsp");
	}
	else{  
%>
<body>
<div class="right_cont">
<div class="title_right"><strong>���ݵ�������</strong></div>  
<div style="width:100%;margin:auto;">
<form action="" method="post" name="form3">	
<div id="myDiv">  
<table id="tableExcel" class="table table-bordered table-striped table-hover">
     <tbody>
       <tr align="center">
         <td nowrap="nowrap"><strong>���</strong></td>
         <td nowrap="nowrap"><strong>��Ŀ���</strong></td> 
         <td nowrap="nowrap"><strong>��Ŀ����</strong></td> 
         <td nowrap="nowrap"><strong>������</strong></td> 
         <td nowrap="nowrap"><strong>���</strong></td>
         <td nowrap="nowrap"><strong>ѧ��</strong></td>
         <td nowrap="nowrap"><strong>Ԥ��</strong></td>
         <td nowrap="nowrap"><strong>��ʼʱ��</strong></td>
         <td nowrap="nowrap"><strong>����ʱ��</strong></td>
         <td nowrap="nowrap"><strong>����</strong></td>
         <td nowrap="nowrap"><strong>�����û�</strong></td>
         <td nowrap="nowrap"><strong>��λ</strong></td>
         <td nowrap="nowrap"><strong>����ʱ��</strong></td>
         <td nowrap="nowrap"><strong>���</strong></td>
         <td nowrap="nowrap"><strong>���</strong></td>
         <td nowrap="nowrap"><strong>�м����</strong></td>
         <td nowrap="nowrap"><strong>�ս����</strong></td> 
         <td nowrap="nowrap"><strong>����</strong></td> 
       </tr>
<%   
	 
	List pagelist3 = cb.getCom("select * from xm order by id desc",18); 
		if(!pagelist3.isEmpty()){
		for(int i=0;i<pagelist3.size();i++){
			List pagelist2 =(ArrayList)pagelist3.get(i);
%>       
       <tr align="center">
         <td nowrap="nowrap"><%=i+1 %></td>
         <td nowrap="nowrap"><%=pagelist2.get(1).toString() %></td>  
         <td nowrap="nowrap"><%=pagelist2.get(2).toString() %></td>    
         <td nowrap="nowrap"><%=pagelist2.get(3).toString() %></td>  
         <td nowrap="nowrap"><%=pagelist2.get(4).toString() %></td>  
         <td nowrap="nowrap"><%=pagelist2.get(5).toString() %></td>  
         <td nowrap="nowrap"><%=pagelist2.get(6).toString() %></td>  
         <td nowrap="nowrap"><%=pagelist2.get(7).toString() %></td>  
         <td nowrap="nowrap"><%=pagelist2.get(8).toString() %></td>  
         <td nowrap="nowrap"><a href="<%=basePath%>down.jsp?url=<%=pagelist2.get(9).toString()%>">����</a></td>   
         <td nowrap="nowrap"><%=pagelist2.get(10).toString() %></td>  
         <td nowrap="nowrap"><%=pagelist2.get(11).toString() %></td>  
         <td nowrap="nowrap"><%=pagelist2.get(12).toString() %></td>  
         <td nowrap="nowrap"><%=pagelist2.get(13).toString() %></td>  
         <td nowrap="nowrap"><%=pagelist2.get(14).toString() %></td> 
         <td nowrap="nowrap"><%=pagelist2.get(15).toString() %></td> 
         <td nowrap="nowrap"><%=pagelist2.get(16).toString() %></td>  
         <td nowrap="nowrap"><%=pagelist2.get(17).toString() %></td>  
       </tr>
<% }} %>
        
     </tbody>
   </table>
   </div>
   </form>
   </div>  
 </div>  <center><button type="button" onclick="method5('tableExcel')">����Excel</button>  </center>
</body>
<%} %>
