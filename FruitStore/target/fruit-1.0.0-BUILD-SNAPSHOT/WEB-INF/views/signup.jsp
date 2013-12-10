<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<html>
<head>
<meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
  <title>Registration Form</title>
  <link  href="resources/css/styleform.css" rel="stylesheet" type="text/css">
<link href="resources/css/style.css" rel="stylesheet" type="text/css">
</head>
<body>
<jsp:include page="header.jsp" />
<script type="text/javascript">

function formValidation()  
{  
	document.registration.commit.disabled=true;
 
 
var uemail = document.registration.email; 
var upass = document.registration.password;  
var cpass = document.registration.confirm;  
var ucountry = document.registration.country;  
var utext = document.registration.textarea;
var check = document.registration.remember_me;

if(username_validation()) 
 {
   if(ValidateEmail()) 
	{
	 if(upass_validation())  
	 {
     if(cpassword_validate())
	   {
	   if(country_validation())  
	    {
		 if(utext_validation())
		  {
		   if(check.checked == true)
		     {
			  document.getElementById("commit").disabled=false;
			  return true;
			  }
			else
			  {
			   document.getElementById("commit").disabled=true;
			   alert("You have to accept Terms and Conditions");
			   return false;
			  }
		  }
		 }
	   }
	 }
	}
    return false;
 }
}

function username_validation()  
{  
var uname = document.getElementById("name"); 
var uname_len = uname.value.length;
var mx=5;
var my=12;
	if(uname_len == 0 || uname_len >= my || uname_len < mx)  
   {  
	alert("Username should not be empty / length be between "+mx+" to "+my);  
	uname.focus();
	return false;  
   }  
	if(uname.value.match(/\s/g)){

		 alert('Sorry, you are not allowed to enter any spaces');

		 uname.value=uname.value.replace(/\s/g,'');
	 }
	else
		{
		return true; 
  		}  
}  

function upass_validation()  
{  
 var upass = document.getElementById("pass");
 var mx=5;
 var my=12;
 var upass_len = upass.value.length;  
 if (upass_len == 0 ||upass_len >= my || upass_len < mx)  
 {  
 alert("Password should not be empty / length be between "+mx+" to "+my);  
 upass.focus();  
 return false;  
 }  
 if(upass.value.match(/\s/g)){

	 alert('Sorry, you are not allowed to enter any spaces');

	 upass.value=upass.value.replace(/\s/g,'');
 }	 
return true;  
}   

function ValidateEmail()  
{  
var uemail = document.getElementById("email");
var mailformat = /^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/;  
if(uemail.value.match(mailformat))  
	{  
	return true;  
	}  
	else  
	{  
	alert("You have entered an invalid email address!");  
	uemail.focus();  
	return false;  
	}  
}  

function cpassword_validate()
 {
 var upass = document.getElementById("pass");
 var cpass = document.getElementById("conf");
 var upass_len = upass.value.length; 
 var cpass_len = cpass.value.length;
 if(upass.value != '')
 {
  if(upass_len ==  cpass_len)
   {
     if(upass.value == cpass.value)
	  {
	   return true;
	  }
   }
 }
 alert("Password and Confirm Password does not match");
 cpass.focus();
 return false;
} 

function country_validation()
 {
	var ucont=document.getElementById("cont");
	if(ucont.value == "-1")
	{
	alert("Please select your country");
	ucont.focus();
	return false;
	}
	return true;
	
 }
 
 function utext_validation()
  {
	 var utext=document.getElementById("text");
    if(utext.value != "" && utext.value != "Your Full Address")
	 {
	   return true;
	 }
    else
     {
	 alert("Please enter valid Address value");
	 utext.focus();
	 return false;
     }
  }
</script> 
<div id="frame">
  <div class="container">
    <section class="register">
      <h1>Register on FruitStore</h1>
      <form:form id="registrationform" modelAttribute="user" method="POST" onSubmit="formValidation()"  action="/fruit/save">
      <div class="reg_section personal_info">
      <h3>Your Personal Information</h3>
      Name: <form:input path="username" id="name"/>
      Email: <form:input path="email" id="email" onFocus="username_validation()"/>
      </div>
      <div class="reg_section password">
      <h3>Your Password</h3>
      Password: <form:password path="password" id="pass" onFocus="ValidateEmail()" />
      Confirm Password: <form:password path="confirm" id="conf" onFocus="upass_validation()"/>
      </div>
      <div class="reg_section password">
      <h3>Your Address</h3>
      country:<form:select   id="cont" path="country" onFocus="cpassword_validate()">
