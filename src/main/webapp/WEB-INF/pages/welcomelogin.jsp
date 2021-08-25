<html>
<head>
    <style>

    * {
      margin: 0;
      padding: 0;
    }

    html {
      font-family: 'Lato', Arial, Helvetica, sans-serif;
      font-size: 10px;
      font-weight: 400;
    }

    body {
      min-height: 100vh;
      min-width: 100vw;
      background-image: -webkit-linear-gradient(45deg, #00acee 0%, #00acee 100%);
      background-image: -moz-linear-gradient(45deg, #00acee 0%, #00acee 100%);
      background-image: linear-gradient(45deg, #00acee 0%, #00acee 100%);
      display: flex;
      justify-content: center;
      align-items: center;
    }

    #signup-box {
      background-color: #fff;
      border-radius: 30px;
      -webkit-box-shadow: 0px 0px 76px 0px rgba(0, 0, 0, 0.20);
      -moz-box-shadow: 0px 0px 76px 0px rgba(0, 0, 0, 0.20);
      box-shadow: 0px 0px 76px 0px rgba(0, 0, 0, 0.20);
      text-align: center;
      height: 100%;
      max-width: 422px;
      width: 45%;
    }

    #signup-box h1 {
      color: #00acee;
      font-size: 1.8rem;
      font-weight: 700;
      margin-top: 40px;
    }

    #signup-box p {
      color: #222;
      font-size: 1.6rem;
      margin: 5px 0 30px 0;
      padding: 0 15%;
    }

    #signup-form {
      width: 70%;
      margin: auto;
      text-align: left;
      font-size: 14px;
    }

    #signup-form label {
      color: #222;
      font-weight: 700;
      padding-left: 10px;
    }

    #signup-form input {
      height: 35px;
      width: calc(100% - 10px);
      border: 1px solid #b4b4b4;
      border-radius: 5px;
      margin: 6px 0 20px 0;
      padding-left: 10px;
      outline: none;
    }

    #signup-form input::placeholder {
      color: #b4b4b4;
    }

    #signup-form button {
      background-image: -webkit-linear-gradient(-45deg, #00acee 0%, #00acee 100%);
      background-image: -moz-linear-gradient(-45deg, #00acee 0%, #00acee 100%);
      background-image: linear-gradient(-45deg, #00acee 0%, #00acee 100%);
      border: none;
      border-radius: 30px;
      color: #fff;
      cursor: pointer;
      outline: none;
      height: 45px;
      width: 100px;
      display: block;
      margin: auto;
      margin-bottom: 40px;
      text-transform: uppercase;
      font-size: 1.6rem;
      font-weight: 900;
    }

    #signup-form button:hover {
      background-image: -webkit-linear-gradient(45deg, #00acee 0%, #00acee 100%);
      background-image: -moz-linear-gradient(45deg, #00acee 0%, #00acee 100%);
      background-image: linear-gradient(45deg, #00acee 0%, #00acee 100%);
      -webkit-box-shadow: 0px 0px 20px 0px rgba(0, 0, 0, 0.3);
      -moz-box-shadow: 0px 0px 20px 0px rgba(0, 0, 0, 0.3);
      box-shadow: 0px 0px 20px 0px rgba(0, 0, 0, 0.3);
    }

    @media screen and (max-width: 800px) {
      #signup-box {
        width: 70%;
      }
    }

    @media screen and (max-width: 600px) {
      #signup-box {
        max-width: none;
        width: 100%;
        border-radius: unset;
        box-shadow: none;
      }
    }
    </style>
    <script
      src="https://code.jquery.com/jquery-3.5.0.min.js"
      integrity="sha256-xNzN2a4ltkB44Mc/Jz3pT4iU1cmeR0FkXs4pru/JxaQ="
      crossorigin="anonymous"></script>
</head>
<body>
 <section id="signup-box">
  <h1>Login your account</h1>
  <p>Welcome to social network of coders by Mission Helix</p>
  <form id="signup-form">
    <label for="email">Email</label><br>
    <input id="signup-email" type="email" name="email" placeholder="andrea27@email.com"><br>
    <label for="password">Password</label><br>
    <input id="signup-password" type="password" name="name" placeholder="******"><br>
    <p style="color:red; display:none" id="signuperror"></p>
    <button type="button" id="btn-signup">LOGIN</button>
  </form>
</section>

<script>

function validateSignupForm(){
    var email= $("#signup-email").val();
    var password= $("#signup-password").val();

    var error = "";
    if(!email){
        error+="Email is empty.";
    }

    if(!password){
        error+="Password is empty.";
    }
    if(password.length <= 3){
            error+="Password length must be greater than 3 characters";
        }

    $("#signuperror").html(error);




    if(error.length>0){
            return false;
        }
        return true;
}

    $("#btn-signup").click(
    function()
    {
        var isFormValid = validateSignupForm();
    if(isFormValid){
      $("#signuperror").hide();
      var user={
        "email":$("#signup-email").val(),
        "password":$("#signup-password").val()

      }
      $.ajax({
      type: "POST",
      url: "/login/welcome",
      data :JSON.stringify(user),
      success: function(response){

       if(!!response){

            if(response.is_logined === true){

                location.href="/user/welcome";
            }
            else{
                $("#signup-password").val("");
                $("#signuperror").html(response.message);
                $("#signuperror").show();
            }
       }
       },
      contentType:'application/json'
            });
    }
    else{
     $("#signuperror").show();

}
    });

</script>


</body>
</html>
