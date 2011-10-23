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
            'author_id' => $form_data[0]['author_id'],
            'title' => $form_data[0]['title'],
            'form_type' => $form_data[0]['form_type'],
            'timer' => $form_data[0]['timer'],
            'active_start' => $form_data[0]['active_start'],
            'active_end' => $form_data[0]['active_end'],
            'hidden_type' => $form_data[0]['hidden_type']
        );

        $i = 1;
        foreach ($form_data[0] as $item) {
            if ($item['q' . $i])
                $data['q' . $i] = $item['q' . $i];

            if ($item['qtype' . $i])
                $data['qtype' . $i] = $item['qtype' . $i];
            $i++;
            if ($i == 200
                )exit;
        }
        $this->db->insert('forms', $data);
        return true;
    }

    function create_form() {
        $form_data[0] = $_POST;

        $data = array(
            'author_id' => $form_data[0]['author_id'],
            'title' => $form_data[0]['title'],
            'form_type' => $form_data[0]['form_type'],
            'timer' => $form_data[0]['timer'],
            'active_start' => $form_data[0]['active_start'],
            'active_end' => $form_data[0]['active_end'],
            'hidden_type' => $form_data[0]['hidden_type']
        );


        $this->db->insert('forms', $data);

        return true;
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
        $this->db->set('forms', $data);

        return true;
    }

    function submit_questions_to_form($id) {

        $json = json_decode($_POST["data"]);
        $y = 0;

        $i = 1;
        foreach ($json->items as $item) {
          //  print($item->order . ' :' . $y . "\n");

            $data["q$i"] = $item->id;

            $y = $item->order;
            $i++;
        }
        print($y);
        for ($z = $y+1; $z <= 199; $z++) {
            $data["q$z"] = NULL;
        }
        print(" z:".$z);

        $this->db->update('forms', $data, array('id' => $id));
    }

    function create_forms_table() {

        $query = $this->db->query(
                        'CREATE TABLE forms (
        id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
        author_id INT NOT NULL,
        created TIMESTAMP(8),
        title VARCHAR (100) NULL,
        q1 INT(10) NULL, qtype1 int(2) NULL ,
q2 INT(10) NULL, qtype2 int(2) NULL ,
q3 INT(10) NULL, qtype3 int(2) NULL ,
q4 INT(10) NULL, qtype4 int(2) NULL ,
q5 INT(10) NULL, qtype5 int(2) NULL ,
q6 INT(10) NULL, qtype6 int(2) NULL ,
q7 INT(10) NULL, qtype7 int(2) NULL ,
q8 INT(10) NULL, qtype8 int(2) NULL ,
q9 INT(10) NULL, qtype9 int(2) NULL ,
q10 INT(10) NULL, qtype10 int(2) NULL ,
q11 INT(10) NULL, qtype11 int(2) NULL ,
q12 INT(10) NULL, qtype12 int(2) NULL ,
q13 INT(10) NULL, qtype13 int(2) NULL ,
q14 INT(10) NULL, qtype14 int(2) NULL ,
q15 INT(10) NULL, qtype15 int(2) NULL ,
q16 INT(10) NULL, qtype16 int(2) NULL ,
q17 INT(10) NULL, qtype17 int(2) NULL ,
q18 INT(10) NULL, qtype18 int(2) NULL ,
q19 INT(10) NULL, qtype19 int(2) NULL ,
q20 INT(10) NULL, qtype20 int(2) NULL ,
q21 INT(10) NULL, qtype21 int(2) NULL ,
q22 INT(10) NULL, qtype22 int(2) NULL ,
q23 INT(10) NULL, qtype23 int(2) NULL ,
q24 INT(10) NULL, qtype24 int(2) NULL ,
q25 INT(10) NULL, qtype25 int(2) NULL ,
q26 INT(10) NULL, qtype26 int(2) NULL ,
q27 INT(10) NULL, qtype27 int(2) NULL ,
q28 INT(10) NULL, qtype28 int(2) NULL ,
q29 INT(10) NULL, qtype29 int(2) NULL ,
q30 INT(10) NULL, qtype30 int(2) NULL ,
q31 INT(10) NULL, qtype31 int(2) NULL ,
q32 INT(10) NULL, qtype32 int(2) NULL ,
q33 INT(10) NULL, qtype33 int(2) NULL ,
q34 INT(10) NULL, qtype34 int(2) NULL ,
q35 INT(10) NULL, qtype35 int(2) NULL ,
q36 INT(10) NULL, qtype36 int(2) NULL ,
q37 INT(10) NULL, qtype37 int(2) NULL ,
q38 INT(10) NULL, qtype38 int(2) NULL ,
q39 INT(10) NULL, qtype39 int(2) NULL ,
q40 INT(10) NULL, qtype40 int(2) NULL ,
q41 INT(10) NULL, qtype41 int(2) NULL ,
q42 INT(10) NULL, qtype42 int(2) NULL ,
q43 INT(10) NULL, qtype43 int(2) NULL ,
q44 INT(10) NULL, qtype44 int(2) NULL ,
q45 INT(10) NULL, qtype45 int(2) NULL ,
q46 INT(10) NULL, qtype46 int(2) NULL ,
q47 INT(10) NULL, qtype47 int(2) NULL ,
q48 INT(10) NULL, qtype48 int(2) NULL ,
q49 INT(10) NULL, qtype49 int(2) NULL ,
q50 INT(10) NULL, qtype50 int(2) NULL ,
q51 INT(10) NULL, qtype51 int(2) NULL ,
q52 INT(10) NULL, qtype52 int(2) NULL ,
q53 INT(10) NULL, qtype53 int(2) NULL ,
q54 INT(10) NULL, qtype54 int(2) NULL ,
q55 INT(10) NULL, qtype55 int(2) NULL ,
q56 INT(10) NULL, qtype56 int(2) NULL ,
q57 INT(10) NULL, qtype57 int(2) NULL ,
q58 INT(10) NULL, qtype58 int(2) NULL ,
q59 INT(10) NULL, qtype59 int(2) NULL ,
q60 INT(10) NULL, qtype60 int(2) NULL ,
q61 INT(10) NULL, qtype61 int(2) NULL ,
q62 INT(10) NULL, qtype62 int(2) NULL ,
q63 INT(10) NULL, qtype63 int(2) NULL ,
q64 INT(10) NULL, qtype64 int(2) NULL ,
q65 INT(10) NULL, qtype65 int(2) NULL ,
q66 INT(10) NULL, qtype66 int(2) NULL ,
q67 INT(10) NULL, qtype67 int(2) NULL ,
q68 INT(10) NULL, qtype68 int(2) NULL ,
q69 INT(10) NULL, qtype69 int(2) NULL ,
q70 INT(10) NULL, qtype70 int(2) NULL ,
q71 INT(10) NULL, qtype71 int(2) NULL ,
q72 INT(10) NULL, qtype72 int(2) NULL ,
q73 INT(10) NULL, qtype73 int(2) NULL ,
q74 INT(10) NULL, qtype74 int(2) NULL ,
q75 INT(10) NULL, qtype75 int(2) NULL ,
q76 INT(10) NULL, qtype76 int(2) NULL ,
q77 INT(10) NULL, qtype77 int(2) NULL ,
q78 INT(10) NULL, qtype78 int(2) NULL ,
q79 INT(10) NULL, qtype79 int(2) NULL ,
q80 INT(10) NULL, qtype80 int(2) NULL ,
q81 INT(10) NULL, qtype81 int(2) NULL ,
q82 INT(10) NULL, qtype82 int(2) NULL ,
q83 INT(10) NULL, qtype83 int(2) NULL ,
q84 INT(10) NULL, qtype84 int(2) NULL ,
q85 INT(10) NULL, qtype85 int(2) NULL ,
q86 INT(10) NULL, qtype86 int(2) NULL ,
q87 INT(10) NULL, qtype87 int(2) NULL ,
q88 INT(10) NULL, qtype88 int(2) NULL ,
q89 INT(10) NULL, qtype89 int(2) NULL ,
q90 INT(10) NULL, qtype90 int(2) NULL ,
q91 INT(10) NULL, qtype91 int(2) NULL ,
q92 INT(10) NULL, qtype92 int(2) NULL ,
q93 INT(10) NULL, qtype93 int(2) NULL ,
q94 INT(10) NULL, qtype94 int(2) NULL ,
q95 INT(10) NULL, qtype95 int(2) NULL ,
q96 INT(10) NULL, qtype96 int(2) NULL ,
q97 INT(10) NULL, qtype97 int(2) NULL ,
q98 INT(10) NULL, qtype98 int(2) NULL ,
q99 INT(10) NULL, qtype99 int(2) NULL ,
q100 INT(10) NULL, qtype100 int(2) NULL ,
q101 INT(10) NULL, qtype101 int(2) NULL ,
q102 INT(10) NULL, qtype102 int(2) NULL ,
q103 INT(10) NULL, qtype103 int(2) NULL ,
q104 INT(10) NULL, qtype104 int(2) NULL ,
q105 INT(10) NULL, qtype105 int(2) NULL ,
q106 INT(10) NULL, qtype106 int(2) NULL ,
q107 INT(10) NULL, qtype107 int(2) NULL ,
q108 INT(10) NULL, qtype108 int(2) NULL ,
q109 INT(10) NULL, qtype109 int(2) NULL ,
q110 INT(10) NULL, qtype110 int(2) NULL ,
q111 INT(10) NULL, qtype111 int(2) NULL ,
q112 INT(10) NULL, qtype112 int(2) NULL ,
q113 INT(10) NULL, qtype113 int(2) NULL ,
q114 INT(10) NULL, qtype114 int(2) NULL ,
q115 INT(10) NULL, qtype115 int(2) NULL ,
q116 INT(10) NULL, qtype116 int(2) NULL ,
q117 INT(10) NULL, qtype117 int(2) NULL ,
q118 INT(10) NULL, qtype118 int(2) NULL ,
q119 INT(10) NULL, qtype119 int(2) NULL ,
q120 INT(10) NULL, qtype120 int(2) NULL ,
q121 INT(10) NULL, qtype121 int(2) NULL ,
q122 INT(10) NULL, qtype122 int(2) NULL ,
q123 INT(10) NULL, qtype123 int(2) NULL ,
q124 INT(10) NULL, qtype124 int(2) NULL ,
q125 INT(10) NULL, qtype125 int(2) NULL ,
q126 INT(10) NULL, qtype126 int(2) NULL ,
q127 INT(10) NULL, qtype127 int(2) NULL ,
q128 INT(10) NULL, qtype128 int(2) NULL ,
q129 INT(10) NULL, qtype129 int(2) NULL ,
q130 INT(10) NULL, qtype130 int(2) NULL ,
q131 INT(10) NULL, qtype131 int(2) NULL ,
q132 INT(10) NULL, qtype132 int(2) NULL ,
q133 INT(10) NULL, qtype133 int(2) NULL ,
q134 INT(10) NULL, qtype134 int(2) NULL ,
q135 INT(10) NULL, qtype135 int(2) NULL ,
q136 INT(10) NULL, qtype136 int(2) NULL ,
q137 INT(10) NULL, qtype137 int(2) NULL ,
q138 INT(10) NULL, qtype138 int(2) NULL ,
q139 INT(10) NULL, qtype139 int(2) NULL ,
q140 INT(10) NULL, qtype140 int(2) NULL ,
q141 INT(10) NULL, qtype141 int(2) NULL ,
q142 INT(10) NULL, qtype142 int(2) NULL ,
q143 INT(10) NULL, qtype143 int(2) NULL ,
q144 INT(10) NULL, qtype144 int(2) NULL ,
q145 INT(10) NULL, qtype145 int(2) NULL ,
q146 INT(10) NULL, qtype146 int(2) NULL ,
q147 INT(10) NULL, qtype147 int(2) NULL ,
q148 INT(10) NULL, qtype148 int(2) NULL ,
q149 INT(10) NULL, qtype149 int(2) NULL ,
q150 INT(10) NULL, qtype150 int(2) NULL ,
q151 INT(10) NULL, qtype151 int(2) NULL ,
q152 INT(10) NULL, qtype152 int(2) NULL ,
q153 INT(10) NULL, qtype153 int(2) NULL ,
q154 INT(10) NULL, qtype154 int(2) NULL ,
q155 INT(10) NULL, qtype155 int(2) NULL ,
q156 INT(10) NULL, qtype156 int(2) NULL ,
q157 INT(10) NULL, qtype157 int(2) NULL ,
q158 INT(10) NULL, qtype158 int(2) NULL ,
q159 INT(10) NULL, qtype159 int(2) NULL ,
q160 INT(10) NULL, qtype160 int(2) NULL ,
q161 INT(10) NULL, qtype161 int(2) NULL ,
q162 INT(10) NULL, qtype162 int(2) NULL ,
q163 INT(10) NULL, qtype163 int(2) NULL ,
q164 INT(10) NULL, qtype164 int(2) NULL ,
q165 INT(10) NULL, qtype165 int(2) NULL ,
q166 INT(10) NULL, qtype166 int(2) NULL ,
q167 INT(10) NULL, qtype167 int(2) NULL ,
q168 INT(10) NULL, qtype168 int(2) NULL ,
q169 INT(10) NULL, qtype169 int(2) NULL ,
q170 INT(10) NULL, qtype170 int(2) NULL ,
q171 INT(10) NULL, qtype171 int(2) NULL ,
q172 INT(10) NULL, qtype172 int(2) NULL ,
q173 INT(10) NULL, qtype173 int(2) NULL ,
q174 INT(10) NULL, qtype174 int(2) NULL ,
q175 INT(10) NULL, qtype175 int(2) NULL ,
q176 INT(10) NULL, qtype176 int(2) NULL ,
q177 INT(10) NULL, qtype177 int(2) NULL ,
q178 INT(10) NULL, qtype178 int(2) NULL ,
q179 INT(10) NULL, qtype179 int(2) NULL ,
q180 INT(10) NULL, qtype180 int(2) NULL ,
q181 INT(10) NULL, qtype181 int(2) NULL ,
q182 INT(10) NULL, qtype182 int(2) NULL ,
q183 INT(10) NULL, qtype183 int(2) NULL ,
q184 INT(10) NULL, qtype184 int(2) NULL ,
q185 INT(10) NULL, qtype185 int(2) NULL ,
q186 INT(10) NULL, qtype186 int(2) NULL ,
q187 INT(10) NULL, qtype187 int(2) NULL ,
q188 INT(10) NULL, qtype188 int(2) NULL ,
q189 INT(10) NULL, qtype189 int(2) NULL ,
q190 INT(10) NULL, qtype190 int(2) NULL ,
q191 INT(10) NULL, qtype191 int(2) NULL ,
q192 INT(10) NULL, qtype192 int(2) NULL ,
q193 INT(10) NULL, qtype193 int(2) NULL ,
q194 INT(10) NULL, qtype194 int(2) NULL ,
q195 INT(10) NULL, qtype195 int(2) NULL ,
q196 INT(10) NULL, qtype196 int(2) NULL ,
q197 INT(10) NULL, qtype197 int(2) NULL ,
q198 INT(10) NULL, qtype198 int(2) NULL ,
q199 INT(10) NULL, qtype199 int(2) NULL ,
q200 INT(10) NULL, qtype200 int(2) NULL 

        )
        
        ');
    }

}

?>
