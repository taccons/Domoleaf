<?php

include('header.php');

if (!empty($_GET['schedule_id']) && !empty($_GET['schedule_name'])) {
	$request =  new Api();
	$request -> add_request('updateScheduleName', array($_GET['schedule_id'], $_GET['schedule_name']));
	$result  =  $request -> send_request();

	if (empty($result->updateScheduleName) || $result->updateScheduleName == -1) {
		echo '-1'.
		'<div class="alert alert-danger alert-dismissible center" role="alert">
			<button type="button" class="close" data-dismiss="alert" aria-label="'._('Close').'">
				<span aria-hidden="true">&times;</span>
			</button>
			'._('Name already existing').'
		</div>';
	}
	else {
		echo $result->updateScheduleName;
	}
}
else {
	$request =  new Api();
	$result  =  $request -> send_request();
	echo '-1'.
			'<div class="alert alert-danger alert-dismissible center" role="alert">
				<button type="button" class="close" data-dismiss="alert" aria-label="'._('Close').'">
					<span aria-hidden="true">&times;</span>
				</button>
				'._('Invalid Name').'
			</div>';
}

?>