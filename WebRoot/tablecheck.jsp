<%@ page contentType="text/html;charset=gb2312" language="java"  import="java.util.*,java.sql.*" %>
<html>
 <head>
<center>
 <body   background="Imgsrc/2.jpg" >
  </body>
<form name="form1" method="post" action="checkresult.jsp">
<TABLE border="1"  align="center" width="408" height="182">
    <TR>
      <TD colspan="2" align="center"><font size="6"><strong><font face="����">�༶�����ɼ���ѯ</font></strong></font></TD>
    </TR>
    <TR>
      <TD>ѡ��Ҫ��Ѱ�ؼ��֣�</TD>
      <TD><SELECT name="selname">
        <OPTION>--��ѡ�����--</OPTION>
        <OPTION value="name">����</OPTION>
        <OPTION value="stunumber">ѧ��</OPTION>
        <OPTION value="classname">�༶</OPTION>
      </SELECT></TD>
    </TR> 
    <TR>
      <TD>����Ҫ��Ѱ�ؼ��֣�</TD>
      <TD><input type="text" name="keyname" value=""></TD>
    </TR> 
    <tr>
    <td><div align="center"><input type="submit" name="g" value="��ѯ"></td>
    <td><div align="center"><input type="reset" name="b" value="ȡ��"></td>
    </tr>
  </TABLE>                                                                    
</form>
 </center>
  </head>
</html>