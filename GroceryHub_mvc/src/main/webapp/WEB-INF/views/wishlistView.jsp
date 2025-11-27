<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html lang="en">

<%@ include file="Header.jsp" %>

<head>
    <meta charset="UTF-8">

    <!-- Table + Card UI -->
    <style>
        body {
            background: #f7f7f7;
            font-family: 'Khula', sans-serif;
        }

        .wishlist-container {
            width: 85%;
            margin: 50px auto;
            background: #ffffff;
            padding: 25px;
            border-radius: 12px;
            box-shadow: 0px 4px 15px rgba(0,0,0,0.15);
        }

        .wishlist-title {
            text-align: center;
            font-size: 30px;
            font-weight: 700;
            margin-bottom: 25px;
            color: #28a745;
        }

        table {
            width: 100%;
            border-collapse: collapse;
        }

        th {
            background: #28a745;
            color: white;
            padding: 12px;
            font-size: 17px;
            text-align: left;
        }

        td {
            padding: 12px;
            font-size: 16px;
            background: #ffffff;
            border-bottom: 1px solid #e0e0e0;
        }

        tr:nth-child(even) td {
            background: #f6fff9;
        }

        tr:hover td {
            background: #eaffea;
        }

        .empty-message {
            padding: 20px;
            text-align: center;
            font-size: 18px;
            color: #666;
        }
    </style>

</head>

<body>

<div class="wishlist-container">

    <h2 class="wishlist-title">
        <i class="bi bi-heart-fill"></i> My Wishlist
    </h2>

    <!-- If wishlist is empty -->
    <c:if test="${empty wishlist}">
        <p class="empty-message">Your wishlist is empty!</p>
    </c:if>

    <!-- Wishlist Data Table -->
    <c:if test="${not empty wishlist}">
        <table>
            <tr>
                <th>Name</th>
                <th>Price</th>
                <th>Category</th>
                <th>Unit</th>
            </tr>

            <c:forEach items="${wishlist}" var="w">
                <tr>
                    <td>${w.productName}</td>
                    <td>${w.productPrice}</td>
                    <td>${w.productCategory}</td>
                    <td>${w.unit}</td>
                </tr>
            </c:forEach>
        </table>
    </c:if>

</div>

<%@ include file="Footer.jsp" %>

</body>
</html>
