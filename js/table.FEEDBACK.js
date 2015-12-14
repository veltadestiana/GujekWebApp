
/*
 * Editor client script for DB table EMPLOYEE
 * Created by http://editor.datatables.net/generator
 */

(function($){

$(document).ready(function() {
	var editor = new $.fn.dataTable.Editor( {
		ajax: 'php/table.FEEDBACK.php',
		table: '#APP_FEEDBACK',
		fields: [
			{
				"label": "Customer ID",
				"name": "Customer_ID"
			},
			{
				"label": "App Version",
				"name": "App_Version"
			},
			{
				"label": "Date",
				"name": "Date_Feedback"
			},
			{
				"label": "Time of Transaction",
				"name": "Rating_Feedback"
			},
			{
				"label": "Feedbacks",
				"name": "Comment_Feedback"
			}
		]
	} );

	var table = $('#FEEDBACK').DataTable( {
		dom: 'Bfrtip',
		ajax: 'php/table.FEEDBACK.php',
		columns: [
			{
				"data": "Customer_ID"
			},
			{
				"data": "App_Version"
			},
			{
				"data": "Date_Feedback"
			},
			{
				"data": "Rating_Feedback"
			},
			{
				"data": "Comment_Feedback"
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

