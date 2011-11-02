<?php
echo "<div id='header'><img src='".base_url()."img/msf_header.jpg' alt='MSF' />";
echo "<ul id='menu'>";
echo "<li>".anchor('welcome/', 'Home')."</li>";
echo "<li>".anchor('welcome/list_questions', 'Questions & Labels')."</li>";
echo "<li>".anchor('welcome/list_forms', 'Formslist')."</li>";
echo "<li>".anchor('welcome/create_groups', 'Create a group')."</li>";

echo "</ul></div>";
?>
