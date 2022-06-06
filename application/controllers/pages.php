<?php 



/**
 * 
 */
class Pages extends CI_Controller
{


	public function __construct() 
	{
        parent:: __construct();

        $this->load->helper('url','form','date');
        $this->load->library("googlemaps");
		// $this->load->model('post_model');
		$this->load->library('session');
    }


	
	

	public function view($page = 'home') {

		if (!file_exists(APPPATH.'views/pages/'.$page.'.php')) {

			show_404();
			
		}

		$data['title'] = ucfirst($page);

		

		

		$x = $this->post_model->get_markers();

		for ($i = 0; $i < count($x); $i++) {

			$marker = array();
			$marker['id'] = intval($x[$i]['marker_id']);
			$marker['ondblclick'] = "



             
             document.getElementById('myDelete').style.display='grid';

			document.getElementById('mark').value=".$marker['id'].";";

			// echo gettype($marker['id']);

			$marker['title'] = $x[$i]['marker_Title'];

			

			

			 $marker['position'] = floatval($x[$i]['latitude']).", ".floatval($x[$i]['longitude']); 

			  $marker['infowindow_content']='<div id="content">'.
    '<div id="siteNotice">'.
    "</div>".
    '<h1 id="firstHeading" class="firstHeading">'.$x[$i]['marker_Title'].'</h1>'.
    '<div id="bodyContent">'.
    "<p>".$x[$i]['description']."</p>".
    '<p>Date Created : <b>'.$x[$i]['time_added'].'</b></p>'.
    '<a href="https://www.w3schools.com">Visit W3Schools.com!</a>'.
    "</div>".
    "</div>";

			  //var_export($this->googlemaps->markersInfo);

			 // echo $marker['position'];
			$this->googlemaps->add_marker($marker);


                 }

                 $config = array();
		$config['geocodeCaching'] = TRUE;

		if(count($x)>=1){
		$config['center'] = floatval($x[count($x)-1]['latitude']).", ".floatval($x[count($x)-1]['longitude']); 

	}else{

		$config['center'] = 'auto';
	}
		$config['zoom'] = '7';
		$this->googlemaps->initialize($config);

		





//------------------------------------------------------------------------------

		$marker = array();
		if(count($x)>=1){
		$marker['position'] = $x[count($x)-1]['latitude'].", ".$x[count($x)-1]['longitude'];
	}else{
		$marker['position']='auto';
	}
		$marker['draggable'] = TRUE;
		$marker['icon'] = 'https://developers.google.com/maps/documentation/javascript/examples/full/images/beachflag.png';									
		$marker['icon_size'] = '30,30';
		$marker['icon_anchor'] = '2,35';	
		$marker['zIndex'] = '999';
		
		 $marker['ondragend']="


		 document.getElementById('myDiv').style.display='grid';

		 document.getElementById('txtLat').value=event.latLng.lat();

		 document.getElementById('txtLng').value=event.latLng.lng();

		 ";

		 $marker['animation'] = 'DROP'; 

		  

		 
		
		$this->googlemaps->add_marker($marker);
//--------------------------------------------------------------------------------

		// $circle['center'] = '36.87706245324961, 30.78561208763122';							
		// // $circle['clickable'] = TRUE;							
		// $circle['radius'] = 1000000;	

		// $this->googlemaps->add_circle($circle);	

		$polyline['points'] = array("skopje","strumica");

		$this->googlemaps->add_polyline($polyline);



		

		
		

		$data['map'] = $this->googlemaps->create_map();

		




		// print_r($data['map']['markers']);


		$this->load->view('templates/header_vertical',$data);
		$this->load->view('pages/'.$page,$data);
		$this->load->view('templates/footer');







		
	}

	public function create_marker(){

		if(!$this->session->userdata('logged_in')){

		redirect('users/login');

	}

		    $this->post_model->create_marker();

			$this->session->set_flashdata('marker_created','Marker Created');

			redirect('about');



	}

	public function delete_marker(){

		if(!$this->session->userdata('logged_in')){

		redirect('users/login');

	}


            
            $id = $this->input->post('marker');


		    $this->post_model->delete_marker($id);

			$this->session->set_flashdata('delete_created','Marker Deleted');

			redirect('about');



	}

