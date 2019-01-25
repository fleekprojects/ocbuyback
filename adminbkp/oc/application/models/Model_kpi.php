<?php
if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Model_kpi extends CI_Model {
    function __construct() {
        parent::__construct();
    }
	
	

		
		function get_kpi_where($tbl,$ID){	
			$this->db->where('TemplateID', $ID);
			$query = $this->db->get($tbl);
			return $query->result_array();
			}
   
}
?>