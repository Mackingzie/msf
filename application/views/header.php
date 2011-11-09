<?php

echo "<div id='header'><img src='".base_url()."img/msf_header.jpg' alt='MSF' />";
echo "<ul id='menu'>
		<li><a href='' target='_self'>Home</a></li>
		<li><a href='' target='_self'>Questions & Labels</a></li>
		<li><a href='' target='_self'>Formslist</a></li>
		<li><a href='' target='_self'>Create a group</a></li>
		<li><a href='' target='_self'>List My Active forms</a></li>
		<li><a href='' target='_self'>List My Inactive forms</a></li>
</ul>";
if ($this->session->userdata('user_level') < 1000){
echo "<li>".anchor('welcome/', 'Home')."</li>";
echo "<li>".anchor('welcome/list_questions', 'Questions & Labels')."</li>";
echo "<li>".anchor('welcome/list_forms', 'Formslist')."</li>";
echo "<li>".anchor('welcome/create_groups', 'Create a group')."</li>";
echo "<li>".anchor('welcome/list_active_forms', 'List My Active forms')."</li>";
echo "<li>".anchor('welcome/list_inactive_forms', 'List My Inactive forms')."</li>";
}
echo "</ul></div>";
?>
