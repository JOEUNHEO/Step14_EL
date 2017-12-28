<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>scope/test01.jsp</title>
</head>
<body>
<%
//jsp 기본 객체
	//PageContext(하나의 페이지 영역에서 쓰임), HttpServletRequest(응답하기 전까지 쓰임), HttpSession(세션 유지 되는 동안 쓰임), ApplicationContext(서버를 껐다 키기 전까지 계속 쓰임) 객체들은
	// .setAttribute(key, value), .getAttribute(key) 메소드를 쓸 수 있다.

	// page 영역에 "myName" 이라는 키값으로 String type 저장하기
	pageContext.setAttribute("myName", "김구라");
	
	//request 영역에 "yourName"이라는 키값으로 String type 저장하기
	request.setAttribute("yourName", "원숭이");
	
	//session 영역에 "id"라는 키값으로 String type 저장하기
	session.setAttribute("id", "kimgura");
	
	//application 영역에 "count" 라는 키값으로 int type 저장하기
	application.setAttribute("count", 999);
		
%>
<p>pageContext 객체에 저장된 문자열 : <strong>${pageScope.myName }</strong></p>
<p>pageContext 객체에 저장된 문자열 : <strong>${myName }</strong></p>
<p>HttpRequest 객체에 저장된 문자열 : <strong>${requestScope.yourName }</strong></p>
<p>HttpRequest 객체에 저장된 문자열 : <strong>${yourName }</strong></p>
<p>HttpSession 객체에 저장된 문자열 : <strong>${sessionScope.id }</strong></p>
<p>HttpSession 객체에 저장된 문자열 : <strong>${id }</strong></p>
<p>Application 객체에 저장된 문자열 : <strong>${applicationScope.count }</strong></p>
<p>Application 객체에 저장된 문자열 : <strong>${count }</strong></p>
</body>
</html>