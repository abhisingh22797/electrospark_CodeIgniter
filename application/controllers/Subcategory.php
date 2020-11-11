<?php if (!defined('BASEPATH')) exit('No direct script access allowed');


/**
 * 
 * @author : Amit Yadav
 * @version : 1.5
 * @since : 15 November 2019-20
 */
class Subcategory extends CI_Controller
{
    /**
     * This is default constructor of the class
     */
    public function __construct()
    {
        parent::__construct();

        $this->load->helper(array('form','my_helper'));
        $this->load->library('email');
		$this->load->model('frontend/category_model');
    }

    public function index()
    {$url = $this->uri->segment(3);
		$cat = $this->uri->segment(2);
		echo $url;
		echo $cat;
        
		
		$data['contact'] =  $this->category_model->getContact();
		$data['allsubcat'] = $this->category_model->getScatByUrl($url);
        $data['allPro'] = $this->category_model->getProByUrl($url,$cat);
        $data['layout'] = 'subcategory';
		$data['title'] = 'Subcategory|Food';
        $this->load->view('layout', $data);
    }
}
