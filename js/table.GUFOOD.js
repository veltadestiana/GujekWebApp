
/*
 * Editor client script for DB table EMPLOYEE
 * Created by http://editor.datatables.net/generator
 */

(function($){

$(document).ready(function() {
	var editor = new $.fn.dataTable.Editor( {
		ajax: 'php/table.GUFOOD.php',
		table: '#TR_FOOD',
		fields: [
			{
				"label": "Transaction No.",
				"name": "F_Trans_No"
			},
			{
				"label": "Restaurant Name",
				"name": "F_Rest_Name"
			}
		]
	} );

	var table = $('#GUFOOD').DataTable( {
		dom: 'Bfrtip',
		ajax: 'php/table.GUFOOD.php',
		columns: [
			{
				"data": "F_Trans_No"
			},
			{
				"data": "F_Rest_Name"
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

