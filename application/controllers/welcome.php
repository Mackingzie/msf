<?php

if (!defined('BASEPATH'))
    exit('No direct script access allowed');

class Welcome extends CI_Controller {

    /**
     * Index Page for this controller.
     *
     * Maps to the following URL
     * 		http://example.com/index.php/welcome
     * 	- or -
     * 		http://example.com/index.php/welcome/index
     * 	- or -
     * Since this controller is set as the default controller in
     * config/routes.php, it's displayed at http://example.com/
     *
     * So any other public methods not prefixed with an underscore will
     * map to /index.php/welcome/<method_name>
     * @see http://codeigniter.com/user_guide/general/urls.html
     */
    public function index() {
        $data['include'] = 'start';

        $this->load->view('index', $data);
    }

    public function login() {
        redirect('welcome/list_questions');
    }

    public function lost_passw() {
        redirect('welcome/list_questions');
    }

    //admin functions
    public function create_forms_table() {

        /* recreates forms table */
        $this->forms->create_forms_table();

        $this->load->view('create_forms_table');
    }

    //label CRUD
    public function create_labels() {
        $data['include'] = __FUNCTION__;
        $this->load->view('index', $data);
    }

    public function submit_labels() {
        $this->questions->submit_labels();
    }

    //questions CRUD
    public function list_questions() {
        $data['include'] = __FUNCTION__;
        $data['content'] = $this->questions->list_questions();

        $i = 0;
        foreach ($data['content'] as $item) {
            $data['content'][$i]['tags'] = $this->tags->retrieve_question_tags($item['id']);
            $i++;
        }

        $this->load->view('index', $data);
    }

    public function create_question() {
        $data['include'] = __FUNCTION__;
        $this->load->view('index', $data);
    }

    public function submit_question() {
            $this->questions->submit_question();
    }

    public function edit_question($id = null) {
        $data['include'] = __FUNCTION__;

        if (!$id)
            $id = $this->uri->segment(3);

        $data['content'] = $this->questions->view_question($id);
        $i = 0;
        foreach ($data['content'] as $item) {
            $data['content'][$i]['tags'] = $this->tags->retrieve_question_tags($item['id']);
            $i++;
        }
        $this->load->view('index', $data);
    }

    public function update_question() {
        $this->questions->update_question();
    }

    public function delete_question() {
        $id = $this->uri->segment(3);
        if ($this->questions->delete_question($id)) {
            $this->tags->delete_tag_question_connections($id);
            redirect('welcome/list_questions');
        }
        
    }

    //forms
    public function list_forms() {
        $data['include'] = __FUNCTION__;
        $data['content'] = $this->forms->list_forms();

        $i = 0;
        foreach ($data['content'] as $item) {
            $data['content'][$i]['tags'] = $this->tags->retrieve_form_tags($item['id']);
            $i++;
        }

        $this->load->view('index', $data);
    }

    public function create_form() {
        $data['include'] = __FUNCTION__;

        $data['content']['all_questions'] = $this->questions->list_questions();

        $this->load->view('index', $data);
    }

    public function submit_form() {
        $this->forms->create_form();
    }

    public function copy_form() {
        $id = $this->uri->segment(3);
        if ($this->forms->copy_form($id)) {
            redirect('welcome/edit_form');
        } else {
            redirect("welcome/create_form");
        }
    }

    public function view_form($id = null) {
        $data['include'] = __FUNCTION__;
        $data['content'] = $this->forms->view_form($id);
        if (!$id)
            $id = $this->uri->segment(3);

        $i = 0;
        foreach ($data['content'] as $item) {
            $data['content']['questions'] = $this->questions->list_questions_by_id($item['id']);
            $i++;
        }

        $i2 = 0;
        foreach ($data['content'] as $item) {
            $data['content']['tags'] = $this->tags->retrieve_form_tags($id);
            $i2++;
        }

        $this->load->view('index', $data);
    }

    public function delete_form() {
        $id = $this->uri->segment(3);

        if ($this->forms->delete_form($id)) {

            $this->tags->delete_tag_form_connections($id);
            redirect('welcome/list_forms');
        } else {
            redirect("welcome/edit_forms/$id");
        }
    }

    public function edit_form() {
        $data['include'] = __FUNCTION__;
        $id = $this->uri->segment(3);

        $data['content'] = $this->forms->view_form($id);
        $i = 0;
        foreach ($data['content'][0] as $item_key => $item_value) {
            if ($i >= 9) {
                if ($i % 2) {
                    if ($item_value) {

                        $data['content']['questions'][] = $this->questions->list_questions_by_id($item_value);
                    }
                }
            }
            $i++;
        }
        #echo "<pre>";
        #print_r($data['content']['questions']);
        #echo "</pre>";
        #die;
        $data['content']['all_questions'] = $this->questions->list_questions();


        foreach ($data['content'][0] as $item) {
            $data['content']['tags'] = $this->tags->retrieve_form_tags($item['id']);
        }

        $this->load->view('index', $data);
    }

    public function update_questions_to_form() {
        $id = $this->uri->segment(3);
        $this->forms->submit_questions_to_form($id);
    }

    public function update_form($id) {
        $this->forms->update_form($id);
    }

}

/* End of file welcome.php */
/* Location: ./application/controllers/welcome.php */