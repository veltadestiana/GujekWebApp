
/*
 * Editor client script for DB table EMPLOYEE
 * Created by http://editor.datatables.net/generator
 */

(function($){

$(document).ready(function() {
	var editor = new $.fn.dataTable.Editor( {
		ajax: 'php/table.VEHICLE.php',
		table: '#VEHICLE',
		fields: [
			{
				"label": "License Plate",
				"name": "License_Plate"
			},
			{
				"label": "Driver ID",
				"name": "Driver_ID"
			},
			{
				"label": "Type",
				"name": "Veh_Type"
			},
			{
				"label": "Years",
				"name": "Veh_Years"
			}
		]
	} );

	var table = $('#VEHICLE').DataTable( {
		dom: 'Bfrtip',
		ajax: 'php/table.VEHICLE.php',
		columns: [
			{
				"data": "License_Plate"
			},
			{
				"data": "Driver_ID"
			},
			{
				"data": "Veh_Type"
			},
			{
				"data": "Veh_Years"
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

