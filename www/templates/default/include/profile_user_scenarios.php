<?php

include('profile-menu.php');
include('templates/'.TEMPLATE.'/function/display_widget.php');

echo '
	<div id="editSmartcmd">
		<div class="col-xs-offset-2 margin-top center">
			<button class="btn btn-greenleaf" onclick="createSmartcmd()">
				'._('Create New SmartCommand').'
			</button>
		</div>
		<div class="col-xs-offset-2 margin-top col-xs-10">
			<table id="listSmartcmd" class="table table-bordered table-striped table-condensed">
				<thead>
					<tr>
						<th class="center">'._('Smartcommand Name').'</th>
						<th class="center">'._('Room').'</th>
						<th class="center">'._('Actions').'</th>
					</tr>
				</thead>
				<tbody>';
					foreach ($smartcmdList as $elem) {
						echo '
							<tr id="smartcmd-'.$elem->smartcommand_id.'">
								<td>'.$elem->name.'</td>';
								if (empty($elem->room_name)) {
									$elem->room_name = _('None');
								}
								echo '
								<td>'.$elem->room_name.'</td>
								<td class="center">
									<a href="/profile_user_scenarios/'.$elem->smartcommand_id.'">
										<button type="button"
										        title="'._('Edit Smartcommand').'"
										        class="btn btn-primary">
											<i class="glyphicon glyphicon-edit"></i>
										</button>
									</a>
									<button type="button"
									        title="'._('Delete Smartcommand').'"
									        class="btn btn-danger"
									        onclick="PopupRemoveSmartcmd('.$elem->smartcommand_id.')">
										<i class="fa fa-trash-o"></i>
									</button>
								</td>
							</tr>';
					}
					echo '
				</tbody>
			</table>
		</div>
	</div>';

echo '
<script type="text/javascript">
		
	function createSmartcmd() {
		$.ajax({
			type: "GET",
			url: "/templates/'.TEMPLATE.'/popup/popup_user_create_smartcmd.php",
			success: function(msg) {
				BootstrapDialog.show({
					title: \'<div id="popupTitle" class="center"></div>\',
					message: msg
				});
			}
		});
	}

	function PopupRemoveSmartcmd(smartcmd_id) {
		$.ajax({
			type:"GET",
			url: "/templates/'.TEMPLATE.'/popup/popup_remove_smartcmd.php",
			data: "id_smartcmd="+smartcmd_id,
			success: function(result) {
				BootstrapDialog.show({
					title: "'._('Delete Smartcommand Elem').'",
					message: result
				});
			}
		});
	}
	
	function RemoveSmartcmd(smartcmd_id) {
		$.ajax({
			type:"GET",
			url: "/templates/'.TEMPLATE.'/form/form_remove_smartcmd.php",
			data: "id_smartcmd="+smartcmd_id,
			success: function(result) {
				$("#smartcmd-"+smartcmd_id).remove();
				popup_close();
			}
		});
	}
</script>';

?>

