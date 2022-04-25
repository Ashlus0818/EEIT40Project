<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="contextRoot" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<jsp:include page="IncludePage/css.jsp" />
</head>
<body>
	<jsp:include page="IncludePage/sidebar.jsp" />
	<jsp:include page="IncludePage/topbar.jsp" />
	<jsp:include page="IncludePage/pageheading.jsp" />
	
	<div>
		<h1>客服 留言管理</h1>
	</div>
		<table class="table table-hover" style="text-align: center">
        <thead>
            <tr>
                <th  style="text-align: center"> <input id="selectAll" type="checkbox" onclick="seltAll()"></th>
                <th style="text-align: center">姓名</th>
                <th style="text-align: center">信箱</th>
                <th style="text-align: center">問題</th>
                <th style="text-align: center">留言内容</th>
                <th style="text-align: center">操作</th>
            </tr>
        </thead>
 </table>


	<jsp:include page="IncludePage/script.jsp" />
	<script type="text/javascript">
	// 设置页面数据
    function setPageData(messageList) {
        if(messageList.length == 0){
            var html = "<tr><td colspan=8>暂无数据</td></tr>";
        }else{
            var html = null;
            var editId = null;
            for (const key in messageList) {
                html += "<tr id=\"tr"+ messageList[key].id  +"\">"
                html += "<td><input value=\""+  messageList[key].id + "\" type=\"checkbox\" name=\"chckBox\"></td>",
                html += "<td>" + messageList[key].id + "</td>",
                html += "<td>" + messageList[key].message_user + "</td>",
                html += "<td title=\""+ messageList[key].message_content  +"\">" + messageList[key].message_content + "</td>",
                html += "<td>" + messageList[key].message_city + "</td>",
                html += "<td>" + messageList[key].message_time + "</td>",
                html += "<td id=\"message_status"+  messageList[key].id  +"\">" + messageList[key].message_status + "</td>",
                editId = messageList[key].id +  ","  +  messageList[key].message_status,
                html += "<td>" +
                            "<a href=\"#\" onclick=\"ShowupdateMessage(" + editId  + ")\" id='+ editId +'>修改 </a>" +
                            "<a href=\"#\" onclick=\"deleteMessageId(" + messageList[key].id + ")\">删除</a>" +
                        "</td>" +
                    "</tr>"
            }
        }
       
    }

	</script>
</body>
</html>