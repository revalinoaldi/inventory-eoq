<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class M_Eoq extends CI_Model {

	public function get_eoq($kd_barang)
    {
        $this->db->select('*');
        $this->db->from('eoq');
        $this->db->where('barang_id',$kd_barang);
        $this->db->order_by('tgl_eoq', 'desc');
        return $qr = $this->db->get()->row();
    }

    public function insert_eoq($object)
    {
    	$this->db->insert('eoq', $object);
    	return $this->db->affected_rows() > 0 ? true : false;
    }

    public function updated($where, $object)
    {
    	$this->db->where($where);
    	$this->db->update('eoq', $object);
    	return $this->db->affected_rows() > 0 ? true : false;
    }

}

/* End of file M_Eoq.php */
/* Location: ./application/models/M_Eoq.php */