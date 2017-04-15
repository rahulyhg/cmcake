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
function getsingletype($id){
$this->db->where("id",$id);
$query=$this->db->get("cm_type")->row();
return $query;
}
public function edit($id,$name,$image,$icon,$status)
{
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
}
?>
