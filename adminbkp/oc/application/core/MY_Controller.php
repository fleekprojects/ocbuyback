<?php defined('BASEPATH') OR exit('No direct script access allowed');

class My_Controller extends CI_Controller {

    public function __construct()
    {
        parent::__construct();
    }
	
    public function LoadView($view,$viewData=null)
    {
        $data=array(
            'view'=>$view,
            'viewData'=>$viewData
        );
        $this->load->view('layout',$data);
    }
    
}?>