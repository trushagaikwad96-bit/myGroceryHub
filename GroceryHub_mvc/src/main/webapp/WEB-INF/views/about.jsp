<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<%@ include file="Header.jsp" %>

<head>
    <meta charset="UTF-8">
    <title>About Us - GroceryHub</title>
    
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">

    <style>
        body {
            background: #f5f5f5;
        }
        .about-section {
            background: white;
            padding: 40px;
            margin-top: 30px;
            border-radius: 12px;
            box-shadow: 0px 4px 20px rgba(0,0,0,0.1);
        }
        h2 {
            color: #28a745;
            font-weight: 700;
        }
        h4 {
            color: #007bff;
        }
        ul li {
            margin-bottom: 6px;
        }
    </style>
</head>

<body>

<div class="container">
    <div class="about-section">

        <h2 class="text-center mb-4">About GroceryHub</h2>

        <p class="lead text-center mb-4">
            GroceryHub is your trusted online grocery shopping partner, helping you get fresh products
            delivered right to your doorstep quickly and affordably.
        </p>

        <hr>

        <h4>🛒 Our Mission</h4>
        <p>
            To make grocery shopping simple, fast, and convenient by delivering high-quality products 
            at the best prices.
        </p>

        <h4>🚀 Our Vision</h4>
        <p>
            To become India's most reliable and user-friendly online grocery delivery platform.
        </p>

        <h4>🌟 Our Values</h4>
        <ul>
            <li>Quality Products</li>
            <li>Customer Satisfaction</li>
            <li>On-Time Delivery</li>
            <li>Affordable Pricing</li>
            <li>Transparency & Trust</li>
        </ul>

        <h4>💡 Why Choose Us?</h4>
        <ul>
            <li>Fresh groceries every time</li>
            <li>Fast & Safe Delivery</li>
            <li>Secure Ordering Process</li>
            <li>Easy-to-use Interface</li>
            <li>24/7 Customer Support</li>
        </ul>

        <h4>📞 Contact Us</h4>
        <p>
            Email: support@groceryhub.com<br>
            Phone: +91 98765 43210
        </p>

    </div>
</div>

<%@ include file="Footer.jsp" %>

</body>
</html>
