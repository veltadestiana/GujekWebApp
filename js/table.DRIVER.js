
/*
 * Editor client script for DB table EMPLOYEE
 * Created by http://editor.datatables.net/generator
 */

(function($){

$(document).ready(function() {
	var editor = new $.fn.dataTable.Editor( {
		ajax: 'php/table.DRIVER.php',
		table: '#DRIVER',
		fields: [
			{
				"label": "Driver ID",
				"name": "ID_Driver"
			}
		]
	} );

	var table = $('#DRIVER').DataTable( {
		dom: 'Bfrtip',
		ajax: 'php/table.DRIVER.php',
		columns: [
			{
				"data": "ID_Driver"
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

