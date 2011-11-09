<?php

class Users extends CI_Model {

    function get_hash() {
        $hash = null;
        $characters = array(
            "A", "B", "C", "D", "E", "F", "G", "H", "J", "K", "L", "M",
            "N", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z",
            "1", "2", "3", "4", "5", "6", "7", "8", "9");

        //make an "empty container" or array for our keys
        $keys = array();

        while (count($keys) < 64) {

            $x = mt_rand(0, count($characters) - 1);
            if (!in_array($x, $keys)) {
                $keys[] = $x;
            }
        }

        foreach ($keys as $key) {
            $hash .= $characters[$key];
        }
        return $hash;
    }

    function get_new_password() {
        $hash = null;
        $characters = array(
            "A", "B", "C", "D", "E", "F", "G", "H", "J", "K", "L", "M",
            "N", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z",
            "1", "2", "3", "4", "5", "6", "7", "8", "9");

        //make an "empty container" or array for our keys
        $keys = array();

        while (count($keys) < 8) {

            $x = mt_rand(0, count($characters) - 1);
            if (!in_array($x, $keys)) {
                $keys[] = $x;
            }
        }

        foreach ($keys as $key) {
            $hash .= $characters[$key];
        }
        return $hash;
    }

    function register() {

        $email = $_POST['email'];
        $password = $_POST['password']; //$this->get_new_password();
        $a_key = 1; //$this->get_hash();

        $data = array(
            'email' => $email,
            'user_level' => 900,
            'password' => $password,
            'a_key' => $a_key
        );

        $this->db->insert('users', $data);

        $query = $this->db->get_where('users', array('email' => $email, 'password' => $password, 'a_key' => 1));
        if ($query) {
            foreach ($query->result() as $item) {


                $newdata = array(
                    'email' => $email,
                    'logged_in' => 1,
                    'user_level' => $item->user_level,
                    'id' => $item->id
                );

                $this->session->set_userdata($newdata);
            }
            return true;
        }
        /*
          foreach ($query->result_array() as $item) {

          //mail("{$item['email']}", 'MSF activation', "index.php/activation/{$item['id']}/{$item['a_code']}");
          } */
    }

    function logout() {
        $this->session->sess_destroy();
        $newdata = array(
            'logged_in' => 0,
            'email' => null,
            'user_level' => 10000
        );
        $this->session->set_userdata($newdata);
        return true;
    }

    function login() {
        $email = $_POST['email'];
        $password = $_POST['password'];

        $query = $this->db->get_where('users', array('email' => $email, 'password' => $password, 'a_key' => 1));
        if ($query) {
            foreach ($query->result() as $item) {


                $newdata = array(
                    'email' => $email,
                    'logged_in' => 1,
                    'user_level' => $item->user_level,
                    'id' => $item->id
                );

                $this->session->set_userdata($newdata);
            }
            return true;
        }
    }

    function list_users() {
        $this->db->select('email, id');
        $query = $this->db->get('users');
        return $query->result_array();
    }

    function list_groups_by_id() {
        $id = $this->session->userdata('id');

        $this->db->select('users_beto_groups.user_id, users_beto_groups.group_id');
        $this->db->from('users_beto_groups');
        $this->db->join('users_has_groups', 'users_has_groups.group_id = users_beto_groups.group_id');
        $this->db->where('users_has_groups.user_id', $id);
        $this->db->order_by('users_has_groups.group_id');
        $query = $this->db->get();

        return $query->result_array();
    }

    function list_users_by_id($id) {
        $this->db->select('email, id');
        $this->db->where('users.id', $id);
        $query = $this->db->get('users');
        return $query->result_array();
    }

}