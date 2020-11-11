<?php if (!defined('BASEPATH')) exit('No direct script access allowed');


/**
 * Class : Contact (HomeController)
 * Contact Class to control Contact Page.
 * @author : Amit Yadav
 * @version : 1.5
 * @since : 15 November 2019-20
 */
class Contact extends CI_Controller
{
    /**
     * This is default constructor of the class
     */
    public function __construct()
    {
        parent::__construct();
        $this->load->model('frontend/contact_model');
        $this->load->library('email');
    }

    /**
     * This function used to load the first screen
     */
    public function index()
    {
        $this->load->helper('form');

        $data['contact'] = $this->contact_model->getAllContact();
			$data['product'] =  $this->contact_model->getproduct();
        $data['title'] = 'Electrospark | Contact us';
        $data['layout'] = 'contact';
        $this->load->view('layout', $data);
    }


    public function message()
    {




        $forminput = array(

            "company" => $this->input->post('company'),
            "fname" =>  $this->input->post('fname'),
            "email" =>  $this->input->post('email'),
            "mobile" =>  $this->input->post('phone'),
            "message" => $this->input->post('message'),
            "status" => 'Active',
            "date" => date('Y-m-d H:i:s'),

        );

        $forminput1 = $this->security->xss_clean($forminput);
        $this->contact_model->messagedata($forminput1);
        echo "Success";
    }
}
