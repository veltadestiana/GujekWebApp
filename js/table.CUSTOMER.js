
/*
 * Editor client script for DB table EMPLOYEE
 * Created by http://editor.datatables.net/generator
 */

(function($){

$(document).ready(function() {
	var editor = new $.fn.dataTable.Editor( {
		ajax: 'php/table.CUSTOMER.php',
		table: '#CUSTOMER',
		fields: [
			{
				"label": "Customer ID",
				"name": "ID_Customer"
			},
			{
				"label": "Full Name",
				"name": "Name_Customer"
			},
			{
				"label": "Email Address",
				"name": "Email_Customer"
			},
			{
				"label": "Username",
				"name": "Uname_Customer"
			},
			{
				"label": "Password",
				"name": "PassW_Customer"
			},
			{
				"label": "Phone No.",
				"name": "Phone_Customer"
			}
		]
	} );

	var table = $('#CUSTOMER').DataTable( {
		dom: 'Bfrtip',
		ajax: 'php/table.CUSTOMER.php',
		columns: [
			{
				"data": "ID_Customer"
			},
			{
				"data": "Name_Customer"
			},
			{
				"data": "Email_Customer"
			},
			{
				"data": "Uname_Customer"
			},
			{
				"data": "PassW_Customer"
			},
			{
				"data": "Phone_Customer"
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

