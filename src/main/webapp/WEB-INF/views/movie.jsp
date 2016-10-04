<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<%--
	On this page we have a form to edit a single movie and a button to delete it.
	
	Model:
	- Movie movie
 --%>
<html>
<head>
<title>Movies</title>
<link href="<c:url value="/resources/main.css"/>" rel="stylesheet" />
</head>
<body>
	<div class="nav">
		<a href="<c:url value="/"/>">Home</a> <a
			href="<c:url value="/movies"/>">Back to Movies List</a>
	</div>
	<h1>Movie: ${ movie.title }</h1>

	<form method="post">
		<div>
			<label>Title</label> <input type="text" name="title"
				value="${movie.title}" />
		</div>
		<div>
			<label>Category</label> <input type="text" name="category"
				value="${movie.category}" />
		</div>
		<div>
			<label>Description</label>
			<textarea name="text">${movie.description}</textarea>
		</div>
		<div>
			<label>Year</label> <input>${movie.year}
		</div>
		<div>
			<label>Rating</label> <select name="Rating">
				<option value="1">1/5</option>
				<option value="2">2/5</option>
				<option value="3">3/5</option>
				<option value="4">4/5</option>
				<option value="5">5/5</option>
			</select>

		</div>
		<div>
			<input type="checkbox" name="blackAndWhite" value="Bike"> Black and
			White Film<br>

		</div>

<div>
<label>Origin of Movie</label><br>
  <input type="radio" name="origin" value="hollywood"> Hollywood<br>
  <input type="radio" name="origin" value="foreign"> Foreign<br>
  <input type="radio" name="origin" value="independent"> Other

</div>


		<button type="submit">Save Changes</button>
	</form>

	<form method="post"
		action="<c:url value="/movies/${movie.id}/delete"/>">
		<button type="submit">Delete this Movie</button>
	</form>

</body>
</html>