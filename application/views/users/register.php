

<?php //echo validation_errors(); ?>

<?php echo form_open('users/register'); ?>

<div class="row" style="margin-top: 100px;">
	<div class="col-md-4 offset-md-4" style="

	padding: 24px;
    border-radius: 33px;
	box-shadow: inset -3px -3px 7px #ffffff73, inset 3px 3px 5px rgb(94 104 125 / 29%);
    border-bottom: 1px solid rgba(191,191,191,0.5);
    border-right: 1px solid rgba(191,191,191,0.5);

	">
		<h1 class="text-center"><?= $title; ?></h1>
				<div class="form-group">
					<label for="">Name</label>
					<input type="text" class="form-control" name="name" placeholder="<?php 

					if(form_error('name')){

						      echo form_error('name');

						    }else{echo 'Name';}




					 ?>" style = "

					  <?php if(form_error('name')){ ?>

     	                  border-color: red;
      

                             <?php } ?>

					  "







					  >
				</div>
					
					<div class="form-group">
					<label for="">Email</label>
					<input type="email" class="form-control" name="email" placeholder="<?php 

						if(form_error('email')){

						      echo form_error('email');

						    }else{echo "Email";}


					 ?>" style = "

					  <?php if(form_error('email')){ ?>

     	                  border-color: red;
      

                             <?php } ?>


					 ">
				</div>

				<label>Type of Developer:</label>
	<select style="

	<?php if(form_error('type')){ ?>

     	                  border: 1px solid red;
      

                             <?php } ?>





	"     name="type" class="form-control type selectFilter" data-target="language">

				<option value="-1">-- Developer Type --</option>
				<option data-ref="bck" value="backend">Back End Developer</option>
				<option data-ref="frn" value="frontend">Front End Developer</option>

	</select>

			<label style="margin-top: 15px;">Language</label>
			<select style="

			<?php if(form_error('lang')){ ?>

     	                  border: 1px solid red;
      

                             <?php } ?>





			" name="lang" class="form-control language selectFilter" data-target="framework">

				<option value="-1">-- Language Type --</option>
				<option value="PHP" data-ref="phpfrm" data-belong="bck">PHP</option>
				<option value="NodeJs" data-ref="nodefrm" data-belong="bck">NodeJs</option>
				<option value="Angular" data-ref="angfrm" data-belong="frn">Angular</option>
				<option value="React" data-ref="reactfrm" data-belong="frn">React</option>
				<option value="Vue" data-ref="vuefrm"  data-belong="frn">Vue</option>
				

			</select>
			<label style="margin-top: 15px;">FrameWork</label>
			<select style="

			<?php if(form_error('frame')){ ?>

     	                  border: 1px solid red;
      

                             <?php } ?>






			" name="frame" class="form-control framework selectFilter">

				<option value="-1">-- Framework Type --</option>
				<option value="Symphony" data-belong="phpfrm">Symphony</option>
				<option value="Laravel" data-belong="phpfrm">Laravel</option>
				<option value="Lumen" data-belong="phpfrm">Lumen</option>
				<option value="Expres" data-belong="nodefrm">Expres</option>
				<option value="NestJS" data-belong="nodefrm">NestJS</option>
				<option value="AngularJs" data-belong="angfrm">AngularJs</option>
				<option value="Angular 2" data-belong="angfrm">Angular 2</option>
				<option value="React native" data-belong="reactfrm">React native</option>
				<option value="No Framework" data-belong="vuefrm" hidden="hidden"></option>
				
				

			</select>

  
   
  
  
					<div class="form-group">
					<label style="margin-top: 15px;">Username</label>
					<input type="text" class="form-control" name="username" placeholder="<?php 


					if(form_error('username')){

						      echo form_error('username');

						    }else{echo "Username";}



					 ?>" style="

					 					  <?php if(form_error('username')){ ?>

						     	                  border-color: red;
						      

						                             <?php } ?>




					  ">
				</div>
					<div class="form-group">
					<label for="">Password</label>
					<input type="password" class="form-control" name="password" style="

					 

						<?php if(form_error('password')){ ?>

						     	                  border-color: red;
						      

						                             <?php } ?>

					" placeholder="<?php
					if(form_error('password')){

						      echo form_error('password');

						    }else{echo "Password";}







					?>"


					>
				</div>
					<div class="form-group">
					<label for="">Confirm Password</label>
					<input type="password" class="form-control" name="password2" placeholder="<?php
					if(form_error('password2')){

						      echo form_error('password2');

						    }else{echo "Confirm Password";}







					?>" style = "

					 <?php if(form_error('password2')){ ?>

						     	                  border-color: red;
						      

						                             <?php } ?>

					">
				</div>

				<button type="submit" class="btn btn-primary btn-block">Submit</button>
	</div>
</div>




<?php echo form_close(); ?>

<script>

	if($('name').val()) {
    $('name').focus();
}



	







</script>



