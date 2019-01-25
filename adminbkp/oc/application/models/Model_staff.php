<?php
if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Model_staff extends CI_Model {
    function __construct() {
        parent::__construct();
    }
	
	

		
			function get_user_not_admin($tbl,$ID){	
			$this->db->where('ID', $ID);
			$query = $this->db->get($tbl);
			return $query->row();
		}
   
}
?>