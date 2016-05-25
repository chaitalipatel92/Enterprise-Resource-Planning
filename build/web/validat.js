
function checkEmail()
   {
     var email = document.getElementById('email');
     var filter = /^([a-zA-Z0-9_\.\-])+\@(([a-zA-Z0-9\-])+\.)+([a-zA-Z0-9]{2,4})+$/;
     if (!filter.test(email.value))
        {
          alert('Please provide a valid email address');
          email.value="";
          email.focus();
          document.form1.yash.value="yash";


        }
    }
  function comparepass()
  {
      var password=document.getElementById('password');
      var cpassword=document.getElementById('cpassword');

      if((password).value!=(cpassword).value)
          {
              alert("Password and Confirm password do not match ! ");
              password.value="";
              cpassword.value="";
              password.focus();
          }


  }
  function lenghtpass()
  {
      var password=document.getElementById('password');
      if(8>password.value.length )
          {
              alert("Password should be between 8-14 charachter ! ");
              password.value="";
              password.focus();
          }
       if(14<password.value.length)
           {
              alert("Password should be between 8-14 charachter ! ");
              password.value="";
              password.focus();
          }
  }
  function showname()
  {
            var check=true;
            var name=document.getElementById('name').value;
            var surname=document.getElementById('surname').value;
            var email=document.getElementById('email').value;
            var password=document.getElementById('password').value;
            var cpassword=document.getElementById('cpassword').value;
            var answer=document.getElementById('answer').value;
            var no=document.getElementById('number').value;
            var question=document.getElementById('question').selectedIndex;
            var office=document.getElementById('office').selectedIndex;
           // var str1 = document.getElementById('txtCaptcha').value;
        //var str2 = document.getElementById('txtInput').value;
        //alert(str1);
        //alert(str2);
            
         var dob=document.getElementById('datepick2').value;

            if(office==0)
              {
                  document.getElementById("office1").innerHTML="Select Office";

                  check=false;
              }
              if(dob==0)
              {
                  document.getElementById("dob1").innerHTML="Select Date Of Birth";

                  check=false;
              }
              if(name==0)
              {
                x= document.getElementById("name1");
                x.innerHTML="Enter Given Name";
                 check=false;

              }
              if(name>45)
              {
                k= document.getElementById("name1");
                k.innerHTML="Name 45";
                 check=false;

              }
              if(surname==0)
              {
                  z=document.getElementById("surname1");
                  z.innerHTML="Enter Surname";
                    check=false;
              }
                           if(email==0)
              {
                  document.getElementById("email1").innerHTML="Enter email";
                  check=false;
              }
                            if(password==0)
              {
                  document.getElementById("password1").innerHTML="Enter Password";
                  
                  check=false;
              }
              if(cpassword==0)
              {
                  document.getElementById("cpassword1").innerHTML="Enter Confirm Password";
                  
                  check=false;
              }
              
            
              if(answer==0)
              {
                  document.getElementById("answer1").innerHTML="Enter Answer";
                  
                  check=false;
              }

                if(no==0)
              {
                  document.getElementById("number1").innerHTML="Enter Character Displayed";

                  check=false;
              }

                if(question==0)
              {
                  document.getElementById("question1").innerHTML="Select Hint Question";

                  check=false;
              }
             return check;
  }

   
  
