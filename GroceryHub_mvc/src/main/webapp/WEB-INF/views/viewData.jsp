<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<%@ include file="Header.jsp" %>
<link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.css" rel="stylesheet">

<head>
    <meta charset="UTF-8">
    <title>Grocery Store Products</title>
    <link href="resources/assets/css/bootstrap.min.css" rel="stylesheet">
</head>

<body class="bg-light">

<div class="container py-5">
    <h2 class="text-center mb-4 text-success">🛒 Grocery Store Products</h2>

    <div class="row g-4">

        <c:if test="${not empty product}">
            <c:forEach var="p" items="${product}">
                <div class="col-md-4 col-sm-6">
                    <div class="card h-100 shadow-sm border-success">

                        <div class="d-flex justify-content-center align-items-center mb-3">
                            <i class="bi bi-bag-check-fill text-success" style="font-size: 3rem;"></i>
                        </div>

                        <div class="card-body">
                            <h5 class="card-title text-primary">${p.productName}</h5>
                            <p class="mb-1"><strong>Price:</strong> ₹${p.productPrice}</p>
                            <p class="mb-1"><strong>Category:</strong> ${p.productCategory}</p>
                            <p class="mb-1"><strong>Unit:</strong> ${p.unit}</p>
                            <p class="text-muted">${p.description}</p>
                        </div>

                        <div class="card-footer bg-transparent text-center">

                            <!-- ⭐ UPDATED: Add to Cart → Adds to Wishlist -->
                            <form action="addToWishlistSingle" method="post" class="d-inline">
                                <input type="hidden" name="productName" value="${p.productName}">
                                <input type="hidden" name="productPrice" value="${p.productPrice}">
                                <input type="hidden" name="productCategory" value="${p.productCategory}">
                                <input type="hidden" name="unit" value="${p.unit}">
                                <button type="submit" class="btn btn-success btn-sm">
                                    <i class="bi bi-cart-plus"></i> Add to Cart
                                </button>
                            </form>

                            <!-- Buy Now -->
                            <form action="/buyNow" method="post" class="d-inline ms-2">
                                <input type="hidden" name="productName" value="${p.productName}">
                                <input type="hidden" name="productPrice" value="${p.productPrice}">
                                <button type="submit" class="btn btn-primary btn-sm">
                                    <i class="bi bi-lightning-fill"></i> Buy Now
                                </button>
                            </form>

                        </div>

                    </div>
                </div>
            </c:forEach>
        </c:if>

        <c:if test="${empty product}">
            <div class="col-12 text-center">
                <div class="alert alert-warning">No products available right now!</div>
            </div>
        </c:if>

    </div>
</div>

<script src="resources/assets/js/bootstrap.bundle.min.js"></script>
</body>

<%@ include file="Footer.jsp" %>
</html>
