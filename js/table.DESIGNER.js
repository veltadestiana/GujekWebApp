
/*
 * Editor client script for DB table EMPLOYEE
 * Created by http://editor.datatables.net/generator
 */

(function($){

$(document).ready(function() {
	var editor = new $.fn.dataTable.Editor( {
		ajax: 'php/table.DESIGNER.php',
		table: '#APPLICATION_DESIGNER',
		fields: [
			{
				"label": "Employee ID",
				"name": "ID_AppDesign"
			},
			{
				"label": "Education",
				"name": "Education"
			},
			{
				"label": "Email",
				"name": "Email_AppDesign"
			}
		]
	} );

	var table = $('#DESIGNER').DataTable( {
		dom: 'Bfrtip',
		ajax: 'php/table.DESIGNER.php',
		columns: [
			{
				"data": "ID_AppDesign"
			},
			{
				"data": "Education"
			},
			{
				"data": "Email_AppDesign"
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

