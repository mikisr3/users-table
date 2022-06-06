<?php 



/**
 * 
 */
class User_model extends CI_Model
{
	
	public function register($enc_password){

		$data = array(

			

			'name_users' => $this->input->post('name'),
			'email' => $this->input->post('email'),
			'username' => $this->input->post('username'),
			'password' => $enc_password,
			'type'=> $this->input->post('type'),
			'language'=> $this->input->post('lang'),
			'framework'=> $this->input->post('frame')
			

		);

		 return $this->db->insert('users',$data);


								}


								public function login($username,$password){

									$this->db->where('username',$username);

									$this->db->where('password',$password);


									$result = $this->db->get('users');



									if($result->num_rows() === 1){

										return $result->row(0)->id_users;



									}else{

										return false;



									}












								}

								public function get_username($user_id){

									$this->db->where('id_users',$user_id);

									$result = $this->db->get('users');

									return $result->row(0)->name_users;





								}

								public function check_username_exists($username){

									$query = $this->db->get_where('users',array('username'=>$username));

									if(empty($query->row_array())){

										return true;


									}else{return false;}




								}

								public function check_email_exists($email){

									$query = $this->db->get_where('users',array('email'=>$email));

									if(empty($query->row_array())){

										return true;


									}else{return false;}




								}

								public function users_array_all($selection){

									$this->db->select('name_users, email, type, language, framework, register_date');

									$this->db->where('type', $selection);

									$query = $this->db->get('users');

									return $query->result_array();






								}

								public function count_front_back($selection){


									$this->db->select('*');

                                    $this->db->from('users');

                                    $this->db->like('type',$selection);

                                    
                                      return $this->db->count_all_results();




								}

								public function users_array(){

									

									$query = $this->db->get('users');

									return $query->result_array();






								}

								public function all_users_from_table(){

									$query = $this->db->get('users');

									return $query->result_array();




								}

								public function count_number($param){

									$this->db->select('*');

                                    $this->db->from('users');

                                    $this->db->like('type',$param);

                                     $this->db->or_like('language',$param);

                                      $this->db->or_like('framework',$param);

                                      return $this->db->count_all_results();



								}

								public function count_number_filter_type($param,$selection){

									$this->db->select('*');

                                    $this->db->from('users');

                                  

                                     $this->db->like('language',$param);

                                      $this->db->or_like('framework',$param);

                                      //$this->db->where('type',$selection);

                                      return $this->db->count_all_results();



								}

								public function count_number_filter_type_text($param,$selection,$text){

									$this->db->select('*');

                                    $this->db->from('users');

                                    //$this->db->like('name_users',$text);

                                   // $this->db->like('type',$selection);

                                     //$this->db->or_like('language',$param);

                                     // $this->db->or_like('framework',$param);

                                    if($this->session->userdata('searchEmail')){

                                    	 $x = "((type='".$selection."')AND(email LIKE '%".$text."%')AND(language='".$param."' OR framework='".$param."'))";




                                    }else{

                                      $x = "((type='".$selection."')AND(name_users LIKE '%".$text."%')AND(language='".$param."' OR framework='".$param."'))";

                                  }

                                       $this->db->where($x);

                                      return $this->db->count_all_results();



								}

								public function count_number_filter_type_text_selection($selection,$text){


									$this->db->select('*');

                                    $this->db->from('users');

                                    if($this->session->userdata('searchEmail')){

                                    	 $x = "((type='".$selection."')AND(email LIKE '%".$text."%'))";



                                    }else{

                                    $x = "((type='".$selection."')AND(name_users LIKE '%".$text."%'))";

                                }

                                    $this->db->where($x);

                                      return $this->db->count_all_results();





								}


								public function users_filter_text($selection='backend',$text){

									$this->db->select('name_users, email, type, language, framework, register_date');


                                    if($this->session->userdata('searchEmail')){

                                    	$this->db->like('email',$text);



                                    }else{
									$this->db->like('name_users',$text);

								}

									$this->db->like('type',$selection);


									$query = $this->db->get('users');

									return $query->result_array();







								}






							}

							




















 ?>
