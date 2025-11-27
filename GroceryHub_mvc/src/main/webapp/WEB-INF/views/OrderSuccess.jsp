<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <title>Order Success</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
</head>

<body class="bg-light">

<%@ include file="Header.jsp" %>

<div class="container py-5">
    <div class="text-center">
        <h1 class="text-success fw-bold">✔ Order Placed Successfully!</h1>
        <p>Thank you for shopping with GroceryHub</p>
    </div>

    <div class="card shadow mx-auto mt-4" style="max-width: 600px;">
        <div class="card-body">

            <h4 class="text-primary">📄 Order Summary</h4>

            <p><strong>Product:</strong> ${order.productName}</p>
            <p><strong>Price per Unit:</strong> ₹${order.productPrice}</p>
            <p><strong>Units:</strong> ${order.unit}</p>
            <p><strong>Total Price:</strong> 
               <span class="text-success fw-bold">₹${order.totalPrice}</span>
            </p>

            <hr>

            <h4 class="text-primary">👤 Customer Details</h4>

            <p><strong>Name:</strong> ${order.customerName}</p>
            <p><strong>Mobile:</strong> ${order.mobile}</p>
            <p><strong>Address:</strong> ${order.address}</p>

        </div>
    </div>

    <!-- My Orders Button -->
    <div class="text-center mt-4">
        <a href="myOrders" class="btn btn-primary">
            View My Orders
        </a>
    </div>

</div>

<%@ include file="Footer.jsp" %>

</body>
</html>
