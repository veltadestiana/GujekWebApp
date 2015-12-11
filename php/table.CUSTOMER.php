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
Editor::inst( $db, 'CUSTOMER', 'ID_Customer' )
	->fields(	
		Field::inst( 'ID_Customer' ),
		Field::inst( 'Name_Customer' ),
		Field::inst( 'Email_Customer' ),
		Field::inst( 'Uname_Customer' ),
		Field::inst( 'PassW_Customer' ),
		Field::inst( 'Phone_Customer' )
	)
	->process( $_POST )
	->json();
