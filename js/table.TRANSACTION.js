
/*
 * Editor client script for DB table EMPLOYEE
 * Created by http://editor.datatables.net/generator
 */

(function($){

$(document).ready(function() {
	var editor = new $.fn.dataTable.Editor( {
		ajax: 'php/table.TRANSACTION.php',
		table: '#TRANSACTION',
		fields: [
			{
				"label": "Transaction No.",
				"name": "No_Transaction"
			},
			{
				"label": "Driver ID",
				"name": "Driver_ID"
			},
			{
				"label": "Customer ID",
				"name": "Customer_ID"
			},
			{
				"label": "Time of Transaction",
				"name": "Time_Transaction"
			}
		]
	} );

	var table = $('#TRANSACTION').DataTable( {
		dom: 'Bfrtip',
		ajax: 'php/table.TRANSACTION.php',
		columns: [
			{
				"data": "No_Transaction"
			},
			{
				"data": "Driver_ID"
			},
			{
				"data": "Customer_ID"
			},
			{
				"data": "Time_Transaction"
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

