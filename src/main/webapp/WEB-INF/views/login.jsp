<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
	
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Online Bank</title>
</head>

<script>
function validateform() {  
	var username=document.myform.userName.value;  
	var password=document.myform.password.value;  
	if (username==null || username==""){   
		  alert("UserName can't be blank");  
	  return false;  
	} 
	if(password==null || password==""){
	 	 alert("Password can't be blank");  
	  return false;  
	}  
}  
</script>

<body>
	<form name="myform" method="get" action="loginUser">
		<table width="100%">
				<marquee>
					<h2>
						<font color="Purple">Online Banking</font>
					</h2>
				</marquee>
		</table>
		
		<table>
			<th width="50%" scope="col">
		
				<table width="50%" border="0" align="center" cellpadding="2" cellspacing="2" style="border: #000000 solid 2px; padding: 5px;">
					<tr>
						<th colspan="3" bgcolor="Yellow" scope="col">
							<font color="Red">Customer Login</font>
						</th>
					</tr>
					
					<center>
							<c:if test="${not empty errorMessage}">
								<h4>${errorMessage}</h4>
							</c:if>
					</center>
					
					<tr>
						<td width="24%">User Name:</td>
						<td width="48%"><label> <input type="text" name="userName"/></label></td>
					</tr>
					<tr>
						<td width="24%">Password:</td>
						<td width="48%"><label> <input type="password"  name="password"/></label></td>
					</tr>
					<tr>
						<td>&nbsp;</td>
						<td><label> <input type="submit" value="Submit" onclick="return validateform()"  /></label></td>
					</tr>
					
					<tr>
						<td colspan="3">Want to Create a New Account? <a href="register.jsp">Click Here</a></td>
					</tr>
				</table>
		</table>
</body>