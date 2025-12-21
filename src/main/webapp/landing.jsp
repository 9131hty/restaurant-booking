<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<c:set var="gcv" value="${pageContext.request.contextPath}/assets/" scope="application" />
<c:set var="meresc" value="${gcv}uploads/images/items/" scope="application" />
<html>
<head>
    <title>Title</title>
</head>
<body>
<jsp:forward page="/home"/>
</body>
</html>
