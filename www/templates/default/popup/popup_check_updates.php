<?php

include('header.php');

$request =  new Api();
$request -> add_request('confCheckUpdates');
$result  =  $request -> send_request();

echo
	'<div class="center">'.
		''._('Checking for updates. This may take a few minutes. Please wait...').''.
		'<br/><br/>'.
		'<i class="fa fa-spinner fa-pulse lg"></i>'.
	'</div>';

?>