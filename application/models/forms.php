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
class forms extends CI_Model {

    function list_forms() {
        $this->db->order_by('forms.created', 'DESC');
        $query = $this->db->get('forms');
        return $query->result_array();
    }

    function delete_form($id) {

        $this->db->delete('forms', array('id' => $id));
        return true;
    }

    function view_form($id) {

        $query = $this->db->get_where('forms', array('id' => $id));

        return $query->result_array();
    }

    function copy_form($id) {

        $query = $this->db->get_where('forms', array('id' => $id));
        $form_data = $query->result_array();
        
        $data = array(
            'author_id' => $this->session->userdata('id'),
            'title' => $form_data[0]['title'],
            'form_type' => $form_data[0]['form_type'],
            'timer' => $form_data[0]['timer'],
            'active_start' => $form_data[0]['active_start'],
            'active_end' => $form_data[0]['active_end'],
            'hidden_type' => $form_data[0]['hidden_type']
        );
       
        
        $i = 1;
        foreach ($form_data as $item) {
            if ($item['q' . $i]) $data['q' . $i] = $item['q' . $i];
            //if ($item['qpoints' . $i]) $data['qpoints' . $i] = $item['qpoints' . $i];
            
            $i++;
            if ($i == 200)exit;
        }
        
        $this->db->insert('forms', $data);
        
    }

    function create_form() {
        $form_data[0] = $_POST;

        $data = array(
            'author_id' => $this->session->userdata('id'),
            'title' => $form_data[0]['title'],
            'form_type' => $form_data[0]['form_type'],
            'timer' => $form_data[0]['timer'],
            'active_start' => $form_data[0]['active_start'],
            'active_end' => $form_data[0]['active_end'],
            'hidden_type' => $form_data[0]['hidden_type']
        );
        $this->db->insert('forms', $data);
        //return id
        $this->db->select('id');
        $query = $this->db->get_where('forms', array('title' => $form_data[0]['title'], 'author_id' => $this->session->userdata('id')));
        foreach ($query->result_array() as $item){
            return $item['id'];
        }
    }

    function update_form($id) {
        $form_data[0] = $_POST;
        $data = array(
            'author_id' => $form_data[0]['author_id'],
            'title' => $form_data[0]['title'],
            'form_type' => $form_data[0]['form_type'],
            'active_start' => $form_data[0]['active_start'],
            'timer' => $form_data[0]['timer'],
            'active_end' => $form_data[0]['active_end'],
            'hidden_type' => $form_data[0]['hidden_type']
        );

        $this->db->where('id', $id);
        $this->db->update('forms', $data);

        return true;
    }

    function submit_questions_to_form($id) {

        $json = json_decode($_POST["data"]);
        if ($json

            );
        $y = 0;

        $i = 1;
        foreach ($json->items as $item) {

            $data["q$i"] = $item->id;

            $y = $item->order;
            $i++;
        }
        for ($z = $y + 1; $z <= 199; $z++) {
            $data["q$z"] = NULL;
        }
        

        $this->db->update('forms', $data, array('id' => $id));
    }

    function submit_points_to_form($id) {

        $json = json_decode($_POST["data"]);
        if ($json
            );
        $y = 0;

        $i = 1;
        foreach ($json->items as $item) {

            $data["q_points$i"] = $item->points;

            $y = $item->order;
            $i++;
        }
        
        for ($z = $y + 1; $z <= 199; $z++) {
            $data["q_points$z"] = NULL;
        }
        
        $this->db->update('forms', $data, array('id' => $id));
    }

    function submit_form_to_users($form_id, $sender) {
        $json = json_decode($_POST["data"]);
        if ($json
            );

        foreach ($json->items as $item) {

            $array = array('form_id' => $form_id, 'user_id' => $item->id, 'sender' => $sender);

            $this->db->set($array);
            $this->db->insert('forms_active');
        }
    }

    function form_sender($id) {
        $this->db->select('email');
        $this->db->where('forms_active.sender', $id);
        $this->db->from('users');
        $this->db->join('forms_active', 'forms_active.sender = users.id');
        $query = $this->db->get();
        foreach ($query->result() as $row) {
            return $row->email;
        }
    }

    function list_active_forms($id) {
        $attr = array('forms_active.user_id' => $id, 'forms_active.active' => 1);
        $this->db->select('forms.id, author_id, active_start, active_end, timer, created, title, hidden_type, form_type, sender');
        $this->db->order_by('forms.active_start', 'ASC');
        $this->db->where($attr);
        $this->db->from('forms');
        $this->db->join('forms_active', 'forms_active.form_id = forms.id');

        $query = $this->db->get();
        return $query->result_array();
    }

