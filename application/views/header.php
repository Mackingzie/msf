<?php

echo "<div id='header'><img src='".base_url()."img/msf_header.jpg' alt='MSF' />";
echo "<ul id='menu'>";
if($this->session->userdata('id')){
echo "<li>".anchor('welcome/', 'Home')."</li>";
echo "<li>".anchor('welcome/list_questions', 'Questions & Labels')."</li>";
echo "<li>".anchor('welcome/list_forms', 'Formslist')."</li>";
echo "<li>".anchor('welcome/create_groups', 'Create a group')."</li>";
echo "<li>".anchor('welcome/list_active_forms', 'List My Active forms')."</li>";
echo "<li>".anchor('welcome/list_inactive_forms', 'List My Inactive forms')."</li>";
}
echo "</ul></div>";
?>
