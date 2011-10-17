<?php
echo "<div id='header'><img src='".base_url()."img/msf_header.jpg' alt='MSF' />";
echo "<ul id='menu'>";
echo "<li>".anchor('welcome/', 'Home')."</li>";
echo "<li>".anchor('welcome/list_questions', 'Questions & Labels')."</li>";
echo "<li>".anchor('welcome/list_forms', 'Formslist')."</li>";

echo "</ul></div>";
?>
