<?php
/* 
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 * Description of forms
 *
 * @author marcus
 */
class forms extends CI_Model{


    function return_data(){
        $query = $this->db->query('users');
        return $query->result_array();
    }
}
?>
