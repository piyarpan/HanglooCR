
function registerform(){
	var name,text,email,phone,opt;
	name=document.getElementById("name").value
	email=document.getElementById("email").value
	phone=document.getElementById("phone").value
	text=document.getElementById("text").value
	opt=prompt("Welcome" +name+ "press 1 to continue" );
	if(name=="" && text=="" && email=="" && tel=="")
 	{
 		alert("Error please fill all the fields");
 		return false;
 	}
 	else if (name=="") {
 		alert("Error please fill the username");
 		return false;
 	}
 	else if (email=="") {
 		alert("Error please fill the email");
 		return false;
 	}
 	else if (phone=="") {
 		alert("Error please fill the phone number");
 		return false;
 	}
 	else if (text=="") {
 		alert("Error please fill the message");
 		return false;
 	}
 	else
 	{
 		if (opt==1) {
 		
 		 window.location="index.html"
 		 }
 		 else
 		 {
 		 	alert('Go to home')
 		 }
 		return false;
 	}
return
}
