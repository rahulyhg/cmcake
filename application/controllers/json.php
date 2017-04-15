<?php if ( ! defined("BASEPATH")) exit("No direct script access allowed");
class Json extends CI_Controller 
{function getalltype()
{
$elements=array();
$elements[0]=new stdClass();
$elements[0]->field="`cm_type`.`id`";
$elements[0]->sort="1";
$elements[0]->header="ID";
$elements[0]->alias="id";

$elements=array();
$elements[1]=new stdClass();
$elements[1]->field="`cm_type`.`name`";
$elements[1]->sort="1";
$elements[1]->header="Name";
$elements[1]->alias="name";

$elements=array();
$elements[2]=new stdClass();
$elements[2]->field="`cm_type`.`image`";
$elements[2]->sort="1";
$elements[2]->header="Image";
$elements[2]->alias="image";

$elements=array();
$elements[3]=new stdClass();
$elements[3]->field="`cm_type`.`icon`";
$elements[3]->sort="1";
$elements[3]->header="Icon";
$elements[3]->alias="icon";

$elements=array();
$elements[4]=new stdClass();
$elements[4]->field="`cm_type`.`status`";
$elements[4]->sort="1";
$elements[4]->header="Status";
$elements[4]->alias="status";

$search=$this->input->get_post("search");
$pageno=$this->input->get_post("pageno");
$orderby=$this->input->get_post("orderby");
$orderorder=$this->input->get_post("orderorder");
$maxrow=$this->input->get_post("maxrow");
if($maxrow=="")
{
}
if($orderby=="")
{
$orderby="id";
$orderorder="ASC";
}
$data["message"]=$this->chintantable->query($pageno,$maxrow,$orderby,$orderorder,$search,$elements,"FROM `cm_type`");
$this->load->view("json",$data);
}
public function getsingletype()
{
$id=$this->input->get_post("id");
$data["message"]=$this->type_model->getsingletype($id);
$this->load->view("json",$data);
}
function getallcake()
{
$elements=array();
$elements[0]=new stdClass();
$elements[0]->field="`cm_cake`.`id`";
$elements[0]->sort="1";
$elements[0]->header="ID";
$elements[0]->alias="id";

$elements=array();
$elements[1]=new stdClass();
$elements[1]->field="`cm_cake`.`name`";
$elements[1]->sort="1";
$elements[1]->header="Name";
$elements[1]->alias="name";

$elements=array();
$elements[2]=new stdClass();
$elements[2]->field="`cm_cake`.`description`";
$elements[2]->sort="1";
$elements[2]->header="Description";
$elements[2]->alias="description";

$elements=array();
$elements[3]=new stdClass();
$elements[3]->field="`cm_cake`.`image`";
$elements[3]->sort="1";
$elements[3]->header="Image";
$elements[3]->alias="image";

$elements=array();
$elements[4]=new stdClass();
$elements[4]->field="`cm_cake`.`price`";
$elements[4]->sort="1";
$elements[4]->header="Price";
$elements[4]->alias="price";

$elements=array();
$elements[5]=new stdClass();
$elements[5]->field="`cm_cake`.`status`";
$elements[5]->sort="1";
$elements[5]->header="Status";
$elements[5]->alias="status";

$search=$this->input->get_post("search");
$pageno=$this->input->get_post("pageno");
$orderby=$this->input->get_post("orderby");
$orderorder=$this->input->get_post("orderorder");
$maxrow=$this->input->get_post("maxrow");
if($maxrow=="")
{
}
if($orderby=="")
{
$orderby="id";
$orderorder="ASC";
}
$data["message"]=$this->chintantable->query($pageno,$maxrow,$orderby,$orderorder,$search,$elements,"FROM `cm_cake`");
$this->load->view("json",$data);
}
public function getsinglecake()
{
$id=$this->input->get_post("id");
$data["message"]=$this->cake_model->getsinglecake($id);
$this->load->view("json",$data);
}
function getallcontact()
{
$elements=array();
$elements[0]=new stdClass();
$elements[0]->field="`cm_contact`.`id`";
$elements[0]->sort="1";
$elements[0]->header="ID";
$elements[0]->alias="id";

$elements=array();
$elements[1]=new stdClass();
$elements[1]->field="`cm_contact`.`name`";
$elements[1]->sort="1";
$elements[1]->header="Name";
$elements[1]->alias="name";

$elements=array();
$elements[2]=new stdClass();
$elements[2]->field="`cm_contact`.`email`";
$elements[2]->sort="1";
$elements[2]->header="Email";
$elements[2]->alias="email";

$elements=array();
$elements[3]=new stdClass();
$elements[3]->field="`cm_contact`.`contact`";
$elements[3]->sort="1";
$elements[3]->header="Contact";
$elements[3]->alias="contact";

$elements=array();
$elements[4]=new stdClass();
$elements[4]->field="`cm_contact`.`message`";
$elements[4]->sort="1";
$elements[4]->header="Message";
$elements[4]->alias="message";

$elements=array();
$elements[5]=new stdClass();
$elements[5]->field="`cm_contact`.`status`";
$elements[5]->sort="1";
$elements[5]->header="Status";
$elements[5]->alias="status";

$search=$this->input->get_post("search");
$pageno=$this->input->get_post("pageno");
$orderby=$this->input->get_post("orderby");
$orderorder=$this->input->get_post("orderorder");
$maxrow=$this->input->get_post("maxrow");
if($maxrow=="")
{
}
if($orderby=="")
{
$orderby="id";
$orderorder="ASC";
}
$data["message"]=$this->chintantable->query($pageno,$maxrow,$orderby,$orderorder,$search,$elements,"FROM `cm_contact`");
$this->load->view("json",$data);
}
public function getsinglecontact()
{
$id=$this->input->get_post("id");
$data["message"]=$this->contact_model->getsinglecontact($id);
$this->load->view("json",$data);
}
} ?>