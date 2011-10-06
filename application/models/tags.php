<?php

/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 * Description of tags
 *
 * @author marcus
 */
class tags extends CI_Model {

    function retrieve_question_tags($id) {
        $this->db->select('tags.id, tags.tag');
        $this->db->from('tags');
        $this->db->where('questions_has_tags.question_id', $id);
        $this->db->join('questions_has_tags', 'questions_has_tags.tag_id = tags.id');
        
        $query = $this->db->get();
        if($query->result_array()){
            return $query->result_array();
        }else{
            return null;
        }
    }

    function retrieve_form_tags($id) {
        $this->db->select('tags.id, tags.tag');
        $this->db->from('tags');
        $this->db->where('forms_has_tags.question_id', $id);
        $this->db->join('forms_has_tags', 'forms_has_tags.tag_id = tags.id');

        $query = $this->db->get();
        if($query->result_array()){
            return $query->result_array();
        }else{
            return null;
        }
    }

    function delete_tag_question_connections($id){
        
         $this->db->delete('questions_has_tags', array('question_id' => $id));
    }
    function delete_tag_form_connections($id){

         $this->db->delete('forms_has_tags', array('form_id' => $id));
    }

}

?>
