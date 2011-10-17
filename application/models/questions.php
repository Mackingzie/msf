<?php

/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 * Description of questions
 *
 * @author marcus
 */
class questions extends CI_Model {

    function list_questions() {
        $query = $this->db->get('questions');
        return $query->result_array();
    }

    function list_questions_by_id($id) {

            $query = $this->db->get_where('questions', array('id' => $id));
            return $query->result_array();
        
    }


    function submit_question() {
        $ver_type = null;
       
        $type = $_POST['type'];
        switch ($type) {
            case'text': $ver_type = '1';
                break;

            case'radiobuttons': $ver_type = '2';
                break;

            case'checkboxes': $ver_type = '3';
                break;
        }

        $data = array(
            'question' => $_POST['question'],
            'type' => $ver_type,
            'answ' => $_POST['answ'],
            'answ1' => $_POST['answ1'],
            'answ2' => $_POST['answ2'],
            'answ3' => $_POST['answ3'],
            'answ4' => $_POST['answ4'],
            'answ5' => $_POST['answ5']
            );

        $this->db->insert('questions', $data);
    }

    function submit_labels() {
        $ver_type = null;

        $question = $_POST['label'];

        $type = $_POST['type'];

        switch ($type) {
            case'h3': $ver_type = '4';
                break;

            case'h4': $ver_type = '5';
                break;

            case'cursive': $ver_type = '6';
                break;

            case'em': $ver_type = '7';
                break;
        }

        $data = array(
            'question' => $question,
            'type' => $ver_type,
        );


        $this->db->insert('questions', $data);
    }

    function update_question($id) {
        $ver_type = null;

        $answ = $answ1 = $answ2 = $answ3 = $answ4 = $answ5 = null;


        $question = $_POST['question'];
        $answ = $_POST['answ'];
        $answ1 = $_POST['answ1'];
        $answ2 = $_POST['answ2'];
        $answ3 = $_POST['answ3'];
        $answ4 = $_POST['answ4'];
        $answ5 = $_POST['answ5'];

        $type = $_POST['type'];
        switch ($type) {
            case'text': $ver_type = '1';
                break;

            case'radiobuttons': $ver_type = '2';
                break;

            case'checkboxes': $ver_type = '3';
                break;
        }

        $data = array(
            'question' => $question,
            'type' => $ver_type,
            'answ' => $answ,
            'answ1' => $answ1,
            'answ2' => $answ2,
            'answ3' => $answ3,
            'answ4' => $answ4,
            'answ5' => $answ5,
        );

        $this->db->where('id', $id);
        $this->db->update('questions', $data);
        return true;
    }

    function delete_question($id) {

        $this->db->delete('questions', array('id' => $id));
        return true;
    }

    function view_question($id) {

        $query = $this->db->get_where('questions', array('id' => $id));

        return $query->result_array();
    }

}

?>
