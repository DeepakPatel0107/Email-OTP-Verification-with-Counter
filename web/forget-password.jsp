<!DOCTYPE html>
<html lang="en">

<head>
    <style>
        
        #time{
  font-size: 30px;
}
        
    </style>
	<!-- META ============================================= -->
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="keywords" content="" />
	<meta name="author" content="" />
	<meta name="robots" content="" />
	
	<!-- DESCRIPTION -->
	
	<!-- FAVICONS ICON ============================================= -->
	<link rel="icon" href="assets/images/favicon.ico" type="image/x-icon" />
	<link rel="shortcut icon" type="image/x-icon" href="assets/images/favicon.png" />
	
	<!-- PAGE TITLE HERE ============================================= -->
	<title>CORONA: COVID 19 </title>
	
	<!-- MOBILE SPECIFIC ============================================= -->
	<meta name="viewport" content="width=device-width, initial-scale=1">
	
	<!-- All PLUGINS CSS ============================================= -->
	<link rel="stylesheet" type="text/css" href="assets/css/assets.css">
	
	<!-- TYPOGRAPHY ============================================= -->
	<link rel="stylesheet" type="text/css" href="assets/css/typography.css">
	
	<!-- SHORTCODES ============================================= -->
	<link rel="stylesheet" type="text/css" href="assets/css/shortcodes/shortcodes.css">
	
	<!-- STYLESHEETS ============================================= -->
	<link rel="stylesheet" type="text/css" href="assets/css/style.css">
	<link class="skin" rel="stylesheet" type="text/css" href="assets/css/color/color-1.css">
	
</head>
<body id="bg">
<div class="page-wraper">
	<div id="loading-icon-bx"></div>
	<div class="account-form">
		<div class="account-head" style="background-image:url(assets/images/2.jpg);">
			<a href="index.jsp"><img src="assets/images/logo-white-2.png" alt=""></a>
		</div>
		<div class="account-form-inner">
			<div class="account-container">
				<div class="heading-bx left">
					<h2 class="title-head">Forget <span>Password</span></h2>
                                        <p>Login Your Account <a href="index.jsp">Click here</a></p>
				</div>	
				<form action="EmailSendingServlet" method="post" class="contact-bx" >
					<div class="row placeani">
						<div class="col-lg-12">
							<div class="form-group">
								<div class="input-group">
									<label>Your Email Address</label>
									<input name="recipient" id="recipient" type="text" required="" class="form-control">
								<span id="user_id_error" style="color: red"></span>
                                                                </div>
							</div>
						</div>
                                            
                                            <div>
 
						<div class="col-lg-12 m-b30">
                                                    <button  type="submit" class="btn button-md" onclick="ValidateAndLogin()">Submit</button>
						</div>
					</div>
                                            <span id="error" style="color: red"></span>
                                        </div>
				</form>
                             
			</div>
		</div>
	</div>
</div>
    
        <script>
            
            
             function ValidateAndLogin()
            {
               
                var u_id = $("#recipient").val().trim();
             
                if (u_id.length === 0 )
                {
                    document.getElementById("user_id_error").innerHTML = "Please Enter EmailID!";
                   
                
                } else
                {
                    document.getElementById("user_id_error").innerHTML = "";
                    
                    document.getElementById("error").innerHTML = "";
                    $.ajax({
                        type: 'POST',
                        url: "forgetPasswordValidate.jsp",
                        data: {u_id: u_id},
                        success: function (msg) {
                            $("#error").empty();
                            $("#error").append(msg);
                            
                        }
                    });
                }
            }
            
            
        </script>
        
<!-- External JavaScripts -->
<script src="assets/js/jquery.min.js"></script>
<script src="assets/vendors/bootstrap/js/popper.min.js"></script>
<script src="assets/vendors/bootstrap/js/bootstrap.min.js"></script>
<script src="assets/vendors/bootstrap-select/bootstrap-select.min.js"></script>
<script src="assets/vendors/bootstrap-touchspin/jquery.bootstrap-touchspin.js"></script>
<script src="assets/vendors/magnific-popup/magnific-popup.js"></script>
<script src="assets/vendors/counter/waypoints-min.js"></script>
<script src="assets/vendors/counter/counterup.min.js"></script>
<script src="assets/vendors/imagesloaded/imagesloaded.js"></script>
<script src="assets/vendors/masonry/masonry.js"></script>
<script src="assets/vendors/masonry/filter.js"></script>
<script src="assets/vendors/owl-carousel/owl.carousel.js"></script>
<script src="assets/js/functions.js"></script>
<script src="assets/js/contact.js"></script>
<script src='assets/vendors/switcher/switcher.js'></script>
</body>

</html>
