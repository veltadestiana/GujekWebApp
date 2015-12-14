
/*
 * Editor client script for DB table EMPLOYEE
 * Created by http://editor.datatables.net/generator
 */

(function($){

$(document).ready(function() {
	var editor = new $.fn.dataTable.Editor( {
		ajax: 'php/table.GUBOX.php',
		table: '#TR_DELIVERY',
		fields: [
			{
				"label": "Transaction No.",
				"name": "D_Trans_No"
			},
			{
				"label": "Goods Delivered",
				"name": "D_Goods"
			}
		]
	} );

	var table = $('#GUBOX').DataTable( {
		dom: 'Bfrtip',
		ajax: 'php/table.GUBOX.php',
		columns: [
			{
				"data": "D_Trans_No"
			},
			{
				"data": "D_Goods"
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

