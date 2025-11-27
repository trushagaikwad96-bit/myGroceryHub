<%@ include file="Header.jsp" %>
<html>
<head><title>Add Product</title></head>
<body class="bg-light">
<div class="container py-4" style="max-width:700px;">
    <h2>Add Product</h2>
    <form action="${pageContext.request.contextPath}/admin/save" method="post">
        <div class="mb-3">
            <label>Name</label>
            <input type="text" name="productName" class="form-control" required>
        </div>
        <div class="mb-3">
            <label>Price</label>
            <input type="text" name="productPrice" class="form-control" required>
        </div>
        <div class="mb-3">
            <label>Category</label>
            <input type="text" name="productCategory" class="form-control">
        </div>
        <div class="mb-3">
            <label>Unit</label>
            <input type="text" name="unit" class="form-control">
        </div>
        <div class="mb-3">
            <label>Description</label>
            <textarea name="description" class="form-control"></textarea>
        </div>
        <button class="btn btn-success">Save</button>
    </form>
</div>
<%@ include file="Footer.jsp" %>
</body>
</html>
