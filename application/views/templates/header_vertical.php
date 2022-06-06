
<html>
<head>







   

	
	<!-- <meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0"> -->
	<title>Simple App</title>

	<link type="text/css" rel="stylesheet" href="<?php echo base_url() ?>assets/css/style.css" rel="stylesheet">
	<link type="text/css" rel="stylesheet" href="<?php echo base_url() ?>assets/css/list.css" rel="stylesheet">
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
	<link type="text/css"  href="<?php echo base_url() ?>assets/bootstrap/bootstrap.css" rel="stylesheet">
	<link type="text/css"  href="<?php echo base_url() ?>assets/bootstrap/bootstrap.min.css" rel="stylesheet">
	<script
  src="https://code.jquery.com/jquery-2.2.4.min.js"
  integrity="sha256-BbhdlvQf/xTY9gja0Dq3HiwQF8LaCRTXxZKRutelT44="
  crossorigin="anonymous"></script>
 

	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    
    <script async defer
  src="https://maps.googleapis.com/maps/api/js?key=AIzaSyA1B-Ti7B-eYdEKoSwCodEhNxuMsRB0pK4&callback=initMap">
</script>
<?php

   if(explode("/",current_url())[4] === "about"){

    echo $map['js'];

    


   }




    ?>
	<!-- <script type="text/javascript" src="jquery-3.2.1.min.js"></script> -->

	<link type="text/css" rel="stylesheet" href="<?php echo base_url() ?>assets/css/style.css" rel="stylesheet">
	<script   src="<?php echo base_url() ?>assets/jquery/jquery.min.js"></script>

    <script>
        var clicked = true;
function showHide(){



    

var sidebarToggle = document.body.querySelector('#sidebarToggle');

var sidebarHide = document.body.querySelector('#sidebar-wrapper');

if(clicked){

                sidebarToggle.src = "http://localhost/blog/assets/images/posts/open.jpg";

                sidebarHide.style.display = "none";

                clicked = false;


            }else{

                 sidebarToggle.src = "http://localhost/blog/assets/images/posts/hide.jpg";

                 sidebarHide.style.display = "block";

                 clicked = true;


            }



}




    </script>
	<script src="https://unpkg.com/@panzoom/panzoom@4.4.3/dist/panzoom.min.js"></script>
	

	<script   src="<?php echo base_url() ?>assets/js/bootstrap.min.js"></script>
    
	
	<script src="http://cdn.ckeditor.com/4.5.11/standard/ckeditor.js"></script>
  <script src="http://cdn.ckeditor.com/4.5.11/standard/plugins/clipboard/dialogs/paste.js"></script>
	
		<script type="text/javascript" src="https://www.amcharts.com/lib/3/amcharts.js"></script>
		<script type="text/javascript" src="https://www.amcharts.com/lib/3/serial.js"></script>

	 
	
