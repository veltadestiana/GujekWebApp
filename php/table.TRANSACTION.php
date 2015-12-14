<?php

/*
 * Editor server script for DB table EMPLOYEE
 * Created by http://editor.datatables.net/generator
 */

// DataTables PHP library and database connection
include( "lib/DataTables.php" );

// Alias Editor classes so they are easy to use
use
	DataTables\Editor,
	DataTables\Editor\Field,
	DataTables\Editor\Format,
	DataTables\Editor\Mjoin,
	DataTables\Editor\Upload,
	DataTables\Editor\Validate;


// Build our Editor instance and process the data coming from _POST
Editor::inst( $db, 'TRANSACTION', 'No_Transaction' )
	->fields(	
		Field::inst( 'No_Transaction' ),
		Field::inst( 'Driver_ID' ),
		Field::inst( 'Customer_ID' ),
		Field::inst( 'Time_Transaction' )
	)
	->process( $_POST )
	->json();