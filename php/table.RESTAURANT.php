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
Editor::inst( $db, 'RESTAURANT', 'Name_Restaurant' )
	->fields(	
		Field::inst( 'Name_Restaurant' ),
		Field::inst( 'Menu_Restaurant' ),
		Field::inst( 'Price_Restaurant' ),
		Field::inst( 'Address_Restaurant' ),
		Field::inst( 'Phone_Restaurant' )
	)
	->process( $_POST )
	->json();

