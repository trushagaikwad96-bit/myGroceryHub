<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
<body>

<h2>Add Multiple Wishlist Items</h2>

<form action="/addWishlist" method="post">

<table border="1" id="wishlistTable">
    <tr>
        <th>Name</th>
        <th>Price</th>
        <th>Category</th>
        <th>Unit</th>
    </tr>

    <c:forEach items="${wrapper.wishlist}" var="w" varStatus="i">
        <tr>
            <td><input type="text" name="wishlist[${i.index}].productName" /></td>
            <td><input type="text" name="wishlist[${i.index}].productPrice" /></td>
            <td><input type="text" name="wishlist[${i.index}].productCategory" /></td>
            <td><input type="text" name="wishlist[${i.index}].unit" /></td>
        </tr>
    </c:forEach>
</table>

<br>
<button type="button" onclick="addRow()">Add Row</button>
<button type="submit">Save Wishlist</button>

</form>

<script>
function addRow() {
    const table = document.getElementById("wishlistTable");
    let index = table.rows.length - 1;

    let row = table.insertRow();
    row.innerHTML = `
        <td><input type="text" name="wishlist[${index}].productName"></td>
        <td><input type="text" name="wishlist[${index}].productPrice"></td>
        <td><input type="text" name="wishlist[${index}].productCategory"></td>
        <td><input type="text" name="wishlist[${index}].unit"></td>
    `;
}
</script>

</body>
</html>
