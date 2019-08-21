<%@ taglib uri="http://www.springframework.org/tags" prefix="s" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
</head>
<body>
<div class="container" >

<div class="row">
	<div class="col-sm-4">
		<h1 style="color:#006699;">Edit</h1>
		<form action='<s:url value="/cartUpdate"></s:url>' method="post">
			
			
			<div class="form-group">
			    <input  value="${ tablePro.uname }" required="required" name="uname" type="text" class="form-control"  placeholder="Name">
  			</div>
  			
  			<div class="form-group">
			    <input  value="${ tablePro.usurname }" required="required"  name="usurname" type="text" class="form-control"  placeholder="Surname">
  			</div>
  			
  			<div class="form-group">
  				<input  placeholder="Telephone" value="${ tablePro.uphone }" name="uphone"  required="required"  class="form-control" type='tel' pattern='[0-9]{3}[0-9]{3}[0-9]{4}' maxlength="10"  title='Telefon No: 5556667788 '>
  			</div>
  			
  			<div class="form-group">
			    <select name="uid" class="form-control">
			    <c:if test="${ not empty catData }">
			    	<c:forEach items="${catData }"  var="item" >
			    		<c:if test="${ tablePro.uid == item.uid  }">
			    			<option selected="selected" value="${item.uid }">${item.utitle }</option>
			    		</c:if>
			    		<c:if test="${ tablePro.uid != item.uid  }">
			    			<option value="${item.uid }">${item.utitle }</option>
			    		</c:if>
			    	</c:forEach>
			    </c:if>
			    </select>
			  </div>
			  
			<button style="background-color:#006699; !important" class="btn btn-secondary btn-md btn-block">Save</button>
			
		</form>
	</div>
	
</div>

</div>
</body>
<script src="https://code.jquery.com/jquery-3.4.1.min.js" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>

</html>