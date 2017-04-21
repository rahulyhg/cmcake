<?php
if ( !defined( "BASEPATH" ) )
exit( "No direct script access allowed" );
class cake_model extends CI_Model
{
    public function create($name,$description,$image,$price,$status,$type)
    {
        $data=array("name" => $name,"description" => $description,"image" => $image,"price" => $price,"status" => $status);
        $query=$this->db->insert( "cm_cake", $data );
        $id=$this->db->insert_id();
        
        
        foreach($type AS $key=>$value)
        {
            if($value!="")
           $this->createtypebycake($value,$id);
        }
        
        if(!$query)
        return  0;
        else
        return  $id;
    }
    
    public function createtypebycake($value,$cakeid)
	{
		$data  = array(
			'type' => $value,
			'cake' => $cakeid
		);
		$query=$this->db->insert( 'caketype', $data );
		return  1;
	}
    
    public function beforeedit($id)
    {
        $this->db->where("id",$id);
        $query=$this->db->get("cm_cake")->row();
        return $query;
    }
    function getsinglecake($id)
    {
        $this->db->where("id",$id);
        $query=$this->db->get("cm_cake")->row();
        return $query;
    }
    public function edit($id,$name,$description,$image,$price,$status,$type)
    {
        if($image=="")
        {
            $image=$this->cake_model->getimagebyid($id);
            $image=$image->image;
        }
        $data=array("name" => $name,"description" => $description,"image" => $image,"price" => $price,"status" => $status);
        $this->db->where( "id", $id );
        $query=$this->db->update( "cm_cake", $data );
        
        $querydeletetype=$this->db->query("DELETE FROM `caketype` WHERE `cake`='$id'");
        foreach($type AS $key=>$value)
        {
            if($value!="")
            $this->createtypebycake($value,$id);
        }
        
        return 1;
    }
    public function delete($id)
    {
        $query=$this->db->query("DELETE FROM `cm_cake` WHERE `id`='$id'");
        $querydeletetype=$this->db->query("DELETE FROM `caketype` WHERE `cake`='$id'");
        return $query;
    }
    public function getimagebyid($id)
    {
        $query=$this->db->query("SELECT `image` FROM `cm_cake` WHERE `id`='$id'")->row();
        return $query;
    }
    public function getdropdown()
    {
        $query=$this->db->query("SELECT * FROM `cm_cake` ORDER BY `id` 
                            ASC")->result();
        $return=array(
        "" => "Select Option"
        );
        foreach($query as $row)
        {
        $return[$row->id]=$row->name;
        }
        return $return;
    }
}
?>