	public function search_user(){

		if($this->input->post('searchText')){



			if($this->session->userdata('logged_in')){

				//$this->session->unset_userdata('query_text');

				$text = $this->input->post('searchText');

				if($this->input->post('checkEmail')){

					//var_export($this->input->post('checkEmail'));

					$this->session->set_userdata('searchEmail',true);

					//var_export($this->session->userdata('searchEmail'));




				}else{

					if($this->session->userdata('searchEmail')){

						//var_export($this->input->post('checkEmail'));

						$this->session->unset_userdata('searchEmail');




					}




				}

				if($this->input->post('backFront') === "back"){

				$selection = "backend";

				$data['title'] = 'Back End Developers';

				$all = array("backend", "PHP", "Symphony", "Laravel", "Lumen", "NodeJs", "Expres", "NestJS");
				$all_zero = array("frontend", "Angular", "AngularJs", "Angular 2", "React", "React native", "Vue" );


			}

			if($this->input->post('backFront') === "front"){

				$selection = "frontend";

				$data['title'] = 'Front End Developers';

				$all = array("frontend", "Angular", "AngularJs", "Angular 2", "React", "React native", "Vue" );

				$all_zero = array("backend", "PHP", "Symphony", "Laravel", "Lumen", "NodeJs", "Expres", "NestJS");


			}

			//$data['text'] = $text;


		$data['users'] = $this->user_model->users_filter_text($selection,$text);

		//var_export($data['users']);

		for ($i = 0; $i < count($all_zero); $i++){

			if($all_zero[$i] === 'Angular 2'){

		$data['Angular_2'] = 0;



	}elseif($all_zero[$i] === 'React native'){

             $data['React_native'] = 0;


	}


	else{

	$data[$all_zero[$i]] = 0;

}





		}

for ($i = 0; $i < count($all); $i++){

	if($all[$i] === 'Angular 2'){

		$data['Angular_2'] = $this->user_model->count_number_filter_type_text($all[$i],$selection,$text);



	}elseif($all[$i] === 'React native'){

             $data['React_native'] = $this->user_model->count_number_filter_type_text($all[$i],$selection,$text);


	}elseif($all[$i] === $selection){

		$data[$selection] = $this->user_model->count_number_filter_type_text_selection($selection,$text);







	}


	else{

	$data[$all[$i]] = $this->user_model->count_number_filter_type_text($all[$i],$selection,$text);

}




}

		$this->load->view('templates/header_vertical',$data);
		$this->load->view('pages/homeFilter',$data);
		$this->load->view('templates/footer');








			}else{

				$this->session->set_userdata('query_text',$this->input->post('searchText'));

				redirect('users/login');
			}







		}else{

			if($this->input->post('backFront') === "back"){

				$selection = "backend";

				$data['title'] = 'Back End Developers';

				$all = array("backend", "PHP", "Symphony", "Laravel", "Lumen", "NodeJs", "Expres", "NestJS");
				$all_zero = array("frontend", "Angular", "AngularJs", "Angular 2", "React", "React native", "Vue" );


			}

			if($this->input->post('backFront') === "front"){

				$selection = "frontend";

				$data['title'] = 'Front End Developers';

				$all = array("frontend", "Angular", "AngularJs", "Angular 2", "React", "React native", "Vue" );

				$all_zero = array("backend", "PHP", "Symphony", "Laravel", "Lumen", "NodeJs", "Expres", "NestJS");


			}



		//$selection = $this->input->post('backFront');

		//$data['title'] = ucfirst($selection).' End Developers';

		//$data['select'] = $selection;

		$data['users'] = $this->user_model->users_array_all($selection);

		for ($i = 0; $i < count($all_zero); $i++){

			if($all_zero[$i] === 'Angular 2'){

		$data['Angular_2'] = 0;



	}elseif($all_zero[$i] === 'React native'){

             $data['React_native'] = 0;


	}


	else{

	$data[$all_zero[$i]] = 0;

}





		}


		

for ($i = 0; $i < count($all); $i++){

	if($all[$i] === 'Angular 2'){

		$data['Angular_2'] = $this->user_model->count_number_filter_type($all[$i],$selection);



	}elseif($all[$i] === 'React native'){

             $data['React_native'] = $this->user_model->count_number_filter_type($all[$i],$selection);


	}elseif($all[$i] === $selection){


		$data[$selection] = $this->user_model->count_front_back($selection);


	}


	else{

	$data[$all[$i]] = $this->user_model->count_number_filter_type($all[$i],$selection);

}




}


		$this->load->view('templates/header_vertical',$data);
		$this->load->view('pages/homeFilter',$data);
		$this->load->view('templates/footer');

	}



								
							}
}




















 ?>