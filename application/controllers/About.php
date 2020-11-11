<?php if (!defined('BASEPATH')) exit('No direct script access allowed');


/**
 * Class : About (AboutController)
 * About Class to control About Page.
 * @author : Amit Yadav
 * @version : 1.5
 * @since : 15 November 2019-20
 */
class About extends CI_Controller
{
    /**
     * This is default constructor of the class
     */
    public function __construct()
    {
        parent::__construct();
       $this->load->model('frontend/about_model');
    }

    /**
     * This function used to load the first screen
     */
    public function index()
    {


        //    $data['allData'] = $this->about_model->getAllItems();
	  $data['contact'] = $this->about_model->getAllContact();
	    $data['about'] = $this->about_model->getAllAbout();
			$data['client'] =  $this->about_model->getclient();
				$data['product'] =  $this->about_model->getproduct();
        $data['title'] = 'Electrospark | About';
        $data['layout'] = 'about';
        $this->load->view('layout', $data);
    }
}
