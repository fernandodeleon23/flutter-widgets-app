import 'package:flutter/material.dart';

const colorList = <Color>[
	Colors.blue,
	Colors.teal,
	Colors.green,
	Colors.red,
	Colors.purple,
	Colors.yellow
];

class AppTheme {

	final int selectedColor;

	AppTheme({
		this.selectedColor = 0
	}):
		assert( selectedColor >= 0, 'Color must be greater than 0' ),
		assert( selectedColor < colorList.length, 'Color must be less or equal than ${ colorList.length - 1 }' );

	ThemeData getTheme() => ThemeData(

		useMaterial3: true,
		colorSchemeSeed: colorList[selectedColor],
		appBarTheme: AppBarTheme(
			centerTitle: true
		),
		brightness: Brightness.dark
	);
}