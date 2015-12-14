
/*
 * Editor client script for DB table EMPLOYEE
 * Created by http://editor.datatables.net/generator
 */

(function($){

$(document).ready(function() {
	var editor = new $.fn.dataTable.Editor( {
		ajax: 'php/table.ANALYST.php',
		table: '#ANALYST',
		fields: [
			{
				"label": "Driver ID",
				"name": "Employee ID"
			}
		]
	} );

	var table = $('#ANALYST').DataTable( {
		dom: 'Bfrtip',
		ajax: 'php/table.ANALYST.php',
		columns: [
			{
				"data": "ID_Analyst"
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

