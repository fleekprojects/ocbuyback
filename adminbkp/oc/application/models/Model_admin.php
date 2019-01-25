<?php
if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Model_admin extends CI_Model {
    function __construct() {
        parent::__construct();
    }
    function login($data){
        $user_name = $data['user_name'];     
		$password = md5($data['password']); 
	
		$remember='';        
		$this->db->where('user_name',  $user_name);    
		$query = $this->db->get('users');
        if($query->num_rows() == 1)
        {
            $rows = $query->row();
			
            if($rows->password == $password){
                $this->session->set_userdata('_admin',true);
                $this->session->set_userdata('admin_user_name',$user_name);
                $this->session->set_userdata('admin_id',$rows->ID);
                $this->session->set_userdata('admin_email',$rows->Email);
				return $rows->ID;
            }
            else{
                return 0;
            }
        }
        else
        {
            return 0;
        }
    }
}
?>