    function list_inactive_forms($id) {
        $attr = array('forms_active.user_id' => $id, 'forms_active.active' => 0);
        $this->db->select('forms.id, author_id, active_start, active_end, timer, created, title, hidden_type, form_type, sender');
        $this->db->order_by('forms.active_end', 'DESC');
        $this->db->where($attr);
        $this->db->from('forms');
        $this->db->join('forms_active', 'forms_active.form_id = forms.id');

        $query = $this->db->get();
        return $query->result_array();
    }

    function delete_active_form($id, $uid) {
        $data = array('active' => 0);
        $attr = array('form_id' => $id, 'user_id' => $uid);
        $this->db->where($attr);
        if ($this->db->update('forms_active', $data)) {
            return true;
        }
    }

    function create_forms_table() {

        $query = $this->db->query(
                        'CREATE TABLE forms (
        id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
        author_id INT NOT NULL,
        created TIMESTAMP(8),
        title VARCHAR (100) NULL,
        q1 INT(10) NULL, q_points1 int(3) NULL ,
q2 INT(10) NULL, q_points2 int(3) NULL ,
q3 INT(10) NULL, q_points3 int(3) NULL ,
q4 INT(10) NULL, q_points4 int(3) NULL ,
q5 INT(10) NULL, q_points5 int(3) NULL ,
q6 INT(10) NULL, q_points6 int(3) NULL ,
q7 INT(10) NULL, q_points7 int(3) NULL ,
q8 INT(10) NULL, q_points8 int(3) NULL ,
q9 INT(10) NULL, q_points9 int(3) NULL ,
q10 INT(10) NULL, q_points10 int(3) NULL ,
q11 INT(10) NULL, q_points11 int(3) NULL ,
q12 INT(10) NULL, q_points12 int(3) NULL ,
q13 INT(10) NULL, q_points13 int(3) NULL ,
q14 INT(10) NULL, q_points14 int(3) NULL ,
q15 INT(10) NULL, q_points15 int(3) NULL ,
q16 INT(10) NULL, q_points16 int(3) NULL ,
q17 INT(10) NULL, q_points17 int(3) NULL ,
q18 INT(10) NULL, q_points18 int(3) NULL ,
q19 INT(10) NULL, q_points19 int(3) NULL ,
q20 INT(10) NULL, q_points20 int(3) NULL ,
q21 INT(10) NULL, q_points21 int(3) NULL ,
q22 INT(10) NULL, q_points22 int(3) NULL ,
q23 INT(10) NULL, q_points23 int(3) NULL ,
q24 INT(10) NULL, q_points24 int(3) NULL ,
q25 INT(10) NULL, q_points25 int(3) NULL ,
q26 INT(10) NULL, q_points26 int(3) NULL ,
q27 INT(10) NULL, q_points27 int(3) NULL ,
q28 INT(10) NULL, q_points28 int(3) NULL ,
q29 INT(10) NULL, q_points29 int(3) NULL ,
q30 INT(10) NULL, q_points30 int(3) NULL ,
q31 INT(10) NULL, q_points31 int(3) NULL ,
q32 INT(10) NULL, q_points32 int(3) NULL ,
q33 INT(10) NULL, q_points33 int(3) NULL ,
q34 INT(10) NULL, q_points34 int(3) NULL ,
q35 INT(10) NULL, q_points35 int(3) NULL ,
q36 INT(10) NULL, q_points36 int(3) NULL ,
q37 INT(10) NULL, q_points37 int(3) NULL ,
q38 INT(10) NULL, q_points38 int(3) NULL ,
q39 INT(10) NULL, q_points39 int(3) NULL ,
q40 INT(10) NULL, q_points40 int(3) NULL ,
q41 INT(10) NULL, q_points41 int(3) NULL ,
q42 INT(10) NULL, q_points42 int(3) NULL ,
q43 INT(10) NULL, q_points43 int(3) NULL ,
q44 INT(10) NULL, q_points44 int(3) NULL ,
q45 INT(10) NULL, q_points45 int(3) NULL ,
q46 INT(10) NULL, q_points46 int(3) NULL ,
q47 INT(10) NULL, q_points47 int(3) NULL ,
q48 INT(10) NULL, q_points48 int(3) NULL ,
q49 INT(10) NULL, q_points49 int(3) NULL ,
q50 INT(10) NULL, q_points50 int(3) NULL ,
q51 INT(10) NULL, q_points51 int(3) NULL ,
q52 INT(10) NULL, q_points52 int(3) NULL ,
q53 INT(10) NULL, q_points53 int(3) NULL ,
q54 INT(10) NULL, q_points54 int(3) NULL ,
q55 INT(10) NULL, q_points55 int(3) NULL ,
q56 INT(10) NULL, q_points56 int(3) NULL ,
q57 INT(10) NULL, q_points57 int(3) NULL ,
q58 INT(10) NULL, q_points58 int(3) NULL ,
q59 INT(10) NULL, q_points59 int(3) NULL ,
q60 INT(10) NULL, q_points60 int(3) NULL ,
q61 INT(10) NULL, q_points61 int(3) NULL ,
q62 INT(10) NULL, q_points62 int(3) NULL ,
q63 INT(10) NULL, q_points63 int(3) NULL ,
q64 INT(10) NULL, q_points64 int(3) NULL ,
q65 INT(10) NULL, q_points65 int(3) NULL ,
q66 INT(10) NULL, q_points66 int(3) NULL ,
q67 INT(10) NULL, q_points67 int(3) NULL ,
q68 INT(10) NULL, q_points68 int(3) NULL ,
q69 INT(10) NULL, q_points69 int(3) NULL ,
q70 INT(10) NULL, q_points70 int(3) NULL ,
q71 INT(10) NULL, q_points71 int(3) NULL ,
q72 INT(10) NULL, q_points72 int(3) NULL ,
q73 INT(10) NULL, q_points73 int(3) NULL ,
q74 INT(10) NULL, q_points74 int(3) NULL ,
q75 INT(10) NULL, q_points75 int(3) NULL ,
q76 INT(10) NULL, q_points76 int(3) NULL ,
q77 INT(10) NULL, q_points77 int(3) NULL ,
q78 INT(10) NULL, q_points78 int(3) NULL ,
q79 INT(10) NULL, q_points79 int(3) NULL ,
q80 INT(10) NULL, q_points80 int(3) NULL ,
q81 INT(10) NULL, q_points81 int(3) NULL ,
q82 INT(10) NULL, q_points82 int(3) NULL ,
q83 INT(10) NULL, q_points83 int(3) NULL ,
q84 INT(10) NULL, q_points84 int(3) NULL ,
q85 INT(10) NULL, q_points85 int(3) NULL ,
q86 INT(10) NULL, q_points86 int(3) NULL ,
q87 INT(10) NULL, q_points87 int(3) NULL ,
q88 INT(10) NULL, q_points88 int(3) NULL ,
q89 INT(10) NULL, q_points89 int(3) NULL ,
q90 INT(10) NULL, q_points90 int(3) NULL ,
q91 INT(10) NULL, q_points91 int(3) NULL ,
q92 INT(10) NULL, q_points92 int(3) NULL ,
q93 INT(10) NULL, q_points93 int(3) NULL ,
q94 INT(10) NULL, q_points94 int(3) NULL ,
q95 INT(10) NULL, q_points95 int(3) NULL ,
q96 INT(10) NULL, q_points96 int(3) NULL ,
q97 INT(10) NULL, q_points97 int(3) NULL ,
q98 INT(10) NULL, q_points98 int(3) NULL ,
q99 INT(10) NULL, q_points99 int(3) NULL ,
q100 INT(10) NULL, q_points100 int(3) NULL ,
q101 INT(10) NULL, q_points101 int(3) NULL ,
q102 INT(10) NULL, q_points102 int(3) NULL ,
q103 INT(10) NULL, q_points103 int(3) NULL ,
q104 INT(10) NULL, q_points104 int(3) NULL ,
q105 INT(10) NULL, q_points105 int(3) NULL ,
q106 INT(10) NULL, q_points106 int(3) NULL ,
q107 INT(10) NULL, q_points107 int(3) NULL ,
q108 INT(10) NULL, q_points108 int(3) NULL ,
q109 INT(10) NULL, q_points109 int(3) NULL ,
q110 INT(10) NULL, q_points110 int(3) NULL ,
q111 INT(10) NULL, q_points111 int(3) NULL ,
q112 INT(10) NULL, q_points112 int(3) NULL ,
q113 INT(10) NULL, q_points113 int(3) NULL ,
q114 INT(10) NULL, q_points114 int(3) NULL ,
q115 INT(10) NULL, q_points115 int(3) NULL ,
q116 INT(10) NULL, q_points116 int(3) NULL ,
q117 INT(10) NULL, q_points117 int(3) NULL ,
q118 INT(10) NULL, q_points118 int(3) NULL ,
q119 INT(10) NULL, q_points119 int(3) NULL ,
q120 INT(10) NULL, q_points120 int(3) NULL ,
q121 INT(10) NULL, q_points121 int(3) NULL ,
q122 INT(10) NULL, q_points122 int(3) NULL ,
q123 INT(10) NULL, q_points123 int(3) NULL ,
q124 INT(10) NULL, q_points124 int(3) NULL ,
q125 INT(10) NULL, q_points125 int(3) NULL ,
q126 INT(10) NULL, q_points126 int(3) NULL ,
q127 INT(10) NULL, q_points127 int(3) NULL ,
q128 INT(10) NULL, q_points128 int(3) NULL ,
q129 INT(10) NULL, q_points129 int(3) NULL ,
q130 INT(10) NULL, q_points130 int(3) NULL ,
q131 INT(10) NULL, q_points131 int(3) NULL ,
q132 INT(10) NULL, q_points132 int(3) NULL ,
q133 INT(10) NULL, q_points133 int(3) NULL ,
q134 INT(10) NULL, q_points134 int(3) NULL ,
q135 INT(10) NULL, q_points135 int(3) NULL ,
q136 INT(10) NULL, q_points136 int(3) NULL ,
q137 INT(10) NULL, q_points137 int(3) NULL ,
q138 INT(10) NULL, q_points138 int(3) NULL ,
q139 INT(10) NULL, q_points139 int(3) NULL ,
q140 INT(10) NULL, q_points140 int(3) NULL ,
q141 INT(10) NULL, q_points141 int(3) NULL ,
q142 INT(10) NULL, q_points142 int(3) NULL ,
q143 INT(10) NULL, q_points143 int(3) NULL ,
q144 INT(10) NULL, q_points144 int(3) NULL ,
q145 INT(10) NULL, q_points145 int(3) NULL ,
q146 INT(10) NULL, q_points146 int(3) NULL ,
q147 INT(10) NULL, q_points147 int(3) NULL ,
q148 INT(10) NULL, q_points148 int(3) NULL ,
q149 INT(10) NULL, q_points149 int(3) NULL ,
q150 INT(10) NULL, q_points150 int(3) NULL ,
q151 INT(10) NULL, q_points151 int(3) NULL ,
q152 INT(10) NULL, q_points152 int(3) NULL ,
q153 INT(10) NULL, q_points153 int(3) NULL ,
q154 INT(10) NULL, q_points154 int(3) NULL ,
q155 INT(10) NULL, q_points155 int(3) NULL ,
q156 INT(10) NULL, q_points156 int(3) NULL ,
q157 INT(10) NULL, q_points157 int(3) NULL ,
q158 INT(10) NULL, q_points158 int(3) NULL ,
q159 INT(10) NULL, q_points159 int(3) NULL ,
q160 INT(10) NULL, q_points160 int(3) NULL ,
q161 INT(10) NULL, q_points161 int(3) NULL ,
q162 INT(10) NULL, q_points162 int(3) NULL ,
q163 INT(10) NULL, q_points163 int(3) NULL ,
q164 INT(10) NULL, q_points164 int(3) NULL ,
q165 INT(10) NULL, q_points165 int(3) NULL ,
q166 INT(10) NULL, q_points166 int(3) NULL ,
q167 INT(10) NULL, q_points167 int(3) NULL ,
q168 INT(10) NULL, q_points168 int(3) NULL ,
q169 INT(10) NULL, q_points169 int(3) NULL ,
q170 INT(10) NULL, q_points170 int(3) NULL ,
q171 INT(10) NULL, q_points171 int(3) NULL ,
q172 INT(10) NULL, q_points172 int(3) NULL ,
q173 INT(10) NULL, q_points173 int(3) NULL ,
q174 INT(10) NULL, q_points174 int(3) NULL ,
q175 INT(10) NULL, q_points175 int(3) NULL ,
q176 INT(10) NULL, q_points176 int(3) NULL ,
q177 INT(10) NULL, q_points177 int(3) NULL ,
q178 INT(10) NULL, q_points178 int(3) NULL ,
q179 INT(10) NULL, q_points179 int(3) NULL ,
q180 INT(10) NULL, q_points180 int(3) NULL ,
q181 INT(10) NULL, q_points181 int(3) NULL ,
q182 INT(10) NULL, q_points182 int(3) NULL ,
q183 INT(10) NULL, q_points183 int(3) NULL ,
q184 INT(10) NULL, q_points184 int(3) NULL ,
q185 INT(10) NULL, q_points185 int(3) NULL ,
q186 INT(10) NULL, q_points186 int(3) NULL ,
q187 INT(10) NULL, q_points187 int(3) NULL ,
q188 INT(10) NULL, q_points188 int(3) NULL ,
q189 INT(10) NULL, q_points189 int(3) NULL ,
q190 INT(10) NULL, q_points190 int(3) NULL ,
q191 INT(10) NULL, q_points191 int(3) NULL ,
q192 INT(10) NULL, q_points192 int(3) NULL ,
q193 INT(10) NULL, q_points193 int(3) NULL ,
q194 INT(10) NULL, q_points194 int(3) NULL ,
q195 INT(10) NULL, q_points195 int(3) NULL ,
q196 INT(10) NULL, q_points196 int(3) NULL ,
q197 INT(10) NULL, q_points197 int(3) NULL ,
q198 INT(10) NULL, q_points198 int(3) NULL ,
q199 INT(10) NULL, q_points199 int(3) NULL ,
q200 INT(10) NULL, q_points200 int(3) NULL 


        )
        
        ');
    }

}

?>
