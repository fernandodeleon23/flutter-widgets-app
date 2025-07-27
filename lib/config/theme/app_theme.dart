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
	final bool isDarkMode;

	AppTheme({
		this.selectedColor = 0,
		this.isDarkMode = false
	}):
		assert( selectedColor >= 0, 'Color must be greater than 0' ),
		assert( selectedColor < colorList.length, 'Color must be less or equal than ${ colorList.length - 1 }' );

	ThemeData getTheme() => ThemeData(

		useMaterial3: true,
		colorSchemeSeed: colorList[selectedColor],
		appBarTheme: AppBarTheme(
			centerTitle: true
		),
		brightness: isDarkMode ? Brightness.dark : Brightness.light
	);
}