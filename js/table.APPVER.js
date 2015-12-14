
/*
 * Editor client script for DB table EMPLOYEE
 * Created by http://editor.datatables.net/generator
 */

(function($){

$(document).ready(function() {
	var editor = new $.fn.dataTable.Editor( {
		ajax: 'php/table.APPVER.php',
		table: '#APP_RELEASE',
		fields: [
			{
				"label": "App Version",
				"name": "App_Version"
			},
			{
				"label": "Design ID",
				"name": "Design_ID"
			}
		]
	} );

	var table = $('#APPVER').DataTable( {
		dom: 'Bfrtip',
		ajax: 'php/table.APPVER.php',
		columns: [
			{
				"data": "App_Version"
			},
			{
				"data": "Design_ID"
			}
		],
		select: true,
		lengthChange: false,
		buttons: [
			{ extend: 'create', editor: editor },
			{ extend: 'edit',   editor: editor },
			{ extend: 'remove', editor: editor }
		]
	} );
} );

}(jQuery));

