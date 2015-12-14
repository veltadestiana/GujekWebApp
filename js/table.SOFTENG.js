
/*
 * Editor client script for DB table EMPLOYEE
 * Created by http://editor.datatables.net/generator
 */

(function($){

$(document).ready(function() {
	var editor = new $.fn.dataTable.Editor( {
		ajax: 'php/table.SOFTENG.php',
		table: '#SOFTWARE_ENG',
		fields: [
			{
				"label": "Employee ID",
				"name": "ID_SWeng"
			}
		]
	} );

	var table = $('#SOFTENG').DataTable( {
		dom: 'Bfrtip',
		ajax: 'php/table.SOFTENG.php',
		columns: [
			{
				"data": "ID_SWeng"
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

