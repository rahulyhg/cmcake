<?php
if ( !defined( "BASEPATH" ) )
exit( "No direct script access allowed" );
class cake_model extends CI_Model
{
public function create($name,$description,$image,$price,$status)
{
$data=array("name" => $name,"description" => $description,"image" => $image,"price" => $price,"status" => $status);
$query=$this->db->insert( "cm_cake", $data );
$id=$this->db->insert_id();
if(!$query)
return  0;
else
return  $id;
}
public function beforeedit($id)
{
$this->db->where("id",$id);
$query=$this->db->get("cm_cake")->row();
return $query;
}
function getsinglecake($id){
$this->db->where("id",$id);
$query=$this->db->get("cm_cake")->row();
return $query;
}
public function edit($id,$name,$description,$image,$price,$status)
{
$data=array("name" => $name,"description" => $description,"image" => $image,"price" => $price,"status" => $status);
$this->db->where( "id", $id );
$query=$this->db->update( "cm_cake", $data );
return 1;
}
public function delete($id)
{
$query=$this->db->query("DELETE FROM `cm_cake` WHERE `id`='$id'");
return $query;
}
}
?>
