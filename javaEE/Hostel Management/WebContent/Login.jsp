<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">

<style>
/* Style all input fields */

body{
    margin: 0;
    padding: 0;
    background: url(image/image.jpg);
    background-size: cover;
    background-position: center;
    font-family: sans-serif;
}
 h1{
  font-size: 18px;
  font-weight: bold;
  color: white;
  font-family: 'Montserrat',sans-serif;
  }
  h3{
     font-size: 35px;
  font-weight: bold;
  color: black;
  font-family: 'Montserrat',sans-serif;

  }
h4{
   font-size: 18px;
  font-weight: bold;
  color: black  ;
  font-family: 'Montserrat',sans-serif;

}
input {
 
  width: 40%;
  padding: 12px;
  border: 1px solid #ccc;
  border-radius: 4px;
  box-sizing: border-box;
  margin-top: 6px;
  margin-bottom: 16px;
  margin left: 50px;
}

/* Style the submit button */
input[type=submit] {
  background-color: #4CAF50;
  color: white;

}

/* Style the container for inputs */
.container {
height: 400px;
  margin-left:260px;
margin-right:260px;
  background-color:rgba(0,0,0,0.7);
  padding: 20px;
}

/* The message box is shown when the user clicks on the password field */
#message {
  display:none;
  background: #f1f1f1;
  color: #000;
  position: relative;
  padding: 20px;
  margin-top: 10px;
}

#message p {
  padding: 10px 35px;
  font-size: 18px;
}

/* Add a green text color and a checkmark when the requirements are right */
.valid {
  color: green;
}

.valid:before {
  position: relative;
  left: -35px;
  content: "?";
}

/* Add a red text color and an "x" when the requirements are wrong */
.invalid {
  color: red;
}

.invalid:before {
  position: relative;
  left: -35px;
  content: "?";
}
</style>
</head>
<body>

<center><h3>LOGIN PAGE</h3>
<h4>You must have an online account with the University of Cambridge Accommodation Service to use this service.<br>
This service is only available to staff, members of the University/Affiliated Institutions</h4>
</center>

<div class="container">
  <center>
  <form action="login" method="post">
    
    <label for="usrname"><h1>Username</h1></label>
    <input type="text" id="usrname" name="username" required>
    <label for="psw"><h1>Password</h1></label>
    <input type="password" id="psw" name="password" pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}" title="Must contain at least one number and one uppercase and lowercase letter, and at least 8 or more characters" required>
    <label for="usrname"><h1>User Type</h1></label>
    <input type="text" id="usertype" name="usertype" required>
    <br>
    <br>
    <input type="submit" value="Submit">
  </form>
</center>
</div>

				
<script>
var myInput = document.getElementById("psw");
var letter = document.getElementById("letter");
var capital = document.getElementById("capital");
var number = document.getElementById("number");
var length = document.getElementById("length");

// When the user clicks on the password field, show the message box
myInput.onfocus = function() {
  document.getElementById("message").style.display = "block";
}

// When the user clicks outside of the password field, hide the message box
myInput.onblur = function() {
  document.getElementById("message").style.display = "none";
}

// When the user starts to type something inside the password field
myInput.onkeyup = function() {
  // Validate lowercase letters
  var lowerCaseLetters = /[a-z]/g;
  if(myInput.value.match(lowerCaseLetters)) {  
    letter.classList.remove("invalid");
    letter.classList.add("valid");
  } else {
    letter.classList.remove("valid");
    letter.classList.add("invalid");
  }
  
  // Validate capital letters
  var upperCaseLetters = /[A-Z]/g;
  if(myInput.value.match(upperCaseLetters)) {  
    capital.classList.remove("invalid");
    capital.classList.add("valid");
  } else {
    capital.classList.remove("valid");
    capital.classList.add("invalid");
  }

  // Validate numbers
  var numbers = /[0-9]/g;
  if(myInput.value.match(numbers)) {  
    number.classList.remove("invalid");
    number.classList.add("valid");
  } else {
    number.classList.remove("valid");
    number.classList.add("invalid");
  }
  
  // Validate length
  if(myInput.value.length >= 8) {
    length.classList.remove("invalid");
    length.classList.add("valid");
  } else {
    length.classList.remove("valid");
    length.classList.add("invalid");
  }
}
</script>

</body>
</html>
