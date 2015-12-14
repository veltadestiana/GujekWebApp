
/*
 * Editor client script for DB table EMPLOYEE
 * Created by http://editor.datatables.net/generator
 */

(function($){

$(document).ready(function() {
	var editor = new $.fn.dataTable.Editor( {
		ajax: 'php/table.SUPERVISOR.php',
		table: '#SUPERVISOR',
		fields: [
			{
				"label": "Supervisor ID",
				"name": "ID_Super"
			},
			{
				"label": "Email",
				"name": "Email_Super"
			}
		]
	} );

	var table = $('#SUPERVISOR').DataTable( {
		dom: 'Bfrtip',
		ajax: 'php/table.SUPERVISOR.php',
		columns: [
			{
				"data": "ID_Super"
			},
			{
				"data": "Email_Super"
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

