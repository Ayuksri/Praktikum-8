<?php
	defined('BASEPATH') OR exit('No direct script access allowed'); 
	class Models_Login extends CI_model{
		function cek_login($tabel, $where){
			$session = $this->db->get_where($tabel, $where)->row();
			$this->session->set_userdata("id",$session->Kd_Petugas);
			return $session;
		}
		function last_login(){
			$tanggal = date('Y-m-d');
			$id = $this->session->userdata("id");
			$this->db->set('last_login',$tanggal);
			$this->db->where('Kd_Petugas',$id);
			$this->db->update('petugas');
		}
	}
 ?>