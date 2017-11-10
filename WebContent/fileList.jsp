<%@ page language="java" contentType="text/html; charset=UTF-8"
     pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> 
  <!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
  <html>
  <head>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <title>下载的页面</title>
  </head>
 <body>
 
 <center>
 <table cellpadding="10" cellspacing="10">
     <tr>
         <td>编号</td>
         <td>文件名</td>
         <td>下载</td>
         <td>阅读</td>
         <td>删除</td>
     </tr>
     <c:forEach items="${fileNames }" var="fileName" varStatus="fn">
         <tr>
             <td>${fn.count}</td>
             <td>${fileName }</td>
             <td>
                 <!-- 构建一个url -->
                 <c:url var="url" value="down_down">
                     <c:param name="fileName" value="${fileName }"></c:param>
                 </c:url>
                 <a href="${url }">下载</a>
             </td>
             <td>
             	<c:url var="urlview" value="down_view">
             		<c:param name="fileName" value="${fileName }"></c:param>
             	</c:url>
             	<a href="${urlview }">阅读</a>
             </td>
             <td>
             	<c:url var="urldelete" value="delete">
             		<c:param name="fileName" value="${fileName }"></c:param>
             	</c:url>
             	<a href="${urldelete }">删除</a>
             </td>
         </tr>
     </c:forEach>
 </table>
 <p><a href="fileUpload.jsp">上传文件</a></p>
 </center>
 </body>
 </html>