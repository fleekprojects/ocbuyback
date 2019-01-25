<?php
	defined('BASEPATH') OR exit('No direct script access allowed');

	class Pricing extends My_Controller {
	
		public function __construct(){
			parent::__construct();
			
			$this->load->library('user_agent');
			$this->table='pricing';
			$this->pagetitle='Pricing';
			$this->viewname='pricing';
		}
		
		public function index(){
			$this->Dmodel->checkLogin();
			$cat_id=(isset($_GET['category']) ? $_GET['category']: 0);
			if($this->Dmodel->IFExist('categories','id',$cat_id)){
				$this->session->set_flashdata('message','<div class="alert alert-warning alert-dismissable">
				<i class="fa fa-check"></i>
				<button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button>
				<b>Invalid Category.</b>
				</div>'); 
				redirect(base_url().'categories') ;
			}
			else{
				$viewdata['title']=$this->pagetitle;
				$viewdata['category']=$this->Dmodel->get_tbl_whr('categories',$cat_id);
				
				$this->db->select('p.id, c.title AS condition_title, m.title AS model_title, pr.title AS provider_title, s.title AS storage_title, p.price, p.status, p.created_at,p.updated_at');
				$this->db->from('pricing p');
				$this->db->join('conditions c', 'p.condition_id=c.id');
				$this->db->join('models m', 'p.model_id=m.id');
				$this->db->join('providers pr', 'p.provider_id=pr.id');
				$this->db->join('storage s', 'p.storage_id=s.id');
				$viewdata['records'] = $this->db->get()->result_array();
				$this->LoadView($this->viewname,$viewdata);
			}
		}
		public function AddRecord(){
			$this->Dmodel->checkLogin();
			$exec=2;
			$data=$_POST;
			$arrlen=count($data['price']);
			for($i=0; $i<$arrlen; $i++){
			  foreach($data as $key => $val){
				$arrdata[$key]=$val[$i];
			  }
			  $checkdata=$arrdata;
			  unset($checkdata['price']);
			  $chknum=$this->db->get_where($this->table, $checkdata)->num_rows();
			  if($chknum==0){
				$arrdata['created_at']=DateTime_Now;
				$exec=$this->Dmodel->insertdata($this->table,$arrdata);
			  }
			}
			echo $exec;
		}
		public function EditRecord(){
			$this->Dmodel->checkLogin();
			$data=$_POST;
			unset($_POST['id'],$_POST['price']);
			$cdata=$_POST;
			$this->db->where($cdata);
			$this->db->where('id !=', $data['id']);
			$this->db->from($this->table);
			$chknum=$this->db->get()->num_rows();
			if($chknum==0){
				$data['updated_at']=DateTime_Now;
				$exec=$this->Dmodel->update_data($this->table,$data['id'],$data,'id');
				$this->db->select('c.title AS condition, m.title AS model, pr.title AS provider, s.title AS storage, p.price');
				$this->db->from('pricing p');
				$this->db->where('p.id',$data['id']);
				$this->db->join('conditions c', 'p.condition_id=c.id');
				$this->db->join('models m', 'p.model_id=m.id');
				$this->db->join('providers pr', 'p.provider_id=pr.id');
				$this->db->join('storage s', 'p.storage_id=s.id');
				$edata=array('success'=>$exec,'data'=>$this->db->get()->result_array());
				echo json_encode($edata);
			}
			else{
				echo 2;
			}
		}
		public function DeleteRecord(){
			$whr_key="id";
			$ids=$this->input->post('ids');
			$result=$this->Dmodel->delete_multi_rec($ids,$whr_key,$this->table);
			$this->session->set_flashdata('message','<div class="alert alert-warning alert-dismissable">
			<i class="fa fa-check"></i>
			<button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button>
			<b>Record Deleted.</b>
			</div>'); 
			redirect($this->agent->referrer()) ;
		}
		
		public function toggleStatus(){
			$id=$this->input->post('id');
			$data=$this->Dmodel->toggle_status($this->table,$id);
			echo $data; 
		}
		
		public function addPricingRow(){
			$data['cid']=$_POST['cat_id'];
			$get_active=array('Status'=>1);
			$data['condition']=$this->Dmodel->get_tbl_whr_arr('conditions',$get_active);
			$data['providers']=$this->Dmodel->get_tbl_whr_arr('providers',$get_active);
			$data['storage']=$this->Dmodel->get_tbl_whr_arr('storage',$get_active);
			$data['models']=$this->Dmodel->get_tbl_whr_arr('models',array('category_id'=>$data['cid'],'Status'=>1));
			$this->load->view('pricing_row', $data);
		}
		
		public function editPricingRow(){
			$data['cid']=$_POST['cat_id'];
			$id=$_POST['id'];
			$get_active=array('Status'=>1);
			$data['conditions']=$this->Dmodel->get_tbl_whr_arr('conditions',$get_active);
			$data['providers']=$this->Dmodel->get_tbl_whr_arr('providers',$get_active);
			$data['storages']=$this->Dmodel->get_tbl_whr_arr('storage',$get_active);
			$data['models']=$this->Dmodel->get_tbl_whr_arr('models',array('category_id'=>$data['cid'],'Status'=>1));
			$data['pricing']=$this->Dmodel->get_tbl_whr($this->table,$id);
			$this->load->view('pricing_row', $data);
		}
	}
?>	