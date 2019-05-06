<?php 
	defined('BASEPATH') OR exit('No direct script access allowed');
	class C_Login extends CI_Controller{
		function __construct(){
			parent:: __construct();
			$this->load->model('Models_Login');
		}
		function index(){
			$this->load->view('admin/dashboard/petugas/login_petugas');
		}
		function aksi_login(){
			$username = $this->input->post('Nama');
			$password = $this->input->post('pass_petugas');
			$where = array(
					'Nama' => $username,
					'pass_petugas' => $password
				);
			$cek = $this->Models_Login->cek_login("petugas",$where);
			if($cek >0)
			{
				$data_session = array(
								'nama' => $username,
								'status' => "login"
							);
				$this->session->set_userdata($data_session);
				$this->login->last_login();
				redirect(base_url("Perpustakaan/petugas"));
			}
			else{
				echo("Username dan password salah!");
			}
			$this->load->view('admin/dashboard/petugas/login_petugas');
		}
	}
 ?>