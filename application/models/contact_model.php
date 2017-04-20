<?php
if ( !defined( "BASEPATH" ) )
exit( "No direct script access allowed" );
class contact_model extends CI_Model
{
public function create($name,$email,$contact,$message,$status)
{
$data=array("name" => $name,"email" => $email,"contact" => $contact,"message" => $message,"status" => $status);
$query=$this->db->insert( "cm_contact", $data );
$id=$this->db->insert_id();
if(!$query)
return  0;
else
return  $id;
}
public function beforeedit($id)
{
$this->db->where("id",$id);
$query=$this->db->get("cm_contact")->row();
return $query;
}
function getsinglecontact($id){
$this->db->where("id",$id);
$query=$this->db->get("cm_contact")->row();
return $query;
}
public function edit($id,$name,$email,$contact,$message,$status)
{
$data=array("name" => $name,"email" => $email,"contact" => $contact,"message" => $message,"status" => $status);
$this->db->where( "id", $id );
$query=$this->db->update( "cm_contact", $data );
return 1;
}
public function delete($id)
{
$query=$this->db->query("DELETE FROM `cm_contact` WHERE `id`='$id'");
return $query;
}
public function getimagebyid($id)
{
$query=$this->db->query("SELECT `image` FROM `cm_contact` WHERE `id`='$id'")->row();
return $query;
}
public function getdropdown()
{
$query=$this->db->query("SELECT * FROM `cm_contact` ORDER BY `id` 
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
