<?php
	defined('BASEPATH') OR exit('No direct script access allowed');

	class Contact extends MY_Controller {
		public function __construct(){
			parent::__construct();
			$this->load->model('Model_form','m_form');
			$this->load->library('user_agent');
			$this->load->library('cart'); 
		}
		
		public function index(){
			$this->LoadView('contact-us',$viewdata);
		}
		
		public function AddRecord(){
			$data=$_POST;
			$data['created_at']=DateTime_Now;
			$exec=$this->Dmodel->insertdata('contact',$data);
			
			$maildata= array(
				'from'=>'contact@ocbuyback.com',
				'to'=>'qmerchant@yopmail.com',
				// 'to'=>Site_Title.','.Site_Email,
				'subject'=>'New Query received',
				'message'=>'You have received a new query from your website contact form. \nFollowing are the details:\n
				Full Name:'.$data['full_name'].'\n
				Email Address:'.$data['email'].'\n
				Subject:'.$data['subject'].'\n
				Message:'.$data['message'],
			);
			// print_r($maildata);
			$this->Dmodel->send_mail($maildata);
			echo $exec;
		}
		
	}

