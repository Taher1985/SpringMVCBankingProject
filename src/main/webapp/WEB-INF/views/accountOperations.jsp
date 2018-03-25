<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
					<center>
							<c:if test="${not empty message}">
								<h3>${message}</h3>
								
								<% String username = request.getParameter("username");
								session.setAttribute("username",username); %>
								
							</c:if>
					</center>
					
		<table width="200" border="1" align="center" cellpadding="0" cellspacing="0" style="font-weight:normal; background-color:#FFFFFF">
			<tr>
			    <td colspan="3">&nbsp;</td>
			</tr>
			
			<tr>
				<td width="160" >
		  				<center>Account Operations</center>
		  					<ul>
							    <li><a href="account.jsp">Create Account</a></li>
								<li><a href="deposite.jsp">Deposite</a></li>
							    <li><a href="withdraw.jsp">Do Withdraw</a></li>
							    <li><a href="get-balance.jsp">Get Balance</a></li>
								<li><a href="transfer.jsp">Trasnsfer Amount</a></li>
								<li><a href="view-reports.jsp">View Report</a></li>
								<li><a href="logOff.jsp">LogOut</a></li>
							</ul>
		
				</td>
		  	</tr>
		</table>					
</body>
</html>