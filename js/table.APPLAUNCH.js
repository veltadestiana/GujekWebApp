
/*
 * Editor client script for DB table EMPLOYEE
 * Created by http://editor.datatables.net/generator
 */

(function($){

$(document).ready(function() {
	var editor = new $.fn.dataTable.Editor( {
		ajax: 'php/table.APPLAUNCH.php',
		table: '#APPLICATION',
		fields: [
			{
				"label": "App Version",
				"name": "Version_Application"
			},
			{
				"label": "Date Launched",
				"name": "Date_Application"
			}
		]
	} );

	var table = $('#APPLAUNCH').DataTable( {
		dom: 'Bfrtip',
		ajax: 'php/table.APPLAUNCH.php',
		columns: [
			{
				"data": "Version_Application"
			},
			{
				"data": "Date_Application"
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

