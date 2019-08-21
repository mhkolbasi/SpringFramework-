<%@ taglib uri="http://www.springframework.org/tags" prefix="s" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<script type="text/javascript">
 function alt(){

	 const cnf = cnf("Çıkış yapmak istediğinizden eminmisiniz");

	 	if(cnf){
			return true;
		 	}else {
		           retrun false;
		 	}
	 	
	 }

</script>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
</head>
<body>

<nav class="navbar navbar-expand-lg  " style="background-color: #006699;">
    <div class="container">
      <a href="" class="navbar-brand" style="color:white;">Hüseyin Kolbasi</a>
  
      <button  class="navbar-toggler" type="button" data-toggle="collapse" data-target="#menuac">
        <span class="navbar-toggler-icon" ></span>
      </button>

      <div class="collapse navbar-collapse" id="menuac">

        <ul class="navbar-nav ml-auto" >

          <li class="nav-item " >
            <a style="color:white;" href="" class="nav-link"><i class="fa fa-home" aria-hidden="true"></i> HOME</a>
          </li>

          <li class="nav-item">
            <a  style="color:white;" href="" class="nav-link"><i class="fa fa-info" aria-hidden="true"></i> ABOUT</a>
          </li>

          <li class="nav-item">
            <a  style="color:white;" href="" class="nav-link "><i class="fa fa-cog" aria-hidden="true"></i> SETTINGS</a>
          </li>

          <li class="nav-item">
            <a  style="color:white;" href='<s:url value="/exit"></s:url>' class="nav-link"><i class="fa fa-sign-out" aria-hidden="true"></i> SIGN OUT</a>
          </li>

        </ul>

      </div>

    </div>
    
  </nav>

<div class="container" >
<div class="row">
<div class="col-sm-3"></div>

	<div class="col-sm-6">
	
		<h1 style="color:#006699; ">Add person</h1>
		<form action='<s:url value="cartInsert"></s:url>' method="post">
			
			<div class="form-group">
			    <input required="required" name="uname" type="text" class="form-control"  placeholder="Name">
  			</div>
  			
  			<div class="form-group">
			    <input required="required"  name="usurname" type="text" class="form-control"  placeholder="Surname">
  			</div>
  			
  			<div class="form-group">
  				<input  placeholder="Telephone" name="uphone"  required="required"  class="form-control" type='tel' pattern='[0-9]{3}[0-9]{3}[0-9]{4}' maxlength="10"  title='Telefon No: 5556667788 '>
  			</div>
  			
  			<div class="form-group">
			    <select name="uid" class="form-control">
			    <c:if test="${ not empty catData }">
			    	<c:forEach items="${catData }"  var="item" >
			    		<option value="${item.uid }">${item.utitle }</option>
			    	</c:forEach>
			    </c:if>
			    </select>
			  </div>
			  
			<button type="submit" style="background-color:#006699; !important" class="btn btn-secondary btn-md btn-block">Save</button>
			
		</form>
	</div>
	<div class="col-sm-3"></div>
</div>
<br/>
<div class="row">
<div class="col-sm-1"></div>	
	<div class="col-sm-10">
		<table class="table table-hover">
		  <thead style="background-color:#006699; color:white;">
		    <tr>
		      <th scope="col">ID</th>
		      <th scope="col">Name</th>
		      <th scope="col">Surname</th>
		      <th scope="col">Telephone</th>
		      <th scope="col">Categories</th>
		      <th scope="col">Edit</th>
		      <th scope="col">Delete</th>
		       
		    </tr>
		  </thead>
		  <tbody>
		  
		  <c:if test="${not empty tableData }">
		  	<c:forEach items="${tableData }" var="item">
			    <tr>
			      <th>${item.usid }</th>
			      <td>${item.uname }</td>
			      <td>${item.usurname }</td>
			      <td>${item.uphone }</td>
			      <td>${item.utitle }</td>
			      <td>
			      <a href="updatePage/${ item.usid }" class="btn" style="background-color:#006699; color:white;">Edit</a>
			      </td>
			       <td>
			        <form action="delete/${item.usid }" method="post">
			      <input type="submit" value="Delete" class="btn btn-danger"></input> </form>
			      </td>
			    </tr>
		    </c:forEach>
		 </c:if>
		    
		  </tbody>
		</table>
	</div>
	<div class="col-sm-1"></div>	
</div>

</div>
</body>
<script src="https://code.jquery.com/jquery-3.4.1.min.js" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>

</html>