
/*
 * Editor client script for DB table EMPLOYEE
 * Created by http://editor.datatables.net/generator
 */

(function($){

$(document).ready(function() {
	var editor = new $.fn.dataTable.Editor( {
		ajax: 'php/table.EMPLOYEE.php',
		table: '#EMPLOYEE',
		fields: [
			{
				"label": "Employee ID",
				"name": "ID_Empl"
			},
			{
				"label": "Supervisor ID",
				"name": "Super_ID"
			},
			{
				"label": "Full Name",
				"name": "Name_Empl"
			},
			{
				"label": "Date Of Birth",
				"name": "DoB_Empl"
			},
			{
				"label": "Gender",
				"name": "Gender_Empl",
				"type": "radio",
				"options": [
					"M",
					"F"
				]
			},
			{
				"label": "Address",
				"name": "Address_Empl"
			},
			{
				"label": "Phone No.",
				"name": "Phone_Empl"
			}
		]
	} );

	var table = $('#EMPLOYEE').DataTable( {
		dom: 'Bfrtip',
		ajax: 'php/table.EMPLOYEE.php',
		columns: [
			{
				"data": "ID_Empl"
			},
			{
				"data": "Super_ID"
			},
			{
				"data": "Name_Empl"
			},
			{
				"data": "DoB_Empl"
			},
			{
				"data": "Gender_Empl"
			},
			{
				"data": "Address_Empl"
			},
			{
				"data": "Phone_Empl"
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





