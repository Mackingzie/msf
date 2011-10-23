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
        
        $json = json_decode($_POST["data"], TRUE);
        
        switch ($json['items'][0]['type']) {
            case'text': $ver_type = '1';
                break;
            case'radiobuttons': $ver_type = '2';
                break;
            case'checkboxes': $ver_type = '3';
                break;
        }

        $data = array(
            'question' => $json['items'][1]['question'],
            'type' => $ver_type
        );
        
        $data['answ1'] = $json['items'][2]['answ'];
        $data['answ2'] = $json['items'][3]['answ'];
        $data['answ3'] = $json['items'][4]['answ'];
        $data['answ4'] = $json['items'][5]['answ'];
        $data['answ5'] = $json['items'][6]['answ'];
        $data['answ6'] = $json['items'][7]['answ'];
        $data['answ7'] = $json['items'][8]['answ'];
        $data['answ8'] = $json['items'][9]['answ'];
        $data['answ9'] = $json['items'][10]['answ'];
        $data['answ10'] = $json['items'][11]['answ'];

        $data['cansw1'] = $json['items'][2]['cansw'];
        $data['cansw2'] = $json['items'][3]['cansw'];
        $data['cansw3'] = $json['items'][4]['cansw'];
        $data['cansw4'] = $json['items'][5]['cansw'];
        $data['cansw5'] = $json['items'][6]['cansw'];
        $data['cansw6'] = $json['items'][7]['cansw'];
        $data['cansw7'] = $json['items'][8]['cansw'];
        $data['cansw8'] = $json['items'][9]['cansw'];
        $data['cansw9'] = $json['items'][10]['cansw'];
        $data['cansw10'] = $json['items'][11]['cansw'];
        print_r($data);
        #die;
        if ($this->db->insert('questions', $data))
            return 'a2';
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

            case'freetext': $ver_type = '7';
                break;
            case'default_label': $ver_type = '8';
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
