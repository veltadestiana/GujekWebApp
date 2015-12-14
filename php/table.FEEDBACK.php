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
Editor::inst( $db, 'APP_FEEDBACK', 'Customer_ID' )
	->fields(	
		Field::inst( 'Customer_ID' ),
		Field::inst( 'App_Version' ),
		Field::inst( 'Date_Feedback' ),
		Field::inst( 'Rating_Feedback' ),
		Field::inst( 'Comment_Feedback' )
	)
	->process( $_POST )
	->json();