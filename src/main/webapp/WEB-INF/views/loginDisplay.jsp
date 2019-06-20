<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<style type="text/css">
/* Bordered form */
form {
  border: 3px solid #f1f1f1;
}

/* Full-width inputs */
input[type=text], input[type=password] {
  width: 100%;
  padding: 12px 20px;
  margin: 8px 0;
  display: inline-block;
  border: 1px solid #ccc;
  box-sizing: border-box;
}

/* Set a style for all buttons */
button {
  background-color: #4CAF50;
  color: white;
  padding: 14px 20px;
  margin: 8px 0;
  border: none;
  cursor: pointer;
  width: 100%;
}

/* Add a hover effect for buttons */
button:hover {
  opacity: 0.8;
}

/* Extra style for the cancel button (red) */
.cancelbtn {
  width: auto;
  padding: 10px 18px;
  background-color: #f44336;
}

/* Center the avatar image inside this container */
.imgcontainer {
  text-align: center;
  margin: 2px 0 2px 0;
}

/* Avatar image */
img.avatar {
  width: 10%;
  border-radius: 10%;
}

/* Add padding to containers */
.container {
  padding: 16px;
}

/* The "Forgot password" text */
span.psw {
  float: right;
  padding-top: 16px;
}

/* Change styles for span and cancel button on extra small screens */
@media screen and (max-width: 30px) {
  span.psw {
    display: block;
    float: none;
  }
  .cancelbtn {
    width: 100%;
  }
}
</style>
<title>Login Success Page</title>
</head>
<body>

<!--  form action = "student" method="post">
	student id : <input type="text" name="id"> <br/>
	student password : <input type="text" name="pw"> <br/>
	<input type = "submit" value = "send">	
</form-->




  <div class="container">
  <div class="container" style="background-color:#f1f1f1">
    <a href="/spring/myaccount" type="button" class="myaccount" ">MyAccount</a>    
    <span class="psw"></span><br>
    <span class="psw"></span>
  </div>
<body>

login page
<br>
id : ${studentId} <br>
pw : ${studentPw} 

</body>
  </div>

  <div class="container" style="background-color:#f1f1f1">
   
    <span class="psw"></span><br>
    <span class="psw"></span>
  </div>



</body>
</html>
