var ck_username = /^[A-Za-z0-9_]{1,20}$/;

var ck_password=  /^[A-Za-z0-9!@#$%^&*()_]{6,20}$/;
var ck_repassword =  /^[A-Za-z0-9!@#$%^&*()_]{6,20}$/;

var fname = /^[A-Za-z]+$/;
var lname = /^[A-Za-z]+$/;
	

var mail = /^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/;
var phn = /^\d{10}$/;
var loc = /^[A-Za-z]+$/;

function validate(registration)
{
	var username = registration.username.value;
	var password = registration.password.value;
	var repassword = registration.repassword.value;
	var firstname = registration.firstname.value;
	var lastname = registration.lastname.value;
	var email = registration.email.value;
	var phone = registration.phone.value;
	var location = registration.location.value;
	
	
	if (!ck_username.test(username))
	{
		  //errors[errors.length] = "Enter a valid UserName.";
		alert("Error: Enter a valid UserName!");
		registration.username.focus();
		return false;
	}
	if (!ck_password.test(password))
	{
		//errors[errors.length] = "Enter a valid Password ";
		alert("Error: Enter a valid Password!");
		registration.password.focus();
	    return false;
	}
	if (password != repassword)
	{
		//errors[errors.length] = "Enter a valid Password ";
		alert("Error: Enter a valid rePassword!");
		registration.repassword.focus();
	    return false;
	}
	
	if (!fname.test(firstname))
	{
		  //errors[errors.length] = "Enter a valid UserName.";
		alert("Error: Enter a valid FirstName!");
		registration.firstname.focus();
		return false;
	}
		if (!lname.test(lastname))
	{
		  //errors[errors.length] = "Enter a valid UserName.";
		alert("Error: Enter a valid LastName!");
		registration.lastname.focus();
		return false;
	}
		if (!mail.test(email))
	{
		  //errors[errors.length] = "Enter a valid UserName.";
		alert("Error: Enter a valid Email!");
		registration.email.focus();
		return false;
	}
		
	if (!phn.test(phone))
	{
		  //errors[errors.length] = "Enter a valid UserName.";
		alert("Error: Enter a valid Phone No!");
		registration.phone.focus();
		return false;
	}
	if (!loc.test(location))
	{
		  //errors[errors.length] = "Enter a valid UserName.";
		alert("Error: Enter a valid Location!");
		registration.location.focus();
		return false;
	}
	return true;
}