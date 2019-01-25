<?php
	defined('BASEPATH') OR exit('No direct script access allowed');

	class Trades extends MY_Controller {
	
		public function __construct(){
			parent::__construct();
			
			$this->load->library('user_agent');
			$this->table='orders';
			$this->pagetitle='Trade Ins';
			$this->viewname='admin/trades';
		}
			
		public function index(){
			$this->Dmodel->checkLogin();
			$viewdata['title']=$this->pagetitle;
			$viewdata['records']=$this->Dmodel->get_tbl($this->table);
			$this->LoadAdminView($this->viewname,$viewdata);
		}
		
		public function get_order(){
			$order_id=$_POST['id'];
			$viewdata['order']=$this->Dmodel->get_tbl_whr('orders',$order_id);
			$viewdata['odetails']=$this->Dmodel->get_tbl_whr_arr('order_details',array('order_id'=>$order_id));
			$this->load->view('admin/order_details',$viewdata);
		}
		
		public function ch_status(){
			$order_id=$_POST['id'];
			$name=$_POST['name'];
			$email=$_POST['email'];
			$data=array('status'=>$_POST['status']);
			$result=$this->Dmodel->update_data('orders',$order_id,$data,'id');
			
			$maildata= array(
				'from'=>Site_Title.','.Site_Email,
				'to'=>$name.','.$email,
				'subject'=>'Order Status Changed',
				'message'=>'Your Order# '.$order_id.' status has been changed to: '.$_POST['status'],
			);
			$this->Dmodel->send_mail($maildata);
			
		}
	}

