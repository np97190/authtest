<%@page import="org.apache.commons.lang3.StringUtils"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>IOORA::WebApp</title>
    <style>
        body {
            margin: 0;
            font-family: "Helvetica Neue", Helvetica, Arial, sans-serif;
            font-size: 14px;
            line-height: 20px;
            color: #333333;
            background-color: #ffffff;
        }

        #login-wrapper {
            margin: 0 0 0 -160px;
            width: 500px;
            text-align: center;
            z-index: 99;
            position: absolute;
            top: 0;
            left: 50%;
        }

        #login-content {
            margin-top: 120px;
            border: solid 1px #ccc;
            -moz-border-radius: 8px;
            -webkit-border-radius: 8px;
            border-radius: 8px;
            padding-left: 15px;
            padding-right: 15px;
            padding-top: 15px;
            background:#f1f1f1;
        }
        .error h3{
        padding:5px;
        }

        label {
            width: 70px;
            float: left;
            padding: 8px;
            line-height: 14px;
            margin-top: -4px;
            text-align:left;
        }

        input.text-input {
            width: 340px;
            float: right;
            -moz-border-radius: 4px;
            -webkit-border-radius: 4px;
            border-radius: 4px;
            background: #fff;
            border: solid 1px #ccc;
            color: #555;
            padding: 8px;
            font-size: 13px;
            margin-bottom:10px;
        }

        input.button {
            padding: 6px 10px;
            color: #fff;
            font-size: 14px;
            background: -webkit-gradient(linear, 0% 0%, 0% 100%, from(#a4d04a), to(#459300));
            text-shadow: #050505 0 -1px 0;
            background-color: #459300;
            -moz-border-radius: 4px;
            -webkit-border-radius: 4px;
            border-radius: 4px;
            border: solid 1px transparent;
            font-weight: bold;
            cursor: pointer;
            letter-spacing: 1px;
        }

        input.button:hover {
            background: -webkit-gradient(linear, 0% 0%, 0% 100%, from(#a4d04a), to(#a4d04a), color-stop(80%, #76b226));
            text-shadow: #050505 0 -1px 2px;
            background-color: #a4d04a;
            color: #fff;
        }

        div.error {
            padding: 0px;
            background:#fff;
            -moz-border-radius: 8px;
            -webkit-border-radius: 8px;
            border-radius: 8px;
            border: solid 1px transparent;
            margin: 6px 0;
            color:#ff0000;
        }
    </style>
</head>
<body id="login">

	<div id="login-wrapper">

		<div id="login-content">
			<%
				String message = request.getParameter("message");
				if (!StringUtils.isEmpty(message)) {
			%>
			<div class="error">
				<h3><%=message%></h3>
			</div>
			<%
				}
			%>
			<form action="j_security_check" method="POST">
				<p>
					<label for="j_username">UserName</label> <input value=""
						name="j_username" id="j_username" class="text-input" type="text" />
				</p>
				<br style="color: both;">

				<p>
					<label for="j_password">Password</label> <input name="j_password"
						id="j_password" class="text-input" type="password" />
				</p>
				<br style="clear: both;" />

				<p>
					<input class="button" type="submit" value="Sign In" />
				</p>
			</form>
		</div>
	</div>
</body>
</html>