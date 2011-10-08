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
        if ($_POST['label']) {
            $this->questions->submit_labels();
            redirect('welcome/list_questions');
        } else {
            redirect('welcome/create_labels');
        }
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
        if ($_POST['question']) {
            $this->questions->submit_question();
            redirect('welcome/list_questions');
        } else {
            $this->load->view('create_question');
        }
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

        if ($this->forms->create_form()) {
            redirect('welcome/list_forms');
        } else {
            redirect("welcome/create_form");
        }
    }

    public function copy_form() {
        $id = $this->uri->segment(3);
        if ($this->forms->copy_form($id)) {
            redirect('welcome/edit_form');
        } else {
            redirect("welcome/create_form");
        }
    }


    public function submit_questions_to_form() {

        if ($this->forms->submit_questions_to_form()) {
            redirect('welcome/list_forms');
        } else {
            redirect("welcome/add_questions_to_form");
        }
    }

    public function view_form($id = null) {
        $data['include'] = __FUNCTION__;
        $data['content'] = $this->forms->view_form($id);
        if (!$id)
            $id = $this->uri->segment(3);
        $i = 0;
        foreach ($data['content'] as $item) {
            $data['content']['questions'] = $this->questions->list_questions_by_id($id);
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

    public function edit_form($id = null) {
        $data['include'] = __FUNCTION__;
        $data['content'] = $this->forms->view_form($id);
        if (!$id)
            $id = $this->uri->segment(3);
        $i = 0;
        foreach ($data['content'] as $item) {
            $data['content']['questions'] = $this->questions->list_questions_by_id($id);
            $i++;
        }
        foreach ($data['content'] as $item) {
            $data['content']['all_questions'] = $this->questions->list_questions();
            $i++;
        }

        $i2 = 0;
        foreach ($data['content'] as $item) {
            $data['content']['tags'] = $this->tags->retrieve_form_tags($id);
            $i2++;
        }

        $this->load->view('index', $data);
    }

    public function update_form() {

        if ($this->forms->create_form()) {
            redirect('welcome/list_forms');
        } else {
            redirect("welcome/create_form");
        }
    }
    public function delete_form_question_connections($id = null) {
        $id = $this->uri->segment(3);
        $this->questions->delete_form_question_connections($id);
        redirect("welcome/view_form/$id");
    }

}

/* End of file welcome.php */
/* Location: ./application/controllers/welcome.php */