<?php
class Register_26 extends CI_Controller
{
    public function __construct()
    {
        parent::__construct();
        $this->load->model('Loginregister_26');
    }

    public function index()
    {
        $this->form_validation->set_rules('email', 'email', 'required|valid_email');
        $data['perans'] = $this->Loginregister_26->get_perans();
        $this->load->view('login/view_register_26', $data);
    }

    public function proses_register()
    {
        //ambil form
        $email = $this->input->post('email');
        $namaPengguna =  $this->input->post('namaPengguna');
        $password =  $this->input->post('password');
        $konfirmpassword =  $this->input->post('konfirmPassword');
        $peran = $this->input->post('peran');

        if (($email != '') and ($namaPengguna != '') and ($password != '') and ($konfirmpassword != '')) {
            $sql = $this->db->query("SELECT user FROM user where user='$email'");
            $tes_duplikat = $sql->num_rows();
            if ($tes_duplikat > 0) {
                $this->session->set_flashdata('message', 'Nomor KTP Sudah digunakan sebelumnya');
                $data['perans'] = $this->Loginregister_26->get_perans();
                redirect('register_26');
            } else {
                if ($password == $konfirmpassword) {
                    $data = [
                        'user' => $email,
                        'password' => $password,
                        'nama_pengguna' => $namaPengguna
                    ];
                    //tambah ke database user
                    $this->Loginregister_26
                        ->tambah_user($data);

                    //ambil data id user dan id peran
                    $dataUser = $this->Loginregister_26
                        ->ambil_data_id_user($email);
                    $arrayData = [
                        'id_user' => $dataUser->id_user,
                        'id_peran' => $peran
                    ];

                    //tambah data ke trx peran
                    $this->Loginregister_26
                        ->tambah_trx_peran($arrayData);
                    redirect('login_26');
                } else {
                    $data['pesan'] = 'password yang anda masukan harus sama';
                    $this->load->view('login/view_register_26');
                }
            }
        } else {
            redirect('register_26');
        }
    }
}
