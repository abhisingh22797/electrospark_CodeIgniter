<?php if(!defined('BASEPATH')) exit('No direct script access allowed');

/**
 * Class : Service_model (Service Model)
 * User model class to get to handle user related data 
 * @author : Amit Yadav
 * @version : 1.1
 * @since : 15 November 2019
 */
class Service_model extends CI_Model
{
    /**
     * This function is used to get the user listing count
     * @param string $searchText : This is optional search text
     * @return number $count : This is row count
     */ 
	 
    function serviceAllItems()
	{
		$this->db->select('tbl_scategory.id, tbl_services.image,tbl_services.title,tbl_services.description, tbl_scategory.scatname')
		     ->from('tbl_scategory')
			 ->join('tbl_services', 'tbl_scategory.id = tbl_services.cat_id')
			 ->where('tbl_services.status=','Active')
			 ->where('tbl_services.isDeleted=',0);
			 
			 $allgallery = $this->db->get();
		
		
		
       // $allgallery = $this->db->get_where('tbl_gallery', array( 'status'=>'Active', 'isDeleted'=> 0)); 
        return $allgallery->result();
    }
	
	
		public function allprogram(){
	
	   $this->db->select('*');
        $this->db->from('tbl_course_category');
		$this->db->where('status', 'Active');
       
        $query = $this->db->get();
        
        return $query->result();
	}
	
	function serviceCategory()
    {
       
        $query = $this->db->get_where('tbl_scategory', array( 'status'=>'Active')); 
        return $query->result();
    }
    
   

}

  