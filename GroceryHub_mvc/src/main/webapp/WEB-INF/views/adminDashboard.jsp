<%@ page contentType="text/html;charset=UTF-8" language="java" %>
 <%@ include file="Header.jsp" %>
<html>
<head><title>Admin Dashboard</title></head>
<body class="bg-light">
<div class="container py-4">
    <h2>Admin Dashboard</h2>
    <div class="mt-4">
        <a href="${pageContext.request.contextPath}/admin/products" class="btn btn-success">Manage Products</a>
        <a href="${pageContext.request.contextPath}/admin/add" class="btn btn-primary ms-2">Add Product</a>
    </div>
</div>
<%@ include file="Footer.jsp" %>
</body>
</html>
