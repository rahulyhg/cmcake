<?php
if ( !defined( "BASEPATH" ) )
exit( "No direct script access allowed" );
class type_model extends CI_Model
{
    public function create($name,$image,$icon,$status)
    {
        $data=array("name" => $name,"image" => $image,"icon" => $icon,"status" => $status);
        $query=$this->db->insert( "cm_type", $data );
        $id=$this->db->insert_id();
        if(!$query)
            return  0;
        else
            return  $id;
    }
    public function beforeedit($id)
    {
        $this->db->where("id",$id);
        $query=$this->db->get("cm_type")->row();
        return $query;
    }
    function getsingletype($id)
    {
        $this->db->where("id",$id);
        $query=$this->db->get("cm_type")->row();
        return $query;
    }
    public function edit($id,$name,$image,$icon,$status)
    {
        if($image=="")
        {
            $image=$this->type_model->getimagebyid($id);
            $image=$image->image;
        }
        $data=array("name" => $name,"image" => $image,"icon" => $icon,"status" => $status);
        $this->db->where( "id", $id );
        $query=$this->db->update( "cm_type", $data );
        return 1;
    }
    public function delete($id)
    {
        $query=$this->db->query("DELETE FROM `cm_type` WHERE `id`='$id'");
        return $query;
    }
    public function getimagebyid($id)
    {
        $query=$this->db->query("SELECT `image` FROM `cm_type` WHERE `id`='$id'")->row();
        return $query;
    }
    public function getdropdown()
    {
        $query=$this->db->query("SELECT * FROM `cm_type` ORDER BY `id` 
                            ASC")->result();
        $return=array(
        "" => "Select Types"
        );
        foreach($query as $row)
        {
            $return[$row->id]=$row->name;
        }
        return $return;
    }
    public function getselectedtypeforcakedropdown($id)
	{
         $return=array();
		$query=$this->db->query("SELECT `id`,`cake`,`type` FROM `caketype`  WHERE `cake`='$id'");
        if($query->num_rows() > 0)
        {
            $query=$query->result();
            foreach($query as $row)
            {
                $return[]=$row->type;
            }
        }
         return $return;
	}
}
?>
