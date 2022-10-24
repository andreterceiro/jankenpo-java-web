<%@ page import = "java.io.*,java.util.*" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Jankenpo</title>
</head>
    <body>
        <%@ include file="templates/game.html" %>

        <%
            final int PAPER = 0;
            final int ROCK = 1;
            final int SCISSORS = 2;

            String userOption = "";
            Enumeration paramNames = request.getParameterNames();
            while(paramNames.hasMoreElements()) {
                String paramName = (String)paramNames.nextElement();
                String paramValue = request.getParameter(paramName);
                if (paramName.equals("option")) {
                    userOption = paramValue;
                }
            }

            if (!userOption.equals("paper") && !userOption.equals("rock") && !userOption.equals("scissors") ) {
                out.println("<script>alert('Please click in one image to select a valid option');</script>");
            } else {
                Random gerador = new Random();
                int computerIntOption = gerador.nextInt(3);

                String computerStringOption;
                if (computerIntOption == PAPER) {
                    computerStringOption = "paper" ;
                } else if (computerIntOption == ROCK) {
                    computerStringOption = "rock" ;
                } else {
                    computerStringOption = "scissors" ;
                }

                if ((userOption.equals("paper") && computerIntOption  == ROCK) || (userOption.equals("rock") && computerIntOption == SCISSORS) || (userOption.equals("scissors") && computerIntOption  == PAPER)) {
                    out.println("<script>alert('User win. Computer selected \"" + computerStringOption + "\"');</script>");           
                } else if ((userOption.equals("paper") && computerIntOption  == PAPER) || (userOption.equals("rock") && computerIntOption == ROCK) || (userOption.equals("scissors") && computerIntOption  == SCISSORS)) {
                    out.println("<script>alert('Draw. Computer selected \"" + computerStringOption + "\"');</script>");           
                } else {
                    out.println("<script>alert('Computer win. Computer selected \"" + computerStringOption + "\"');</script>");           
                }
            }
        %>
    </body>
</html>