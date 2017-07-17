
function check(form)
{
 
 if(form.username.value == "admin" && form.pswrd.value == "admin")
  {
	
    window.open('addemployee.jsp')
  }
 else
 {
   alert("Error Password or Username")
  }
}
