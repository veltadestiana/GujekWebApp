
/*
 * Editor client script for DB table EMPLOYEE
 * Created by http://editor.datatables.net/generator
 */

(function($){

$(document).ready(function() {
	var editor = new $.fn.dataTable.Editor( {
		ajax: 'php/table.TRANS.php',
		table: '#TR_TRANSPORT',
		fields: [
			{
				"label": "Transaction No.",
				"name": "T_Trans_No"
			},
			{
				"label": "Destination",
				"name": "T_Destination"
			}
		]
	} );

	var table = $('#TRANS').DataTable( {
		dom: 'Bfrtip',
		ajax: 'php/table.TRANS.php',
		columns: [
			{
				"data": "T_Trans_No"
			},
			{
				"data": "T_Destination"
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

