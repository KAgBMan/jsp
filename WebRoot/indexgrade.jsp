<%@ page language="java"  import="java.util.*,java.sql.*" pageEncoding="gb2312"%>
<html>
  <head>
<%
Connection con=null;
Statement stm=null;
ResultSet rs=null;
try{
Class.forName("com.mysql.jdbc.Driver");
}catch(Exception e){
 out.print(e);
}
try{
String URI="jdbc:mysql://localhost/student";
con=DriverManager.getConnection(URI,"root","root");
stm=con.createStatement();
rs=stm.executeQuery("select *from physical_data");
}catch(SQLException e){
out.print(e);
}
 %>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
	<link rel="stylesheet" type="text/css" href="easyui/themes/default/easyui.css"/>
	<link rel="stylesheet" type="text/css" href="easyui/themes/icon.css"/>
	<script type="text/javascript" src="easyui/jquery.min.js"></script>
	<script type="text/javascript" src="easyui/locale/easyui-lang-zh_CN.js"></script>
	<script type="text/javascript" src="easyui/jquery.easyui.min.js"></script>
<script language="javascript">
	function printme(){
	document.body.innerHTML=document.getElementById('div').innerHTML;
	window.print();
	}
	
</script>
</head>
 <body  background="Imgsrc/123.jpg"  >
  <input id="Button1" type="button" value="��ӡ" 
        onclick="javascript:printme()" />
  <input id="Button1" type="button" value="������ҳ" 
        onclick="window.location.href='Firstpage.jsp'" />
    <input id="Button1" type="button" value="����excel" 
        onclick="window.location.href='indexgrade1.jsp?exportToExcel=YES'" />
    
  </body>
  <center>
<div id="div"> 
<table id="tt" class="easyui-datagrid" data-options="pageSize:30" style="width:1350;height:auto;">  
    <thead> 
        <tr>  
            <th data-options="field:'stunumber',width:100">ѧ          ��</th>  
             <th data-options="field:'classid',width:100">��  ��</th> 
            <th data-options="field:'name',width:100">��          ��</th>  
            <th data-options="field:'class',width:100">��          ��</th>  
            <th data-options="field:'sex',width:50">��          ��</th>  
            <th data-options="field:'sources',width:100">��  ��  ��</th>  
             <th data-options="field:'birthday',width:100">�ܲ�50��</th>  
            <th data-options="field:'stureo',width:100">������Զ</th>  
            <th data-options="field:'perid',width:150">��λ��ǰ��</th>  
            <th data-options="field:'adress',width:150">��800��/1000��</th>
            <th data-options="field:'adress',width:250">��������/��������ÿ��</th>  
        </tr>                            
    </thead>                             
    <tbody>    
    <% 
while(rs.next()){

%> 
     <tr>                             
<td><%=rs.getString("stunumber")%></td>
<td><%=rs.getString("classname")%></td>
<td ><%=rs.getString("name")%></td>
<td ><%=rs.getString("height")%></td>
<td ><%=rs.getString("weight")%></td>
<td ><%=rs.getString("VitalCapacity")%></td>
<td ><%=rs.getString("run50")%></td>
<td ><%=rs.getString("StandJump")%></td>
<td ><%=rs.getString("SitReach")%></td>
<td ><%=rs.getString("run800or1000")%></td> 
<td ><%=rs.getString("situporChinning")%></td>  
    </tr>  
    <%
}
%>
  </tbody> 
<%con.close();%>                                                               
                              
</table>
</div>  
</center>
</html>