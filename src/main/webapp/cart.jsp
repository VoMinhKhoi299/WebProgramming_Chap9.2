<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <title>Murach's Java Servlets and JSP</title>
    <link rel="stylesheet" href="styles/main.css" type="text/css"/>
</head>
<body>
<div class="container">
    <h1>Your Cart</h1>

    <table class="product-table">
        <thead>
        <tr>
            <th>Quantity</th>
            <th>Description</th>
            <th class="right">Price</th>
            <th class="right">Amount</th>
            <th></th>
        </tr>
        </thead>
        <tbody>
        <c:forEach var="item" items="${cart.items}">
            <tr>
                <td>
                    <form action="" method="post" class="inline-form">
                        <input type="hidden" name="productCode" value="<c:out value='${item.product.code}'/>">
                        <input type="text" name="quantity" value="<c:out value='${item.quantity}'/>" class="quantity">
                        <input type="submit" value="Update" class="btn-small">
                    </form>
                </td>
                <td><c:out value='${item.product.description}'/></td>
                <td class="right">${item.product.priceCurrencyFormat}</td>
                <td class="right">${item.totalCurrencyFormat}</td>
                <td>
                    <form action="" method="post" class="inline-form">
                        <input type="hidden" name="productCode" value="<c:out value='${item.product.code}'/>">
                        <input type="hidden" name="quantity" value="0">
                        <input type="submit" value="Remove" class="btn-small btn-danger">
                    </form>
                </td>
            </tr>
        </c:forEach>
        </tbody>
    </table>

    <p><b>To change the quantity</b>, enter the new quantity and click Update.</p>

    <div class="cart-actions">
        <form action="" method="post" class="inline-form">
            <input type="hidden" name="action" value="shop">
            <input type="submit" value="Continue Shopping" class="btn-submit">
        </form>

        <form action="" method="post" class="inline-form">
            <input type="hidden" name="action" value="checkout">
            <input type="submit" value="Checkout" class="btn-submit">
        </form>
    </div>
</div>
</body>
</html>
