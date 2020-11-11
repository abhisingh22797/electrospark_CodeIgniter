<?php if(!defined('BASEPATH')) exit('No direct script access allowed');


/**
 * Class : Services (ServicesController)
 * Services Class to control Services Page.
 * @author : Amit Yadav
 * @version : 1.5
 * @since : 15 November 2019-20
 */
class Services extends CI_Controller
{
    /**
     * This is default constructor of the class
     */
    public function __construct()
    {
        parent::__construct();
		$this->load->model('frontend/service_model');
    
    }
    
    /**
     * This function used to load the first screen
     */
    public function index()
    {
		
		
		$data['allSer']= $this->service_model->serviceAllItems();
        $data['allCat'] = $this->service_model->serviceCategory();		
        $data['title'] = 'Services | Birjuflower Store';
		$data['layout'] = 'services';
		$this->load->view('layout',$data);
      
       
    }
    
    

   
}

?>