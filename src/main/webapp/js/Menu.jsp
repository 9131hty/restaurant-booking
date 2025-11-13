<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Menu Nhà Hàng</title>
    <style>
        body { font-family: Arial, sans-serif; margin: 20px; }
        h1 { text-align: center; }
        table { width: 100%; border-collapse: collapse; margin-top: 20px; }
        th, td { border: 1px solid #ddd; padding: 8px; text-align: left; }
        th { background-color: #f2f2f2; }
        .price { text-align: right; }
    </style>
</head>
<body>
    <h1>Menu Nhà Hàng ABC</h1>
    
    <!-- Giả sử menuItems là một List<MenuItem> được đặt trong request attribute, 
         với MenuItem có các thuộc tính: name, description, price -->
    
    <c:if test="${empty menuItems}">
        <p>Không có món ăn nào trong menu hiện tại.</p>
    </c:if>
    
    <c:if test="${not empty menuItems}">
        <table>
            <thead>
                <tr>
                    <th>Tên Món Ăn</th>
                    <th>Mô Tả</th>
                    <th>Giá (VND)</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach var="item" items="${menuItems}">
                    <tr>
                        <td>${item.name}</td>
                        <td>${item.description}</td>
                        <td class="price">
                            <fmt:formatNumber value="${item.price}" type="currency" currencySymbol="₫" />
                        </td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>
    </c:if>
</body>
</html>