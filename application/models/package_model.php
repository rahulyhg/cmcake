<?php
if ( !defined( "BASEPATH" ) )
exit( "No direct script access allowed" );
class package_model extends CI_Model
{
public function create($name,$status,$startdate,$enddate)
{
    $startdate = new DateTime($startdate);
    $startdate = $startdate->format('Y-m-d');
    $enddate = new DateTime($enddate);
    $enddate = $enddate->format('Y-m-d');
$data=array("name" => $name,"status" => $status,"startdate" => $startdate,"enddate" => $enddate);
$query=$this->db->insert( "package", $data );
$id=$this->db->insert_id();
if(!$query)
return  0;
else
return  $id;
}
public function beforeedit($id)
{
$this->db->where("id",$id);
$query=$this->db->get("package")->row();
return $query;
}
function getsinglecompany($id){
$this->db->where("id",$id);
$query=$this->db->get("package")->row();
return $query;
}
public function edit($id,$name,$status,$startdate,$enddate)
{
    $startdate = new DateTime($startdate);
    $startdate = $startdate->format('Y-m-d');
    $enddate = new DateTime($enddate);
    $enddate = $enddate->format('Y-m-d');
$data=array("name" => $name,"status" => $status,"startdate" => $startdate,"enddate" => $enddate);
$this->db->where( "id", $id );
$query=$this->db->update( "package", $data );
return 1;
}
public function delete($id)
{
$query=$this->db->query("DELETE FROM `package` WHERE `id`='$id'");
return $query;
}

public function getimagebyid($id)
{
$query=$this->db->query("SELECT `image` FROM `package` WHERE `id`='$id'")->row();
return $query;
}
public function getPackageDropDown()
	{
		$query=$this->db->query("SELECT * FROM `package` WHERE `status`=1  ORDER BY `id` ASC")->result();
		$return=array(
		"" => "Choose Package"
		);
		foreach($query as $row)
		{
			$return[$row->id]=$row->name;
		}
		
		return $return;
	
}
    public function getTimePeriodDropDown()
	{
		$return=array(
		"" => "Choose Time Period",
		"1" => "6 Months",
		"2" => "1 Year",
		"3" => "2 Year",
		"4" => "3 Year",
		"5" => "4 Year",
		"5" => "5 Year",
		);
		return $return;
	}
}
?>
