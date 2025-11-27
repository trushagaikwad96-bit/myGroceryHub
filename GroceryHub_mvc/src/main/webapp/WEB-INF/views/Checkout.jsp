<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<%@ include file="Header.jsp" %>

<head>
    <meta charset="UTF-8">
    <title>Checkout</title>
    <link href="resources/assets/css/bootstrap.min.css" rel="stylesheet">
</head>

<body class="bg-light">

<div class="container py-5">

    <h2 class="text-center text-success mb-4">🧾 Checkout Summary</h2>

    <div class="row justify-content-center">
        <div class="col-md-6">

            <div class="card shadow border-success">
                <div class="card-header bg-success text-white">
                    <h5 class="mb-0">Product Details</h5>
                </div>

                <div class="card-body">

                    <form action="confirmOrder" method="post">

                        <!-- Product Details -->
                        <p class="mb-2"><strong>Product Name:</strong> ${productName}</p>
                        <p class="mb-3"><strong>Price per Unit:</strong> ₹${productPrice}</p>

                        <!-- Unit Input -->
                        <div class="mb-3">
                            <label class="form-label"><strong>Units</strong></label>
                            <input type="number" name="unit" value="1" min="1" class="form-control" required>
                        </div>

                        <!-- Hidden inputs -->
                        <input type="hidden" name="productName" value="${productName}">
                        <input type="hidden" name="productPrice" value="${productPrice}">

                        <hr>

                        <h5 class="text-primary">🧍 Customer Details</h5>

                        <div class="mb-3">
                            <label class="form-label">Full Name</label>
                            <input type="text" name="customerName" class="form-control" required>
                        </div>

                        <div class="mb-3">
                            <label class="form-label">Mobile Number</label>
                            <input type="text" name="mobile" class="form-control" required>
                        </div>

                        <div class="mb-3">
                            <label class="form-label">Delivery Address</label>
                            <textarea name="address" rows="3" class="form-control" required></textarea>
                        </div>

                        <button type="submit" class="btn btn-success w-100">
                            <i class="bi bi-check-circle"></i> Confirm Order
                        </button>

                    </form>

                </div>
            </div>

        </div>
    </div>

</div>

<script src="resources/assets/js/bootstrap.bundle.min.js"></script>
</body>

<%@ include file="Footer.jsp" %>
</html>
