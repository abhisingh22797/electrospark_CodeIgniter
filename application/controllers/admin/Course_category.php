<?php if(!defined('BASEPATH')) exit('No direct script access allowed');

require APPPATH . '/libraries/BaseController.php';


class Course_category extends BaseController{
       public function __construct()
    {
        parent::__construct();
        $this->load->model('coursecat_model');
     
        $this->isLoggedIn();  
        $this->load->helper('url', 'form');
      
    }
    

  function index(){

    $this->load->model("coursecat_model");
    $data["fetch_data"]= $this->coursecat_model->categoryListing();
	
	 //$this->addTestimonials();       
    }

 


  public function viewcategory(){
     
        if($this->isAdmin() == TRUE)
        {
            $this->loadThis();
        }
        else
        {        
           $searchText = $this->security->xss_clean($this->input->post('searchText'));
           $data['searchText'] = $searchText;
		   
		   $this->load->library('pagination');
		   
		   $count = $this->coursecat_model->categoryListingCount($searchText);
		   
            $returns = $this->paginationCompress ( "admin/viewcategory/", $count, 10 );
			
			   $data['galleryRecords'] = $this->coursecat_model->galleryListing($searchText, $returns["page"], $returns["segment"]);
			
            
           
            $this->global['pageTitle'] = 'Electrospark :category';

            
            $this->loadViews("admin/course_category/viewcategory", $this->global, $data, NULL);
        }
  }



  public function addcategory()
    {
        if($this->isAdmin() == TRUE)
        {
            $this->loadThis();
        }
        else

        {
            

          $data['roles'] = $this->coursecat_model->getUserRoles();
            
            $this->global['pageTitle'] = 'Electrospark :category';

            $this->loadViews("admin/course_category/addcategory", $this->global, $data, NULL);

        
          if(  $this->input->post('submit')!==NULL)
          {


            $forminput = array(
       
             "cat_name"=>  $this->input->post('cat_name'),   
             "status" => 'Active',
             "url" => $this->make_slug($this->input->post('cat_name')),
             "date_created"=>date('Y-m-d H:i:s'),
             "date_modified"=>date('Y-m-d H:i:s')
              );  
             
             //print_r($forminput);
            $this->coursecat_model->insertcategory($forminput);
            $this->session->set_flashdata('success','record added successfully');
             redirect(base_url().'admin/course_category/viewcategory');    
          } 
        }  
    }



  public function editcategory($id =NULL ){

    if($this->isAdmin() == TRUE)
      {
        $this->loadThis();
      }
   else{ 
       $this->global['pageTitle'] = 'Electrospark:category';
       $data['user'] = $this->coursecat_model->getTestbyId($id);  
          $this->loadViews("admin/course_category/editcategory", $this->global, $data, NULL);

       if( $this->input->post('submit')!==NULL)

    {
        $id = $this->input->post('id');
        $formArray = array();
       

        $formArray['cat_name']= $this->input->post('cat_name');
        $formArray['url']= $this->make_slug($this->input->post('cat_name'));                  
        $formArray['date_modified']= date('Y-m-d H:i:s');
        
        $this->coursecat_model->updatecategory($id,$formArray);
        $this->session->set_flashdata('success','record updated successfully');
             redirect(base_url().'admin/course_category/viewcategory');
      }
     }
  }

  public function deletecategory(){
     
           if($this->isAdmin() == TRUE)
             {
               echo(json_encode(array('status'=>'access')));
             }
             else
              {
               $sId = $this->input->post('sid');
                $userInfo = array('isDeleted'=>1, 'date_modified'=>date('Y-m-d H:i:s'),'status'=>'Inactive');
            
                $result = $this->coursecat_model->deletecategory($sId, $userInfo);
            
               if ($result > 0) { echo(json_encode(array('status'=>TRUE))); }
                else { echo(json_encode(array('status'=>FALSE))); }
                }
        }

 




 public function datatable_json(){ 
   $records = $this->coursecat_model->category_data();
   $data = array();    
   foreach ($records['data']  as $row) 
     {  
           
        $data[]= array(

         $username = $row['cat_name'],
        
         $row['date_created'],
         $row['date_modified'],
         $row['status'],
    
         '<a title="Edit/View" class="update btn btn-primary" href="'.base_url().'admin/course_category/editcategory/'.$row['id'].'"> <i class="fa fa-pencil-square-o"></i></a>|<a class="btn btn-sm btn-danger deletecategory" href="#" data-sid="'. $row['id'].'" title="Delete"><i class="fa fa-trash"></i></a>',             
        );
       }
    
      $records['data']=$data;
      echo json_encode($records);               
  }

   

 private function make_slug($string)
        {
            $lower_case_string = strtolower($string);
            $string1 = preg_replace('/[^a-zA-Z0-9 ]/s', '', $lower_case_string);
            return strtolower(preg_replace('/\s+/', '-', $string1));        
        }


}
