<?php if (!defined('BASEPATH')) exit('No direct script access allowed');


/**
 * Class : Home (HomeController)
 * Home Class to control Home Page.
 * @author : Amit Yadav
 * @version : 1.5
 * @since : 15 November 2019-20
 */
class Home extends CI_Controller
{
    /**
     * This is default constructor of the class
     */
    public function __construct()
    {
        parent::__construct();
        $this->load->model('frontend/home_model');
        $this->load->helper('form');
        $this->load->library('email');
    }

    /**
     * This function used to load the first screen
     */
    public function index()
    {


        //  $data['test'] =  $this->home_model->getTestimonial();
       
 
		 $data['allData'] = $this->home_model->getAllContact();
		$data['contact'] =  $this->home_model->getContact();
		//$data['product'] =  $this->home_model->getproduct();
        $data['title'] = 'Electrospark';
        $data['layout'] = 'home';
        $this->load->view('layout', $data);
    }

    /*public function requestCallback()
    {
                $this->load->model('frontend/course_model');
                $phone = $this->input->post('phone');
                $email = $this->input->post('email');
                $fname = $this->input->post('fname');
                 $course = $this->input->post('course');
                $location = $this->input->post('location');
                $msg = $this->input->post('message');
                
				
				
				$scontactInfo = array(
				
				'mobile'=>$phone,
				'email'=>$email,
				'fname'=>$fname,
				'location'=>$location,
				'course'=>$course,
				'message'=>$msg,
				'isDeleted'=>0,
				'status'=>'Active',
				'date'=>date('Y-m-d H:i:s'));
				
				$data = $this->security->xss_clean($scontactInfo);
                
                $result = $this->course_model->submitContact($data);
                
                if($result == true)
                {
					
					   $htmlContent = '<h3>Name:'.$fname.'</h3>';
                       $htmlContent .= '<h3>Email:'.$email.' </h3>';
                       $htmlContent .= '<h3>Phone:'.$phone.' </h3>';
                       $htmlContent .= '<h3>Message:'.$msg.' </h3>';
                       $htmlContent .= '<h3>IP:'.$_SERVER['REMOTE_ADDR'].' </h3>';
					
    
						$config['mailtype'] = 'html';
						$this->email->initialize($config);
						$this->email->from('callback@fiesttech.com', 'Fiesttech Pioneer');
					    $this->email->to('callback@fiesttech.com');


					    $this->email->subject('Request a Callback');
						$this->email->message($htmlContent);
						$this->email->send();
					
				
                    echo "Success";
                }
                else
                {
                    echo "Oops! Something went wrong. Please try again";
                }
                
        
        
        
        
        
    }
	
	
    public function dropQuery()
    {
                $this->load->model('frontend/course_model');
                $phone = $this->input->post('phone');
                $email = $this->input->post('email');
                $fname = $this->input->post('fname');
                 $course = $this->input->post('course');
                $location = $this->input->post('location');
               
                $msg = $this->input->post('message');
                
				
				
				$scontactInfo = array(
				
				'mobile'=>$phone,
				'email'=>$email,
				'fname'=>$fname,
				'course'=>$course,
				'location'=>$location,
				'message'=>$msg,
				'isDeleted'=>0,
				'status'=>'Active',
				'date'=>date('Y-m-d H:i:s'));
				
				$data = $this->security->xss_clean($scontactInfo);
                
                $result = $this->course_model->submitContact($data);
                
                if($result == true)
                {
					
					   $htmlContent = '<h3>Name:'.$fname.'</h3>';
                       $htmlContent .= '<h3>Email:'.$email.' </h3>';
                       $htmlContent .= '<h3>Phone:'.$phone.' </h3>';
                       $htmlContent .= '<h3>Message:'.$msg.' </h3>';
                       $htmlContent .= '<h3>IP:'.$_SERVER['REMOTE_ADDR'].' </h3>';
					
    
						$config['mailtype'] = 'html';
						$this->email->initialize($config);
						$this->email->from('info@fiesttech.com', 'Fiesttech Pioneer');
					    $this->email->to('info@fiesttech.com');


					    $this->email->subject('Drop a Query');
						$this->email->message($htmlContent);
						$this->email->send();
					
				
                    echo "Success";
                }
                else
                {
                    echo "Oops! Something went wrong. Please try again";
                }
                
        
        
        
        
        
    }
    
*/
}
