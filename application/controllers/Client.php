<?php if (!defined('BASEPATH')) exit('No direct script access allowed');


/**
 * Class : About (AboutController)
 * About Class to control About Page.
 * @author : Amit Yadav
 * @version : 1.5
 * @since : 15 November 2019-20
 */
class Client extends CI_Controller
{
    /**
     * This is default constructor of the class
     */
    public function __construct()
    {
        parent::__construct();
       $this->load->model('frontend/client_model');
    }

    /**
     * This function used to load the first screen
     */
    public function index()
    {


        //    $data['allData'] = $this->about_model->getAllItems();
	    $data['contact'] = $this->client_model->getAllContact();
	    $data['about'] = $this->client_model->getAllAbout();
		$data['product'] =  $this->client_model->getproduct();
		$data['client'] =  $this->client_model->getclient();
        $data['title'] = 'Electrospark | Our Clients';
        $data['layout'] = 'our';
        $this->load->view('layout', $data);
    }
}