</head>
<body>
	<div class="d-flex" id="wrapper">
            <!-- Sidebar-->
            <div  class="border-end bg-white" id="sidebar-wrapper">
                <div class="sidebar-heading border-bottom bg-light">Simple App</div>
                <div class="list-group list-group-flush" id="links">


                     
                    
                    <a style="font-size: 22px;
    font-weight: 700;" class="list-group-item list-group-item-action list-group-item-light p-3 nav-link dropdown-toggle show" data-toggle="collapse" href="#back"  href="#">BackEnd <span class="countStyle">(<?php  echo $backend; ?>)</span></a>
                    <div id="back" class="panel-collapse collapse">
                        <ul style="background-color: #ececf6;" class="list-group">
                            <li style="margin-left: 7px;"><a class="list-group-item list-group-item-action list-group-item-light p-3 nav-link dropdown-toggle show" data-toggle="collapse" href="#subPHP"  href="#">PHP <span class="countStyle">(<?php echo $PHP;     ?>)</span></a></li>
                            <div id="subPHP" class="panel-collapse collapse">
                        <ul class="list-group">
                            <a style="margin-left: 15px;color: black;background-color: #fff;"  href="#mite4" id="4"><li class="alt">Symphony <span class="countStyle">(<?php echo $Symphony;     ?>)</span></li></a>
                            <a style="margin-left: 15px;color: black;background-color: #fff;"  href="#mite4" id="4"><li class="alt">Laravel <span class="countStyle">(<?php echo $Laravel;     ?>)</span></li></a>
                            <a style="margin-left: 15px;color: black;background-color: #fff;"  href="#mite4" id="4"><li class="alt">Lumen <span class="countStyle">(<?php echo $Lumen;     ?>)</span></li></a>
                            
                            
                        </ul>
                        




                    </div>
                             <li style="margin-left: 7px;"><a class="list-group-item list-group-item-action list-group-item-light p-3 nav-link dropdown-toggle show" data-toggle="collapse" href="#subNode"  href="#">NodeJs <span class="countStyle">(<?php echo $NodeJs;     ?>)</span></a></li>
                            <div id="subNode" class="panel-collapse collapse">
                        <ul class="list-group">
                            <a style="margin-left: 15px;color: black;background-color: #fff;"  href="#mite4" id="4"><li class="alt">Expres <span class="countStyle">(<?php echo $Expres;     ?>)</span></li></a>
                            <a style="margin-left: 15px;color: black;background-color: #fff;"  href="#mite4" id="4"><li class="alt">NestJS <span class="countStyle">(<?php echo $NestJS;     ?>)</span></li></a>
                           
                            
                            
                        </ul>
                        




                    </div>
                            
                            
                        </ul>
                        




                    </div>

                    <a style="font-size: 22px;
    font-weight: 700;border-top: 1px solid rgba(0,0,0,.125);" class="list-group-item list-group-item-action list-group-item-light p-3 nav-link dropdown-toggle show" data-toggle="collapse" href="#front"  href="#">FrontEnd <span class="countStyle">(<?php echo $frontend;     ?>)</span></a>
                    <div id="front" class="panel-collapse collapse">
                        <ul style="background-color: #ececf6;" class="list-group">
                            <li style="margin-left: 7px;"><a class="list-group-item list-group-item-action list-group-item-light p-3 nav-link dropdown-toggle show" data-toggle="collapse" href="#subAngular"  href="#">Angular <span class="countStyle">(<?php echo $Angular;     ?>)</span></a></li>
                            <div id="subAngular" class="panel-collapse collapse">
                        <ul class="list-group">
                            <a style="margin-left: 15px;color: black;background-color: #fff;"  href="#mite4" id="4"><li class="alt">AngularJs <span class="countStyle">(<?php echo $AngularJs;     ?>)</span></li></a>
                            <a style="margin-left: 15px;color: black;background-color: #fff;"  href="#mite4" id="4"><li class="alt">Angular 2 <span class="countStyle">(<?php echo $Angular_2;     ?>)</span></li></a>
                            
                            
                            
                        </ul>
                        




                    </div>
                             <li style="margin-left: 7px;"><a class="list-group-item list-group-item-action list-group-item-light p-3 nav-link dropdown-toggle show" data-toggle="collapse" href="#subReact"  href="#">React <span class="countStyle">(<?php echo $React;     ?>)</span></a></li>
                            <div id="subReact" class="panel-collapse collapse">
                        <ul class="list-group">
                            <a style="margin-left: 15px;color:black;background-color: #fff;"  href="#mite4" id="4"><li class="alt">React native <span class="countStyle">(<?php echo $React_native;     ?>)</span></li></a>
                           
                           
                            
                            
                        </ul>
                        




                    </div>
                            
                            
                        </ul>
                        <li style="margin-left: 7px;list-style: none;"><a class="list-group-item list-group-item-action list-group-item-light p-3 nav-link" data-toggle="" href="#"  href="#">Vue <span class="countStyle">(<?php echo $Vue;     ?>)</span></a></li>
                        



                    </div>
                    
                </div>
            </div>
            <!-- Page content wrapper-->
            <div id="page-content-wrapper">
                <!-- Top navigation-->
                <nav class="navbar navbar-expand-lg navbar-light bg-light border-bottom">
                    <div class="container-fluid">
                        <img onclick="showHide()" src="<?php echo base_url() ?>assets/images/posts/hide.jpg" id="sidebarToggle" style="

                        width: 43px;
                        height: 49px;
                        cursor: pointer;
                       


                        " alt="">
                        <!-- <button class="btn btn-primary" id="sidebarToggle">Toggle Menu</button> -->
                        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation"><span class="navbar-toggler-icon"></span></button>

                        <div class="collapse navbar-collapse" id="navbarSupportedContent">
                            <ul class="navbar-nav ms-auto mt-2 mt-lg-0" id="myTab">
                                <li class="nav-item btn1"><a class="nav-link active" href="<?php echo base_url() ?>home">Home</a></li>
                                <!-- <li class="nav-item btn1"><a class="nav-link" href="<?php echo base_url() ?>about">About</a></li>
                                <li class="nav-item btn1"><a class="nav-link" href="<?php echo base_url() ?>posts">Blog</a></li>
                                <li class="nav-item btn1"><a class="nav-link" href="<?php echo site_url('categories') ?>">Categories</a></li> -->
                                <!-- <li class="nav-item dropdown">
                                    <a class="nav-link dropdown-toggle" id="navbarDropdown" href="#" role="button" data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Create</a>
                                    <div class="dropdown-menu dropdown-menu-end" aria-labelledby="navbarDropdown">
                                        <?php if($this->session->userdata('logged_in')) {?>
                                        <a class="dropdown-item" href="<?php echo base_url(); ?>posts/create">Post</a>
                                        <a class="dropdown-item" href="<?php echo base_url() ?>categories/create">Category</a>
                                        <?php } ?>
                                        <div class="dropdown-divider"></div>

                                         <?php if(!$this->session->userdata('logged_in')) {?>
                                        <a class="dropdown-item" href="<?php echo base_url(); ?>users/login">Login</a>

                                         <?php }else{ ?> 

                                         <a class="dropdown-item" href="<?php echo base_url(); ?>users/logout">Logout</a>




                                         <?php } ?>






                                          
                                          <?php if(!$this->session->userdata('logged_in')) {?>
                                         <a class="dropdown-item" href="<?php echo base_url(); ?>users/register">Register</a>

                                          <?php } ?>
                                    </div>
                                </li> -->
                                <!-- <a class="dropdown-item" href="http://localhost/blog/users/logout">Logout</a> -->
                                <li class="nav-item btn1"><a class="nav-link" href="http://localhost/blog/users/logout">Logout</a></li>
                            </ul>
                        </div>
                    </div>
                </nav>

                <p class="my-auto" style="padding-left: 14px;"><span>Logged as : </span><strong><?php echo $this->session->userdata('username'); ?></strong></p>




    <div class="container" style="

    margin-top: 39px;
   

    ">

    	<?php if($this->session->flashdata('user_registered')){ ?>

    		<p class="alert alert-success"><?php echo $this->session->flashdata('user_registered'); ?></p>

    	<?php } ?>
    	<?php if($this->session->flashdata('post_created')){ ?>

    		<p class="alert alert-success"><?php echo $this->session->flashdata('post_created'); ?></p>

    	<?php } ?>
    	<?php if($this->session->flashdata('post_updated')){ ?>

    		<p class="alert alert-success"><?php echo $this->session->flashdata('post_updated'); ?></p>

    	<?php } ?>
    	<?php if($this->session->flashdata('category_created')){ ?>

    		<p class="alert alert-success"><?php echo $this->session->flashdata('category_created'); ?></p>

    	<?php } ?>
    	<?php if($this->session->flashdata('login_failed')){ ?>

    		<p class="alert alert-danger"><?php echo $this->session->flashdata('login_failed'); ?></p>

    	<?php } ?>
    	<?php if($this->session->flashdata('user_login')){ ?>

    		<p class="alert alert-success"><?php echo $this->session->flashdata('user_login'); ?></p>

    	<?php } ?>
    	<?php if($this->session->flashdata('user_loggedout')){ ?>

    		<p class="alert alert-success"><?php echo $this->session->flashdata('user_loggedout'); ?></p>

    	<?php } ?>
    	<?php if($this->session->flashdata('category_deleted')){ ?>

    		<p class="alert alert-success"><?php echo $this->session->flashdata('category_deleted'); ?></p>

    	<?php } ?>
    	<?php if($this->session->flashdata('images_uploaded')){ ?>

    		<p class="alert alert-success"><?php echo $this->session->flashdata('images_uploaded'); ?></p>

    	<?php } ?>

      <?php if($this->session->flashdata('comment_deleted')){ ?>

        <p class="alert alert-success"><?php echo $this->session->flashdata('comment_deleted'); ?></p>

      <?php } ?>
      <?php if($this->session->flashdata('marker_created')){ ?>

        <p class="alert alert-success"><?php echo $this->session->flashdata('marker_created'); ?></p>

      <?php } ?>
       <?php if($this->session->flashdata('delete_created')){ ?>

        <p class="alert alert-success"><?php echo $this->session->flashdata('delete_created'); ?></p>

      <?php } ?>

     
	


       
