<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>

<%@ include file="Header.jsp" %>

<head>
    <meta charset="UTF-8">
    <title>My Orders</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
</head>

<body class="bg-light">

<div class="container mt-4">

    <h2 class="text-center mb-4 text-primary">📦 My All Orders</h2>

    <table class="table table-bordered table-striped">
        <thead class="table-success">
            <tr>
                <th>Order ID</th>
                <th>Product</th>
                <th>Price</th>
                <th>Units</th>
                <th>Total</th>
                <th>Customer</th>
                <th>Mobile</th>
                <th>Address</th>
                <th>Date</th>
            </tr>
        </thead>

        <tbody>
            <c:forEach var="o" items="${orders}">
                <tr>
                    <td>${o.orderId}</td>
                    <td>${o.productName}</td>
                    <td>₹${o.productPrice}</td>
                    <td>${o.unit}</td>
                    <td class="text-success fw-bold">₹${o.totalPrice}</td>
                    <td>${o.customerName}</td>
                    <td>${o.mobile}</td>
                    <td>${o.address}</td>

                    <!-- ⭐ BEAUTIFUL DATE FORMAT NOW SHOWN -->
                    <td class="text-muted">${o.orderDate}</td>
                </tr>
            </c:forEach>
        </tbody>

    </table>

</div>

<%@ include file="Footer.jsp" %>

</body>
</html>
