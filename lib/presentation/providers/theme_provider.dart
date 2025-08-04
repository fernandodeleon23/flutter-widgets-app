
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:widgets_app/config/theme/app_theme.dart';

// Lista de colors inmutable
final colorListProvider = Provider( (ref) => colorList );

// Un simple booleano
final StateProvider<bool> isDarkModeProvider = StateProvider( ( ref ) => false );

// Un simple entero
final selectedColorProvider = StateProvider( (ref) => 0 );

// Objeto de tipo AppTheme
final themeNotifierProvider = StateNotifierProvider<ThemeNotifier, AppTheme>(
	(ref)=> ThemeNotifier(),
);


// Controller o Notifier
class ThemeNotifier extends StateNotifier<AppTheme>{

	// State será igual a una nueva instancia de AppTheme
	ThemeNotifier(): super( AppTheme() );

	void toggleDarkMode(){

		state = state.copyWith( isDarkMode: !state.isDarkMode );
	}

	void changeColorIndex( int colorIndex ){

		state = state.copyWith( selectedColor: colorIndex  );
	}

}