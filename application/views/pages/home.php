<h2><?= $title ?></h2>
<!-- <p>Welome to the application</p> -->

<?php echo form_open_multipart('pages/search_user'); ?>
<div class="row" style="height: 100px;">
	<div class="col-md-4 my-auto">
		<p class="" style="

		margin-bottom: 0px;
    font-weight: 500;
    font-family: cursive;
    font-size: 21px;


		">Welcome to application</p>
	</div>



	
	


<div class="col-md-6 offset-md-2 my-auto" style="display: flex;vertical-align: center;">

	<div class="my-auto" style="width: 67%;
    display: flex;
    margin-left: -49px;">
		<label class="form-check-label" style="width: 81%;
    margin-left: 9px;">Search Email</label>
    <input type="checkbox" style="margin-left: 107px;" class="form-check-input" name="checkEmail" id="Email">
    
  </div>
  <input value="<?php 

if($this->session->userdata('query_text')){

	

echo $this->session->userdata('query_text');





}




   ?>"  type="text" class="form-control rounded goSubmit" placeholder="Search Name/Email" aria-label="Search" aria-describedby="search-addon" name="searchText" id="search">
  <div class="" style="width: 100%;">
    
    <select name="backFront" class="form-control" id="exampleFormControlSelect1">
      <option value="back"<?php if($title === 'Back End Developers'){echo 'selected';} ?>>Back End Developer</option>
      <option value="front"<?php if($title === 'Front End Developers'){echo 'selected';} ?>>Front End Developer </option>
      
      
    </select>
  </div>
  <button style="

  /* float: left; */
    /* width: 20%; */
    padding: 10px;
    background: #2196F3;
    color: white;
    font-size: 17px;
    border: 1px solid grey;
    border-left: none;
    cursor: pointer;
    border-radius: 7px;
    margin-left: 2px;





  " type="submit"><i class="fa fa-search"></i></button>
  
</div>

</div>

</form>

<div class="container">

	<table class="table table-striped">
  <thead>
    <tr>
      <th scope="col">#</th>
      <th scope="col">Name</th>
      <th scope="col">Email</th>
      <th scope="col">Type of Developer</th>
      <th scope="col">Language</th>
      <th scope="col">Framework</th>
      <th scope="col">Date of Registration</th>
    </tr>
  </thead>
  <tbody>



  	<?php 

  	$i = 1;


  	foreach ($users as $users) {
  		
  	 ?>
    <tr>
      <th scope="row"><?php echo $i++; ?></th>
      <td><?php echo $users['name_users']; ?></td>
      <td><?php echo $users['email']; ?></td>
      <td><?php echo $users['type']; ?></td>
      <td><?php echo $users['language']; ?></td>
      <td><?php echo $users['framework']; ?></td>
      <td><?php echo $users['register_date']; ?></td>
    </tr>

<?php } ?>
    
    
  </tbody>
</table>
  
 
</div>



