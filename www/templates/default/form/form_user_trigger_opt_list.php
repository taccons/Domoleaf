<?php 

include('header.php');

if (!empty($_GET['room_id_device']) || !empty($_GET['id_trigger'])) {
	$request =  new Api();
	$request -> add_request('confDeviceRoomOpt', array($_GET['room_id_device']));
	$request -> add_request('countTriggerConditions', array($_GET['id_trigger']));
	
	$result  =  $request -> send_request();
	$listoptdevice = $result->confDeviceRoomOpt;
	$available_opt = array ("12", "388");
	
	$idexec = $result->countTriggerConditions + 1;
	$display_rgb = '';
	
	foreach ($listoptdevice as $option) {
		if (in_array($option->option_id, $available_opt)) {
			if (($option->option_id == 392 || $option->option_id == 393
				|| $option->option_id == 394 || $option->option_id == 410)) {
				if ($option->option_id == 410) {
					$display_rgb = '
					<li class="list-item">
						<div id="btn-option-'.$_GET['room_id_device'].'" class="box-scenar-devices cursor btn-draggable"
						     onclick="onclickDropNewElem('.$_GET['id_trigger'].', '.$_GET['room_id_device'].', 410, '.$idexec.')">
							<input type="text" value="410" hidden>
							'._('RGBW').'
						</div>
					</li>';
				}
				else if (empty($display_rgb)) {
					$display_rgb = '
					<li class="list-item">
						<div id="btn-option-'.$_GET['room_id_device'].'" class="box-scenar-devices cursor btn-draggable"
						     onclick="onclickDropNewElem('.$_GET['id_smartcmd'].', '.$_GET['room_id_device'].', 392, '.$idexec.')">
							<input type="text" value="392" hidden>
							'._('RGB').'
						</div>
					</li>';
				}
			}
			else if(($option->option_id != 392 && $option->option_id != 393 && $option->option_id != 394)){
				echo '
					<li class="list-item">
						<div id="btn-option-'.$_GET['room_id_device'].'" class="box-scenar-devices cursor btn-draggable"
						     onclick="onclickDropNewElem('.$_GET['id_trigger'].', '.$_GET['room_id_device'].', '.$option->option_id.', '.$idexec.')">
							<input type="text" value="'.$option->option_id.'" hidden>
							'.$option->name.'
						</div>
					</li>';
			}
		}
		
	}
	echo $display_rgb;
	echo '
		<script type="text/javascript">
			$(".btn-draggable").draggable({
				appendTo: "#drop-conditions",
				helper: "clone",
				revert: "invalid",
				start: function() {
					dropZoneAnimate(1);
				},
				stop: function() {
					dropZoneStop(1);
				}
			});
		</script>';
			
}
?>