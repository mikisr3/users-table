<!-- <script>
	var map;
function initMap() {
  map = new google.maps.Map(document.getElementById('map'), {
    center: {lat: -34.397, lng: 150.644},
    zoom: 8
  });
}
</script> -->

<h2><?= $title ?></h2>

<!-- <table border="1px">
	<tr>
		<td rowspan="2">A</td>
		<td>B</td>
	</tr>
	<tr>
	
		<td>C</td>
	</tr>
	
</table>

<table border="1px">
	<tr>
		<td>A</td>
		<td>B</td>
		<td>C</td>
	</tr>
	<tr>
		<td>D</td>
		<td rowspan="2" colspan="2" align="center" valign="bottom">E</td>
	</tr>
	<tr>
		<td>F</td>
	</tr>
</table> -->

  <!--   <div id="wrapp" style="cursor: move;position: absolute;width: 102%">
    	
    	<div id="myDiv" style="

    	display: none;
	    width: 22%;
	    border: 1px solid #00000030;
	    padding: 18px;
	    border-radius: 17px;
	    position: absolute;
	    z-index: 999;
	    background: aliceblue;
	    margin-left: -22%;
    margin-top: -6%;





    	">
    		<label for="latitude" style="margin-right: 11px;">
        Latitude:
    </label>
    <input id="txtLat" name="lat" type="text" style="color:red" value="" />
    <label  style="margin-left: 11px;margin-right: 11px;">
        Longitude:
    </label>
    <input id="txtLng" name="long" type="text" style="color:red" value="" /><br />
    <label for="" style="">
        Title:
    </label>
    <input id="title" name="tit" type="text" style="color:red" value="" />
    <label for="" style="">
        Description:
    </label>
    <textarea name="textarea" id="" cols="30" rows="10"></textarea>
    <div>
    	
    <input type="submit" style="margin-top:11px;width: 92px;" value="send" />
    </div>
    	</div>
    </form>
    <button onclick="document.getElementById('myDiv').style.display = 'none'" style="

    		/*float: right;*/
            margin-top: 11px;
            background: transparent;
            border: none;

    		"><span style="font-weight:600 ;">X</span></button>
    </div>


 -->

 

  <?php echo form_open_multipart('pages/delete_marker'); ?>
  <div id="myDelete" style="

    	display: none;
	    width: 22%;
	    border: 1px solid #00000030;
	    padding: 18px;
	    border-radius: 17px;
	    position: absolute;
	    z-index: 999;
	    background:rgb(197 232 197 / 50%);
	    margin-left: 17%;
    margin-top: -3%;





    	">

    	
  	<div class="form-group">
  		<button type="button" class="close" onclick="document.getElementById('myDelete').style.display = 'none'" aria-label="Close">
  <span aria-hidden="true">&times;</span>
</button>
    
  </div>
  <div class="form-group">
  	<label for="">Marker ID:</label>
    
    <input type="text" class="form-control" id="mark" name="marker" style="color:red" value="">
  </div>
  <button type="submit" class="btn" style="background:#ea43356e ;">Delete</button>
  </div>
</form>


    <?php echo form_open_multipart('pages/create_marker'); ?>
  <div id="myDiv" style="

    	display: none;
	    width: 22%;
	    border: 1px solid #00000030;
	    padding: 18px;
	    border-radius: 17px;
	    position: absolute;
	    z-index: 999;
	    background:rgb(197 232 197 / 50%);
	    margin-left: -22%;
    margin-top: -6%;





    	">

    	
  	<div class="form-group">
  		<button type="button" class="close" onclick="document.getElementById('myDiv').style.display = 'none'" aria-label="Close">
  <span aria-hidden="true">&times;</span>
</button>
    <label for="">Latitude:</label>
    <input type="text" class="form-control" id="txtLat" name="lat" style="color:red" value="" aria-describedby="">
   <!--  <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small> -->
  </div>
  <div class="form-group">
    <label for="">Longitude:</label>
    <input type="text" class="form-control" id="txtLng" name="long" style="color:red" value="">
    
  </div>
  <div class="form-group">
    <label for="">Title:</label>
    <input type="text" class="form-control" name="title" style="" value="" aria-describedby="">
   <!--  <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small> -->
  </div>
  <div class="form-group">
  	<label for="">Description:</label>
  	<textarea name="textarea" rows="4" cols="50" maxlength = "255"  class="form-control" name="body" placeholder="Add Body" style="

    




    "></textarea> 
  	
  </div> 
  <button type="submit" class="btn" style="background:#ea43356e ;">Store Marker</button>
  </div>
</form>

<?php echo $map['html']; ?>

<!-- <script>
	
//Make the DIV element draggagle:
dragElement(document.getElementById("wrapp"));

function dragElement(elmnt) {
  var pos1 = 0, pos2 = 0, pos3 = 0, pos4 = 0;
  if (document.getElementById(elmnt.id + "header")) {
    /* if present, the header is where you move the DIV from:*/
    document.getElementById(elmnt.id + "header").onmousedown = dragMouseDown;
  } else {
    /* otherwise, move the DIV from anywhere inside the DIV:*/
    elmnt.onmousedown = dragMouseDown;
  }

  function dragMouseDown(e) {
    e = e || window.event;
    e.preventDefault();
    // get the mouse cursor position at startup:
    pos3 = e.clientX;
    pos4 = e.clientY;
    document.onmouseup = closeDragElement;
    // call a function whenever the cursor moves:
    document.onmousemove = elementDrag;
  }

  function elementDrag(e) {
    e = e || window.event;
    e.preventDefault();
    // calculate the new cursor position:
    pos1 = pos3 - e.clientX;
    pos2 = pos4 - e.clientY;
    pos3 = e.clientX;
    pos4 = e.clientY;
    // set the element's new position:
    elmnt.style.top = (elmnt.offsetTop - pos2) + "px";
    elmnt.style.left = (elmnt.offsetLeft - pos1) + "px";
  }

  function closeDragElement() {
    /* stop moving when mouse button is released:*/
    document.onmouseup = null;
    document.onmousemove = null;
  }
}

</script> -->




