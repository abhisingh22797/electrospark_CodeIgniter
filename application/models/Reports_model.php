<?php if(!defined('BASEPATH')) exit('No direct script access allowed');

/**
 * Class : Contact_model (Contact Model)
 * Contact model class to get to handle Contact
 * @author : Amit Yadav
 * @version : 1.1
 * @since : 15 November 2019-20
 */
class Reports_model extends CI_Model
{
    /**
     * This function is used to get the Reports listing count
     * @param string $searchText : This is optional search text
     * @return number $count : This is row count
     */ 
	 
	  function reportListingCount($searchText = '')
    {
        $this->db->select('BaseTbl.*');
        $this->db->from('tbl_contact_query as BaseTbl');
      
       
		 if(!empty($searchText)) {
            $likeCriteria = "(BaseTbl.fname  LIKE '%".$searchText."%'
                            OR  BaseTbl.mobile  LIKE '%".$searchText."%'
                            OR  BaseTbl.email  LIKE '%".$searchText."%')";
            $this->db->where($likeCriteria);
        }
      
        $this->db->where('BaseTbl.status =', 'Active');
        $query = $this->db->get();
        
        return $query->num_rows();
    }
	 
	  function reportListing($searchText = '', $page, $segment)
    {
        $this->db->select('BaseTbl.*');
        $this->db->from('tbl_contact_query as BaseTbl');
      
        if(!empty($searchText)) {
            $likeCriteria = "(BaseTbl.fname  LIKE '%".$searchText."%'
                            OR  BaseTbl.mobile  LIKE '%".$searchText."%'
                            OR  BaseTbl.email  LIKE '%".$searchText."%')";
            $this->db->where($likeCriteria);
        }
        $this->db->where('BaseTbl.status =', 'Active');
        $this->db->order_by('BaseTbl.id', 'DESC');
        $this->db->limit($page, $segment);
        $query = $this->db->get();
        
        $result = $query->result();        
        return $result;
    }
	 
	 
	 
	 
	 
	 
	 
    function getReports()
    {
        
        $query = $this->db->get_where('tbl_contact_query',array('isDeleted'=>0,'status'=>'Active'));
        return $query->result_array();
    }
	
	public function reports_data() {		

        $this->load->library('datatable');	
	
		$SQL ="SELECT * FROM tbl_contact_query WHERE tbl_contact_query.status = 'Active'";			
		return $this->datatable->LoadJsona($SQL);
		
	}
	

}

  