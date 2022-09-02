<?php

class Model_kategori extends CI_Model{
    
    public function data_sayur(){
        return $this->db->get_where("tb_barang",array('kategori' => 'sayur'));
    }

    public function data_buah(){
        return $this->db->get_where("tb_barang",array('kategori' => 'buah'));
    }

    public function data_sembako(){
        return $this->db->get_where("tb_barang",array('kategori' => 'sembako'));
    }
}