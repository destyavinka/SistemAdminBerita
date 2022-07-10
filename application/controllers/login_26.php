<?php
class Login_26 extends CI_Controller
{
    public function __construct()
    {
        parent::__construct();
        $this->load->model('Loginregister_26');
    }

    public function index()
    {
        // $data['email'] = $this->db->get_whare();
        $this->form_validation->set_rules('user', 'email', 'required');
        $this->form_validation->set_rules('password', 'password', 'required');

        if ($this->form_validation->run() == false) {
            $this->load->view('login/view_login_26');
        } else {
            $this->proses_login();
        }
    }

    public function proses_login()
    {
        $user = $this->input->post('user');
        $password = $this->input->post('password');
        $login = $this->db->get_where('user', ['user' => $user])->row_array();

        if ($user != '' && $password != '') {
            $row = $this->Loginregister_26
                ->cek_user($user, $password);

            //buat session
            if ($row) {
                $data = array(
                    'id_user' => $login['id_user'],
                    'user' => $login['user'],
                    'nama_pengguna' => $login['nama_pengguna'],
                    'password' => $login['password']
                );
                $this->session->set_userdata($data);
                $id_user = $this->session->userdata('id_user');

                $dataPeran = $this->Loginregister_26
                    ->ambil_id_peran_trx($id_user);
                $arrayDataUser = array(
                    'id_peran' => $dataPeran->id_peran
                );

                //pindah role
                if ($dataPeran) {
                    //role admin
                    if ($arrayDataUser['id_peran'] == "1") {
                        $ambilUrl = $this->Loginregister_26
                            ->ambil_url_peran($arrayDataUser['id_peran']);
                        $arrayUrl = array(
                            'url' => $ambilUrl->url
                        );
                        redirect($arrayUrl['url']);

                        //role contributtor
                    } elseif ($arrayDataUser['id_peran'] == "2") {
                        $ambilUrl = $this->Loginregister_26
                            ->ambil_url_peran($arrayDataUser['id_peran']);
                        $arrayUrl = array(
                            'url' => $ambilUrl->url
                        );
                        redirect($arrayUrl['url']);
                    }
                }
                //jika error
            } else {
                $this->session->set_flashdata('message', '<div class="alert alert-warning alert-dismissible fade show" role="alert">
                Username dan Password Salah
              </div>');
                redirect('login_26');
            }
        } else {
            //     $this->session->set_flashdata('message', '<div class="alert
            //     alert-danger" role="alert">
            //     Username dan Password Wajib diisi
            //  </div>');
            redirect('login_26');
        }
    }

    public function logout()
    {
        $this->session->sess_destroy();
        redirect('login_26');
    }
}
