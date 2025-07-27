
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:widgets_app/config/theme/app_theme.dart';

// Lista de colors inmutable
final colorListProvider = Provider( (ref) => colorList );

// Un simple booleano
final StateProvider<bool> isDarkModeProvider = StateProvider( ( ref ) => false );

// Un simple entero
final selectedColorProvider = StateProvider( (ref) => 0 );