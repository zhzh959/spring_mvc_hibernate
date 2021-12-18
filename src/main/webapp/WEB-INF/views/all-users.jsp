<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<body>

<h2>All users</h2>
<br>
<table>
    <tr>
        <th>Name</th>
        <th>LastName</th>
        <th>Age</th>
        <th>Operations</th>

        <c:forEach var="us" items="${allUsers}">
        <c:url var="updateButton" value="/updateInfo">
            <c:param name="usId" value="${us.id}"/>

        </c:url>

        <c:url var="deleteButton" value="/deleteUser">
            <c:param name="usId" value="${us.id}"/>
        </c:url>
    <tr>
        <td>${us.name}</td>
        <td>${us.lastName}</td>
        <td>${us.age}</td>
        <td>
            <input type="button" value="Update"
                   onclick="window.location.href = '${updateButton}'"/>
            <input type="button" value="Delete"
                   onclick="window.location.href = '${deleteButton}'"/>

        </td>


    </c:forEach>
    </tr>
</table>

<br>

<input type="button" value="Add"
       onclick="window.location.href = 'addNewUser'"/>


</body>
</html>