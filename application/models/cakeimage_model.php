<?php
if ( !defined( "BASEPATH" ) )
exit( "No direct script access allowed" );
class cakeimage_model extends CI_Model
{
    public function create($cake,$image,$order,$description)
    {
        $data=array("cake" => $cake,"image" => $image,"order" => $order,"description" => $description);
        $query=$this->db->insert( "cakeimage", $data );
        $id=$this->db->insert_id();
        if(!$query)
        return  0;
        else
        return  $id;
    }
    public function beforeedit($id)
    {
        $this->db->where("id",$id);
        $query=$this->db->get("cakeimage")->row();
        return $query;
    }
    function getsinglecakeimage($id) 
    {
        $this->db->where("id",$id);
        $query=$this->db->get("cakeimage")->row();
        return $query;
    }
    public function edit($id,$cake,$image,$order,$description)
    {
        if($image=="")
        {
            $image=$this->cake_model->getimagebyid($id);
            $image=$image->image;
        }
        $data=array("cake" => $cake,"cake" => $cake,"image" => $image,"order" => $order,"description" => $description);
        $this->db->where( "id", $id );
        $query=$this->db->update( "cakeimage", $data );
        return 1;
    }
    public function delete($id)
    {
        $query=$this->db->query("DELETE FROM `cakeimage` WHERE `id`='$id'");
        return $query;
    }
     public function getImageById($id)
    {
        $query = $this->db->query('SELECT `image` FROM `cakeimage` WHERE `id`=('.$this->db->escape($id).')')->row();

        return $query;
    }
}
?>
