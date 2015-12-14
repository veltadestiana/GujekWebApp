
/*
 * Editor client script for DB table EMPLOYEE
 * Created by http://editor.datatables.net/generator
 */

(function($){

$(document).ready(function() {
	var editor = new $.fn.dataTable.Editor( {
		ajax: 'php/table.RESTAURANT.php',
		table: '#RESTAURANT',
		fields: [
			{
				"label": "Restaurant Name",
				"name": "Name_Restaurant"
			},
			{
				"label": "Menu",
				"name": "Menu_Restaurant"
			},
			{
				"label": "Price",
				"name": "Price_Restaurant"
			},
			{
				"label": "Address",
				"name": "Address_Restaurant"
			},
			{
				"label": "Phone No.",
				"name": "Phone_Restaurant"
			}
		]
	} );

	var table = $('#RESTAURANT').DataTable( {
		dom: 'Bfrtip',
		ajax: 'php/table.RESTAURANT.php',
		columns: [
			{
				"data": "Name_Restaurant"
			},
			{
				"data": "Menu_Restaurant"
			},
			{
				"data": "Price_Restaurant"
			},
			{
				"data": "Address_Restaurant"
			},
			{
				"data": "Phone_Restaurant"
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