<form:option value="-1">Country...</form:option>
<form:option value="Afganistan">Afghanistan</form:option>
<form:option value="Albania">Albania</form:option>
<form:option value="Algeria">Algeria</form:option>
<form:option value="American Samoa">American Samoa</form:option>
<form:option value="Andorra">Andorra</form:option>
<form:option value="Angola">Angola</form:option>
<form:option value="Anguilla">Anguilla</form:option>
<form:option value="Argentina">Argentina</form:option>
<form:option value="Armenia">Armenia</form:option>
<form:option value="Aruba">Aruba</form:option>
<form:option value="Australia">Australia</form:option>
<form:option value="Austria">Austria</form:option>
<form:option value="Azerbaijan">Azerbaijan</form:option>
<form:option value="Bahamas">Bahamas</form:option>
<form:option value="Bahrain">Bahrain</form:option>
<form:option value="Bangladesh">Bangladesh</form:option>
<form:option value="Barbados">Barbados</form:option>
<form:option value="Belarus">Belarus</form:option>
<form:option value="Belgium">Belgium</form:option>
<form:option value="Belize">Belize</form:option>
<form:option value="Benin">Benin</form:option>
<form:option value="Bermuda">Bermuda</form:option>
<form:option value="Bhutan">Bhutan</form:option>
<form:option value="Bolivia">Bolivia</form:option>
<form:option value="Bonaire">Bonaire</form:option>
<form:option value="Bosnia &amp; Herzegovina">Bosnia &amp; Herzegovina</form:option>
<form:option value="Botswana">Botswana</form:option>
<form:option value="Brazil">Brazil</form:option>
<form:option value="British Indian Ocean Ter">British Indian Ocean Ter</form:option>
<form:option value="Brunei">Brunei</form:option>
<form:option value="Bulgaria">Bulgaria</form:option>
<form:option value="Burkina Faso">Burkina Faso</form:option>
<form:option value="Burundi">Burundi</form:option>
<form:option value="Cambodia">Cambodia</form:option>
<form:option value="Cameroon">Cameroon</form:option>
<form:option value="Canada">Canada</form:option>
<form:option value="Canary Islands">Canary Islands</form:option>
<form:option value="Cape Verde">Cape Verde</form:option>
<form:option value="Cayman Islands">Cayman Islands</form:option>
<form:option value="Central African Republic">Central African Republic</form:option>
<form:option value="Chad">Chad</form:option>
<form:option value="Channel Islands">Channel Islands</form:option>
<form:option value="Chile">Chile</form:option>
<form:option value="China">China</form:option>
<form:option value="Christmas Island">Christmas Island</form:option>
<form:option value="Cocos Island">Cocos Island</form:option>
<form:option value="Colombia">Colombia</form:option>
<form:option value="Comoros">Comoros</form:option>
<form:option value="Congo">Congo</form:option>
<form:option value="Cook Islands">Cook Islands</form:option>
<form:option value="Costa Rica">Costa Rica</form:option>
<form:option value="Cote DIvoire">Cote D'Ivoire</form:option>
<form:option value="Croatia">Croatia</form:option>
<form:option value="Cuba">Cuba</form:option>
<form:option value="Curaco">Curacao</form:option>
<form:option value="Hungary">Hungary</form:option>
<form:option value="Iceland">Iceland</form:option>
<form:option value="India">India</form:option>
<form:option value="Indonesia">Indonesia</form:option>
<form:option value="Zaire">Zaire</form:option>
<form:option value="Zambia">Zambia</form:option>
<form:option value="Zimbabwe">Zimbabwe</form:option>
</form:select>
     Address: <form:textarea  id="text" onFocus="country_validation()" path="address"/>
      </div>
      <p class="terms">
        <label>
          <input type="checkbox" name="remember_me" id="remember_me" onFocus="utext_validation()">
           I accept  <a href="http://localhost:8080/fruit/">FruitStore</a>Terms & Conditions
        </label>
      </p>
      <p class="submit"><input type="submit" name="commit" id="commit" value="Sign Up" onClick="formValidation()"></p>
      </form:form>
    </section>
  </div>
  </div>
  <jsp:include page="footer.jsp" />
</body>
</html>