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
    <h1>CD List</h1>

    <table class="product-table">
        <thead>
        <tr>
            <th>Description</th>
            <th class="right">Price</th>
            <th>&nbsp;</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach var="product" items="${products}">
            <tr>
                <td><c:out value='${product.description}'/></td>
                <td class="right">${product.priceCurrencyFormat}</td>
                <td>
                    <form action="cart" method="post">
                        <input type="hidden" name="productCode" value="<c:out value='${product.code}'/>">
                        <input type="submit" value="Add To Cart" class="btn-submit">
                    </form>
                </td>
            </tr>
        </c:forEach>
        </tbody>
    </table>
</div>
</body>
</html>
