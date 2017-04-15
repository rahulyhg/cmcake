<?php
if ( !defined( "BASEPATH" ) )
exit( "No direct script access allowed" );
class companypackage_model extends CI_Model
{
public function create($company,$package)
{
    $data=array("company" => $company,"package" => $package);
    $query=$this->db->insert( "companypackage", $data );
    $id=$this->db->insert_id();

    //update company package
     $data1=array("package" => $package);
    $this->db->where( "id", $company );
    $query=$this->db->update( "master_company", $data1 );

    // SEND CREDENTIALS ON COMPANY CREATE

    $companydetails=$this->company_model->getsinglecompany($company);
    //COMPANY PACKAGE
    $package=$companydetails->package;
    $receiver=$companydetails->email;
    $email=$receiver;
    $data['email']=$receiver;
    $companyid=$companydetails->id;
    $expiredate=$companydetails->enddate;
    $sender="master@willnevergrowup.in";
    $this->load->helper('url');
    $mainurl=$this->config->base_url();
    $password=$this->companypackage_model->checkrandom();
    $data['password']=$password;
    $exactpath=$mainurl.$id;
    $data['exactpath']=$mainurl.$companyid;
    // send email
    if($package==1){

          $htmltext = $this->load->view('emailers/starterpackage', $data, true);
        $this->menu_model->emailer($htmltext,'Welcome to Happyness Quotient!',$email,"Sir/Madam");

          $htmltext = $this->load->view('emailers/needtodo', $data, true);
        $this->menu_model->emailer($htmltext,'Happyness Quotient-Here’s What You Need To Do!',$email,"Sir/Madam");
    }
    else if($package==2){

        $htmltext = $this->load->view('emailers/advancedpackage', $data, true);
      $this->menu_model->emailer($htmltext,'Welcome to Happyness Quotient!',$email,"Sir/Madam");

      $htmltext = $this->load->view('emailers/needtodoadvance', $data, true);
    $this->menu_model->emailer($htmltext,'Happyness Quotient-Here’s What You Need To Do!',$email,"Sir/Madam");
    }
    else if($package==3){
      $htmltext = $this->load->view('emailers/propackage', $data, true);
    $this->menu_model->emailer($htmltext,'Welcome to Happyness Quotient!',$email,"Sir/Madam");

    $htmltext = $this->load->view('emailers/needtodopro', $data, true);
  $this->menu_model->emailer($htmltext,'Happyness Quotient-Here’s What You Need To Do!',$email,"Sir/Madam");

    }
    else if($package==4){
      $htmltext = $this->load->view('emailers/propluspackage', $data, true);
    $this->menu_model->emailer($htmltext,'Welcome to Happyness Quotient!',$email,"Sir/Madam");

    $htmltext = $this->load->view('emailers/needtodoproplus', $data, true);
  $this->menu_model->emailer($htmltext,'Happyness Quotient-Here’s What You Need To Do!',$email,"Sir/Madam");

    }


    // ASSIGHNING A CREDENTIALS FOR A COMPANY
    $this->load->helper('url');
    $mainurl=$this->config->base_url();
    $exactpathforcredential=$mainurl.$companyid.'/index.php/json/changecredentials?email='.$receiver.'&pass='.$password.'&package='.$package.'&expiredate='.$expiredate;
    $exactpathtobackend=$mainurl.$companyid;
      // GET CURL
        $ch = curl_init();
        $url=$exactpathforcredential;
        curl_setopt($ch,CURLOPT_URL,$url);
        curl_setopt($ch,CURLOPT_RETURNTRANSFER,true);
        curl_setopt($ch, CURLOPT_SSL_VERIFYPEER, false);
        curl_setopt($ch, CURLOPT_SSL_VERIFYHOST, 2);
      curl_setopt($ch,CURLOPT_HEADER, false);
        $output=curl_exec($ch);
        curl_close($ch);

        // ASSIGHNING A PACKAGE FOR A COMPANY

      $this->load->helper('url');
     $mainurl=$this->config->base_url();
     $exactpath=$mainurl.$companyid.'/index.php/json/assignpackage?package='.$package.'&expiredate='.$expiredate;
     $exactpathtobackend=$mainurl.$companyid;

       // GET CURL
         $ch = curl_init();
         $url=$exactpath;
         curl_setopt($ch,CURLOPT_URL,$url);
         curl_setopt($ch,CURLOPT_RETURNTRANSFER,true);
         curl_setopt($ch, CURLOPT_SSL_VERIFYPEER, false);
         curl_setopt($ch, CURLOPT_SSL_VERIFYHOST, 2);
       curl_setopt($ch,CURLOPT_HEADER, false);
         $output=curl_exec($ch);
         curl_close($ch);


    if(!$query)
    return  0;
    else
    return  $id;
}

     public function checkrandom($length = 10)
	{
	$alphabets = range('A', 'Z');
	$numbers = range('0', '9');
	$smallletters = range('a', 'z');
	$final_array = array_merge($alphabets, $numbers, $smallletters);
	$password = '';
	while ($length--)
		{
		$key = array_rand($final_array);
		$password.= $final_array[$key];
		}

	return $password;
	}
    public function beforeedit($id)
{
    $this->db->where("id",$id);
    $query=$this->db->get("companypackage")->row();
    return $query;
}
    function getsinglecompany($id){
    $this->db->where("id",$id);
    $query=$this->db->get("companypackage")->row();
    return $query;
}
    public function edit($id,$company,$package)
{
    $data=array("company" => $company,"package" => $package);
    $this->db->where( "id", $id );
    $query=$this->db->update( "companypackage", $data );

       //update company package
     $data1=array("package" => $package);
    $this->db->where( "id", $company );
    $query=$this->db->update( "master_company", $data1 );

    $companydetails=$this->company_model->getsinglecompany($company);
    $receiver=$companydetails->email;
    $companyid=$companydetails->id;
    $expiredate=$companydetails->enddate;


       // ASSIGHNING A PACKAGE FOR A COMPANY

     $this->load->helper('url');
    $mainurl=$this->config->base_url();
    $exactpath=$mainurl.$companyid.'/index.php/json/assignpackage?package='.$package.'&expiredate='.$expiredate;
    $exactpathtobackend=$mainurl.$companyid;

      // GET CURL
        $ch = curl_init();
        $url=$exactpath;
        curl_setopt($ch,CURLOPT_URL,$url);
        curl_setopt($ch,CURLOPT_RETURNTRANSFER,true);
        curl_setopt($ch, CURLOPT_SSL_VERIFYPEER, false);
        curl_setopt($ch, CURLOPT_SSL_VERIFYHOST, 2);
      curl_setopt($ch,CURLOPT_HEADER, false);
        $output=curl_exec($ch);
        curl_close($ch);
    return 1;
}
    public function delete($id)
{
    $query=$this->db->query("DELETE FROM `companypackage` WHERE `id`='$id'");
    return $query;
}

    public function getimagebyid($id)
{
    $query=$this->db->query("SELECT `image` FROM `companypackage` WHERE `id`='$id'")->row();
    return $query;
}
}
?>
