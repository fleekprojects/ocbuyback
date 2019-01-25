<?php
	defined('BASEPATH') OR exit('No direct script access allowed');

	class Admin extends MY_Controller {
	
	
		public function __construct()
		{
			parent::__construct();
			
			$this->load->model('Model_admin','Amodel');
			
		}
			
		public function index(){
			if($this->session->userdata('admin_id') && $this->session->userdata('admin_user_name')){
				redirect(base_url().'admin/dashboard');
			}
			else{
				$this->load->view('login');
			}
		}
		
		public function login(){
			$this->index();
		}
		public function logout(){
			$user_data = $this->session->all_userdata();
			foreach ($user_data as $key => $value) {
				if ($key != 'session_id' && $key != 'ip_address' && $key != 'user_agent' && $key != 'last_activity') {
					$this->session->unset_userdata($key);
				}
			}
			$this->session->sess_destroy();
			redirect('/');
		}
		
		public function login_auth(){
			$data=$_POST;
			$result = $this->Amodel->login($data);
			echo $result;
		}
		
		
		
		public function dashboard(){
			$this->Dmodel->checkLogin();
			$viewdata="";
			$this->LoadView("dashboard",$viewdata);
		}
		public function updatesettings(){
			$tbl="settings";
			$ID=1;
			$key="ID";
				$Title=$this->input->post('Title');
				$ATitle=$this->input->post('ATitle');
				$Email=$this->input->post('Email');
				$Phone=$this->input->post('Phone');
				$Address=$this->input->post('Address');
				$Website=$this->input->post('Website');
				$Timezone=$this->input->post('Timezone');
				$SMTP_Host=$this->input->post('SMTP_Host');
				$SMTP_Email=$this->input->post('SMTP_Email');
				$SMTP_Port=$this->input->post('SMTP_Port');
				if(!empty($this->input->post('SMTP_Pass'))){
					$SMTP_Pass=$this->input->post('SMTP_Pass');
						$data=array('Site_Title'=>$Title,'Admin_Title'=>$ATitle,'Email'=>$Email,'Phone'=>$Phone,'Address'=>$Address,'Website'=>$Website,'Timezone'=>$Timezone,'SMTP_Host'=>$SMTP_Host,'SMTP_Email'=>$SMTP_Email,'SMTP_Port'=>$SMTP_Port,'SMTP_Pass'=>$SMTP_Pass);
					}
					else {
						$data=array('Site_Title'=>$Title,'Admin_Title'=>$ATitle,'Email'=>$Email,'Phone'=>$Phone,'Address'=>$Address,'Website'=>$Website,'Timezone'=>$Timezone,'SMTP_Host'=>$SMTP_Host,'SMTP_Email'=>$SMTP_Email,'SMTP_Port'=>$SMTP_Port);
					}
					$result=$this->Dmodel->update_data($tbl,$ID,$data,$key);
				
					echo $result;
					die;
		}
	}

