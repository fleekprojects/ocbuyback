<?php
	defined('BASEPATH') OR exit('No direct script access allowed');
	
	require_once(APPPATH.'libraries/easypost/easypost.php');
	
	class Shipping extends MY_Controller {

		function __construct() {
			parent::__construct();
			
			\EasyPost\EasyPost::setApiKey('EZTK8bf67df1bd99447587eaaf1d8164b551aJU8N6IDrO6XXNO9HwaChg');
			$this->load->model('Model_ship','s_model');
			$this->load->library('user_agent');
			$this->load->library('cart'); 
		}

		function index() {
		  if(isset($_SESSION['order_id']) && $_SESSION['order_id'] >0){
			$order_id=$_SESSION['order_id'];
			$edata['order']=$this->Dmodel->get_tbl_whr('orders',$order_id);
			$edata['odetails']=$this->Dmodel->get_tbl_whr_arr('order_details',array('order_id'=>$order_id));
			
			if($edata['order'][0]['trade_details'] == "Prepaid Label" || $edata['order'][0]['trade_details'] == "Shipping Kit with Prepaid Label"){
			
			  $address=explode(',',Address);
			  $to_address = \EasyPost\Address::create(
				array(
					"name"    => Site_Title,
					"street1" => $address[0],
					"city"    => $address[1],
					"state"   => $address[2],
					"zip"     => $address[3],
					"phone"   => Phone
					// "phone"   => "310-808-5243"
				)
			  );
			  $from_address = \EasyPost\Address::create(
				array(
					"company" => $_SESSION['contact_details']['first_name'].' '.$_SESSION['contact_details']['last_name'],
					"street1" => $_SESSION['contact_details']['address'],
					"street2" => $_SESSION['contact_details']['address_2'],
					"city"    => $_SESSION['contact_details']['city'],
					"state"   => $_SESSION['contact_details']['state'],
					"zip"     => $_SESSION['contact_details']['zip_code'],
					"phone"   => $_SESSION['contact_details']['phone']
				)
			  );
			  $parcel = \EasyPost\Parcel::create(
				array(
					"predefined_package" => "LargeFlatRateBox",
					"weight" => 14
				)
			  );
			  $shipment = \EasyPost\Shipment::create(
				array(
					"to_address"   => $to_address,
					"from_address" => $from_address,
					"parcel"       => $parcel,
					"options" => array('print_custom_1' => "ORDER #".$order_id)
				)
			  );
			
			  $shipment->buy($shipment->lowest_rate());
			  $shipment->insure(array('amount' => 100));
			  
			  $edata['firstp']='Your Order# '.$order_id.' has been received. Please <a href="'.$shipment->postage_label->label_url.'" target="_blank">Click here</a> to view your shipping label. Given below are the details of your order: <br/>';
			  $ebody = $this->load->view('order_email',$edata,TRUE);

			  $maildata= array(
				'from_name'=>Site_Title,
				'from_email'=>Site_Email,
				'to_name'=>$_SESSION['contact_details']['first_name'].' '.$_SESSION['contact_details']['last_name'],
				'to_email'=>$_SESSION['pay_details']['email'],
				'subject'=>'Your Request has been Received',
				'message'=>$ebody);
				
			    $viewdata['shipment_label']=$shipment->postage_label->label_url;
			}
			else{
			  $edata['firstp']='Your Order# '.$order_id.' has been received. Given below are the details of your order: <br/>';
			  $ebody = $this->load->view('order_email',$edata,TRUE);
			  
			  $maildata= array(
				'from_name'=>Site_Title,
				'from_email'=>Site_Email,
				'to_name'=>$_SESSION['contact_details']['first_name'].' '.$_SESSION['contact_details']['last_name'],
				'to_email'=>$_SESSION['pay_details']['email'],
				'subject'=>'Your Request has been Received',
				'message'=>$ebody);
			}
			$this->Dmodel->send_mail($maildata);
			$this->LoadView('shipping',$viewdata);
		  }
		  else{
			redirect (base_url());
		  }
		}
	}

	