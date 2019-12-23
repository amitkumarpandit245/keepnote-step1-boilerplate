<!doctype html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="n" uri="http://java.sun.com/jsp/jstl/core"%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>KeepNote</title>
</head>
<body>
	<!-- Create a form which will have text boxes for Note ID, title, content and status along with a Send 
		 button. Handle errors like empty fields -->
	<form method="post" action="saveNote">
		<table align="center">
			<tr>
				<td><p>
						Note ID : <input type="text" name="noteId" required="required">
					</p></td>
			</tr>
			<tr>
				<td><p>
						Title : &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="text"
							name="noteTitle" required="required">
					</p></td>
			</tr>
			<tr>
				<td><p>
						Content : &nbsp;<input type="text" name="noteContent"
							required="required">
					</p></td>
			</tr>
			<tr>
				<td><p>
						Status : &nbsp;&nbsp;&nbsp;&nbsp;<input type="text"
							name="noteStatus" required="required">
					</p></td>
			</tr>
			<tr>
				<td><p align="center">
						<input type="submit" value="Send">
					</p></td>
			</tr>
		</table>
	</form>
	<!-- display all existing notes in a tabular structure with Id, Title,Content,Status, Created Date and Action -->
	<table align="center" cellspacing="15">
		<n:forEach items="${noteList}" var="note">
			<tr>
				<td>${note.noteId}</td>
				<td>${note.noteTitle}</td>
				<td>${note.noteContent}</td>
				<td>${note.noteStatus}</td>
				<td>${note.createdAt}</td>
				<td>
					<form action="deleteNote">
						<input type="hidden" id="noteId" name="noteId"
							value="${note.noteId}" />
						<button type="submit">Delete</button>
					</form>
				</td>
			</tr>
		</n:forEach>
	</table>

</body>
</html>