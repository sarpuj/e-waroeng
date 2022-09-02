<?php 

class Kategori extends CI_Controller{
    public function sayur()
    {
        $data['sayur'] = $this->model_kategori->data_sayur()->result();
        $this->load->view('templates/header');
        $this->load->view('templates/sidebar');
        $this->load->view('sayur', $data);
        $this->load->view('templates/footer');

    }

    public function buah()
    {
        $data['buah'] = $this->model_kategori->data_buah()->result();
        $this->load->view('templates/header');
        $this->load->view('templates/sidebar');
        $this->load->view('buah', $data);
        $this->load->view('templates/footer');

    }

    public function sembako()
    {
        $data['sembako'] = $this->model_kategori->data_sembako()->result();
        $this->load->view('templates/header');
        $this->load->view('templates/sidebar');
        $this->load->view('sembako', $data);
        $this->load->view('templates/footer');

    }
}