import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:widgets_app/config/router/app_router.dart';
import 'package:widgets_app/config/theme/app_theme.dart';
import 'package:widgets_app/presentation/providers/theme_provider.dart';

void main() {

	runApp(

		const ProviderScope(
			child: MainApp()
		)
	);
}

class MainApp extends ConsumerWidget {

    const MainApp({super.key});

    @override
    Widget build(BuildContext context, WidgetRef ref) {

		final selectedColor = ref.watch( selectedColorProvider );
		final isDarkMode = ref.watch( isDarkModeProvider );

        return MaterialApp.router(

			title: 'Flutter Widgets',

			routerConfig: appRouter,

			debugShowCheckedModeBanner: false,

			theme: AppTheme( selectedColor: selectedColor, isDarkMode: isDarkMode ).getTheme()

        );
    }
}
