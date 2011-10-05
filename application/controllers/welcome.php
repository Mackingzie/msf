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
        $this->load->view('list_questions', $data);
    }

    public function create_question() {

       // $this->load->view('create_question');
    }

    public function submit_question() {
        if ($_POST['question']) {
            $this->questions->submit_question();
            $this->load->view('create_question');
        } else {
            $this->load->view('create_question');
        }
    }

}

/* End of file welcome.php */
/* Location: ./application/controllers/welcome.php */