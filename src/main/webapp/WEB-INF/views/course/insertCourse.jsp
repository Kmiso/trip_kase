<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>여행카세 : 코스등록 </title>
</head>
<body>
	<form action="/restaurant/insertRestaurant.tripkase" method="post" enctype="multipart/form-data">
		<table align="center" border="1">
			<tr>
				<td>이름</td>
				<td><input type="text" name="courseName"></td>
			</tr>
			<tr>
				<td>지역</td>
				<td><input type="text" name="locationName"></td>
			</tr>
			<tr>
				<td>코스 이미지</td>
				<td><textarea name="boardContents"></textarea></td>
			</tr>
			<tr>
				<td>첨부파일</td>
				<td><input type="file" name="uploadFile"></td>
			</tr>
			<tr>
				<td colspan="2">
					<input type="submit" value="등록">
					<input type="reset"  value="취소">
				</td>
			</tr>
		</table>
	
	
	</form>
</body>
</html>