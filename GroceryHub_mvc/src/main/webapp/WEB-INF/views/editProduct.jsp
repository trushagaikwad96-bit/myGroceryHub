<%@ include file="Header.jsp" %>
<html>
<head><title>Edit Product</title></head>
<body class="bg-light">
<div class="container py-4" style="max-width:700px;">
    <h2>Edit Product</h2>
    <form action="${pageContext.request.contextPath}/admin/update" method="post">
        <input type="hidden" name="id" value="${product.id}" />
        <div class="mb-3">
            <label>Name</label>
            <input type="text" name="productName" class="form-control" value="${product.productName}" required>
        </div>
        <div class="mb-3">
            <label>Price</label>
            <input type="text" name="productPrice" class="form-control" value="${product.productPrice}" required>
        </div>
        <div class="mb-3">
            <label>Category</label>
            <input type="text" name="productCategory" class="form-control" value="${product.productCategory}">
        </div>
        <div class="mb-3">
            <label>Unit</label>
            <input type="text" name="unit" class="form-control" value="${product.unit}">
        </div>
        <div class="mb-3">
            <label>Description</label>
            <textarea name="description" class="form-control">${product.description}</textarea>
        </div>
        <button class="btn btn-primary">Update</button>
    </form>
</div>
<%@ include file="Footer.jsp" %>
</body>
</html>
