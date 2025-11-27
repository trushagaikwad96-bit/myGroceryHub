<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ include file="Header.jsp" %>
<html>
<head><title>Admin - Products</title></head>
<body class="bg-light">
<div class="container py-4">
    <h2>Products</h2>
    <a href="${pageContext.request.contextPath}/admin/add" class="btn btn-success mb-3">Add New</a>

    <table class="table table-bordered">
        <thead class="table-light">
            <tr><th>ID</th><th>Name</th><th>Price</th><th>Category</th><th>Unit</th><th>Actions</th></tr>
        </thead>
        <tbody>
            <c:forEach items="${plist}" var="p">
                <tr>
                    <td>${p.id}</td>
                    <td>${p.productName}</td>
                    <td>${p.productPrice}</td>
                    <td>${p.productCategory}</td>
                    <td>${p.unit}</td>
                    <td>
                        <a href="${pageContext.request.contextPath}/admin/edit/${p.id}" class="btn btn-sm btn-primary">Edit</a>
                        <a href="${pageContext.request.contextPath}/admin/delete/${p.id}" class="btn btn-sm btn-danger" onclick="return confirm('Delete?')">Delete</a>
                    </td>
                </tr>
            </c:forEach>
        </tbody>
    </table>
</div>
<%@ include file="Footer.jsp" %>
</body>
</html>
