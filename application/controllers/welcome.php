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
        $data['session'] = $this->session;
        $data['include'] = 'start';

        $this->load->view('index', $data);
    }

    public function permission_denied() {
        $data['session'] = $this->session;
        $data['include'] = __FUNCTION__;

        $this->load->view('index', $data);
    }

    public function user_home() {
        $data['session'] = $this->session;
        $data['include'] = __FUNCTION__;

        $this->load->view('index', $data);
    }

    // create a new user
    public function register() {
        $data['session'] = $this->session;
        $this->users->register();

        redirect('welcome/user_home');
    }

    public function login() {
        $data['session'] = $this->session;
        if ($this->users->login()) {
            redirect('welcome/user_home');
        } else {
            redirect('welcome/index');
        }
    }

// logout
    public function logout() {

        $this->users->logout();
        redirect('welcome/index');
    }

// delete by user ID
    public function unregister() {

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

//labels CRUD
    public function create_labels() {
        $data['session'] = $this->session;
        if ($this->session->userdata('user_level') > 1000)
            redirect('welcome/permission_denied');
        $data['include'] = __FUNCTION__;
        $this->load->view('index', $data);
    }

    public function submit_labels() {
        $data['session'] = $this->session;
        if ($this->session->userdata('user_level') > 1000)
            redirect('welcome/permission_denied');
        $result = $this->questions->submit_labels();
        echo $result;
    }

//questions CRUD
    public function list_questions() {
        $data['session'] = $this->session;
        if ($this->session->userdata('user_level') > 1000)
            redirect('welcome/permission_denied');
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
        if ($this->session->userdata('user_level') > 1000)
            redirect('welcome/permission_denied');
        $data['include'] = __FUNCTION__;
        $this->load->view('index', $data);
    }

    public function submit_question() {
        if ($this->session->userdata('user_level') > 1000)
            redirect('welcome/permission_denied');
        echo $this->questions->submit_question();
    }

    public function edit_question($id = null) {
        if ($this->session->userdata('user_level') > 1000)
            redirect('welcome/permission_denied');
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
        if ($this->session->userdata('user_level') > 1000)
            redirect('welcome/permission_denied');
        $this->questions->update_question();
    }

    public function delete_question() {
        if ($this->session->userdata('user_level') > 1000)
            redirect('welcome/permission_denied');
        $id = $this->uri->segment(3);
        if ($this->questions->delete_question($id)) {
            $this->tags->delete_tag_question_connections($id);
            redirect('welcome/list_questions');
        }
    }

    public function list_all_questions() {
        if ($this->session->userdata('user_level') > 1000)
            redirect('welcome/permission_denied');
        echo json_encode($this->questions->list_questions());
        //print_r($this->questions->list_questions());
    }

//forms
    public function list_forms() {
        $data['session'] = $this->session;
        if ($this->session->userdata('user_level') > 1000)
            redirect('welcome/permission_denied');
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
        $data['session'] = $this->session;
        if ($this->session->userdata('user_level') > 1000)
            redirect('welcome/permission_denied');
        $data['content']['questions'] = null;
        $data['include'] = __FUNCTION__;

        $data['content']['all_questions'] = $this->questions->list_questions();

        $this->load->view('index', $data);
    }

    public function submit_form() {
        $data['session'] = $this->session;
        if ($this->session->userdata('user_level') > 1000)
            redirect('welcome/permission_denied');
        $this->forms->create_form();
    }

    public function copy_form() {
        $data['session'] = $this->session;
        if ($this->session->userdata('user_level') > 1000)
            redirect('welcome/permission_denied');
        $data['content']['questions'] = null;
        $data['include'] = "edit_form";
        $id = $this->uri->segment(3);
        if (!$this->forms->copy_form($id)) {
            redirect("list_form");
        }

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

        $data['content']['all_questions'] = $this->questions->list_questions();


        foreach ($data['content'][0] as $item) {
            $data['content']['tags'] = $this->tags->retrieve_form_tags($item['id']);
        }
        $this->load->view("index", $data);
    }

    public function view_form($id = null) {
        $data['session'] = $this->session;

        if ($this->session->userdata('user_level') > 1000)
            redirect('welcome/permission_denied');

        $data['include'] = __FUNCTION__;
        if (!$id)
            $id = $this->uri->segment(3);

        $data['content'] = $this->forms->view_form($id);
        $i = 0;
        $data['content']['questions'] = null;
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

        $data['content']['all_questions'] = $this->questions->list_questions();
        $data['content']['tags'] = null;
        foreach ($data['content'][0] as $item) {
            $data['content']['tags'] = $this->tags->retrieve_form_tags($item['id']);
        }

        $this->load->view('index', $data);
    }

    public function delete_form() {
        $data['session'] = $this->session;
        if ($this->session->userdata('user_level') > 1000)
            redirect('welcome/permission_denied');
        $id = $this->uri->segment(3);

        if ($this->forms->delete_form($id)) {

            $this->tags->delete_tag_form_connections($id);
            redirect('welcome/list_forms');
        } else {
            redirect("welcome/edit_forms/$id");
        }
    }

    public function edit_form($id) {
        $data['session'] = $this->session;
        $data['include'] = __FUNCTION__;
        if (!$id)
            $id = $this->uri->segment(3);

        $data['content'] = $this->forms->view_form($id);
        $i = 0;
        $data['content']['questions'] = null;
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

        $data['content']['all_questions'] = $this->questions->list_questions();


        foreach ($data['content'][0] as $item) {
            $data['content']['tags'] = $this->tags->retrieve_form_tags($item_value);
        }

        $this->load->view('index', $data);
    }

    public function update_questions_to_form() {
        if ($this->session->userdata('user_level') > 1000)
            redirect('welcome/permission_denied');
        $id = $this->uri->segment(3);
        $this->forms->submit_questions_to_form($id);
    }

    public function update_points_to_form() {
        if ($this->session->userdata('user_level') > 1000)
            redirect('welcome/permission_denied');
        $id = $this->uri->segment(3);
        $this->forms->submit_points_to_form($id);
    }

    public function update_form($id) {
        if ($this->session->userdata('user_level') > 1000)
            redirect('welcome/permission_denied');
        $this->forms->update_form($id);
        $this->forms->submit_questions_to_form($id);
    }

    public function send_form_to_users() {
        $data['content']['users'] = null;
        $data['session'] = $this->session;
        $data['include'] = __FUNCTION__;
        if ($this->session->userdata('user_level') > 1000)
            redirect('welcome/permission_denied');

        $data['content']['all_users'] = $this->users->list_users();
        $this->load->view('index', $data);
    }

    //groups
    public function create_groups() {
        $data['content']['users'] = null;
        $data['session'] = $this->session;
        $data['include'] = __FUNCTION__;
        if ($this->session->userdata('user_level') > 1000)
            redirect('welcome/permission_denied');

        $data['content']['groups'] = null;
        $data['content']['groups'] = $this->users->list_groups_by_id();
        foreach($data['content']['groups'] as $item){
            //$user = $this->users->list_users_by_id($item['user_id']);
            $data['content'][$item['group_id']] = $item['user_id'];
        }
        echo '<pre>';
        //print_r($user);
        print_r($data['content']['groups']);
        echo '</pre>';
        die;
        $data['content']['all_users'] = $this->users->list_users();
        $this->load->view('index', $data);
    }

}

/* End of file welcome.php */
/* Location: ./application/controllers/welcome.php */