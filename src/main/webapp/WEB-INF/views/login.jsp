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

.btn
        {
            float: right;
            margin-right: 30px;
            margin-top: 30px;
            padding: 6px 20px;
            font-size: 14px;
            font-weight: bold;
            color: #fff;
            background-color: #07A8C3;
            background-image: -webkit-gradient(linear, left top, left bottom, from(#07A8C3), to(#6EE4E8));
            background-image: -moz-linear-gradient(top left 90deg, #07A8C3 0%, #6EE4E8 100%);
            background-image: linear-gradient(top left 90deg, #07A8C3 0%, #6EE4E8 100%);
            border-radius: 30px;
            border: 1px solid #07A8C3;
            cursor: pointer;
        }
        
/* Set a style for all buttons #4CAF50; */
button {
  background-color: #07A8C3; 
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

/* Extra style for the cancel button (red) #f44336; */
.cancelbtn {
  width: auto;
  padding: 10px 18px;
  background-color: #07A8C3;
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
<title>Login Page</title>
</head>
<body>


<form  action = "user" method="post">
	<div><h1><font size="3" color="red">${error}</font></h1></div>
  <div class="imgcontainer">
    <img src="/spring/resources/img_avatar2.png" alt="Avatar" class="avatar">
  </div>

  <div class="container">
    <label for="uname"><b><font color="#07A8C3">User ID</font></b></label>
    <input type="text" placeholder="Enter UserId" name="id" required>

    <label for="psw"><b><font color="#07A8C3">Password</font></b></label>
    <input type="password" placeholder="Enter Password" name="pw" required>

    <button type="submit">Login</button>
    <label>
      <input type="checkbox" checked="checked" name="remember"> Remember me
    </label>
  </div>

  <div class="container" style="background-color:#f1f1f1">
    <button type="button" class="cancelbtn">Cancel</button>    
    <span class="psw"><a href="/spring/useraccount">Create Account</a></span><br>
    <span class="psw"><a href="#">Forgot password?</a></span>
  </div>
</form>
</html>

</body>
