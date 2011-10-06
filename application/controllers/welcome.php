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
        $this->load->view('welcome_message');
    }

    //admin functions
    public function create_forms_table() {
        /* recreates forms table */
        $this->forms->create_forms_table();

        $this->load->view('create_forms_table');
    }

    //label CRUD
    public function create_labels() {

        $this->load->view('create_labels');
    }

    public function submit_labels() {
        if ($_POST['label']) {
            $this->questions->submit_labels();
            $this->load->view('create_labels');
        } else {
            $this->load->view('create_labels');
        }
    }

    //questions CRUD
    public function list_questions() {
        $data['content'] = $this->questions->list_questions();

        $i = 0;
        foreach ($data['content'] as $item) {
            $data['content'][$i]['tags'] = $this->tags->retrieve_question_tags($item['id']);
            $i++;
        }

        $this->load->view('list_questions', $data);
    }

    public function create_question() {

        $this->load->view('create_question');
    }

    public function submit_question() {
        if ($_POST['question']) {
            $this->questions->submit_question();
            $this->load->view('answer_question');
        } else {
            $this->load->view('create_question');
        }
    }

    public function edit_question($id = null) {

        if (!$id)
            $id = $this->uri->segment(3);

        $data['content'] = $this->questions->view_question($id);
        $i = 0;
        foreach ($data['content'] as $item) {
            $data['content'][$i]['tags'] = $this->tags->retrieve_question_tags($item['id']);
            $i++;
        }
        $this->load->view('edit_question', $data);
    }

    public function update_question() {
        $id = $this->uri->segment(3);

        if ($this->questions->update_question($id)) {
            redirect('welcome/list_questions');
        } else {
            redirect("welcome/edit_question/$id");
        }
    }

    public function delete_question() {
        $id = $this->uri->segment(3);

        if ($this->questions->delete_question($id)) {
           
            $this->tags->delete_tag_question_connections($id);
            redirect('welcome/list_questions');
        } else {
            redirect("welcome/edit_question/$id");
        }
    }

    //forms
    public function list_forms() {
        $data['content'] = $this->forms->list_forms();
        
        $i = 0;
        foreach ($data['content'] as $item) {
            $data['content'][$i]['tags'] = $this->tags->retrieve_form_tags($item['id']);
            $i++;
        }

        $this->load->view('list_forms', $data);
    }

    public function create_form() {

        $this->load->view('create_form');
    }

    public function submit_form() {

        if ($this->forms->create_form()) {
            redirect('welcome/add_questions_to_form');
        } else {
            redirect("welcome/create_form");
        }
    }

    public function add_questions_to_form() {
        $this->load->view('add_questions_to_form');
    }

    public function submit_questions_to_form() {

        if ($this->forms->submit_questions_to_form()) {
            redirect('welcome/list_forms');
        } else {
            redirect("welcome/add_questions_to_form");
        }
    }



}

/* End of file welcome.php */
/* Location: ./application/controllers/welcome.php */