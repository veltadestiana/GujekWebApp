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
Editor::inst( $db, 'VEHICLE', 'License_Plate', 'Driver_ID' )
	->fields(	
		Field::inst( 'License_Plate' ),
		Field::inst( 'Driver_ID' ),
		Field::inst( 'Veh_Type' ),
		Field::inst( 'Veh_Years' )
	)
	->process( $_POST )
	->json();

