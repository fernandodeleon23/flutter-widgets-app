import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:widgets_app/presentation/providers/theme_provider.dart';

class ThemeChangerScreen extends ConsumerWidget {

    static const name = 'theme_changer';

    const ThemeChangerScreen({super.key});

    @override
    Widget build(BuildContext context, WidgetRef ref) {

        final bool isDarkMode = ref.watch(isDarkModeProvider);

        return Scaffold(

            appBar: AppBar(
                title: Text('Theme Changer'),
                centerTitle: false,
                actions: [

                    IconButton(
                        icon: Icon(isDarkMode ? Icons.light_mode_outlined : Icons.dark_mode_outlined),
						onPressed: () {

                            ref.read(isDarkModeProvider.notifier).update((state) => !state);
                        },
                    )
                ],
            ),

            body: _ThemeChangerView(),
        );
    }
}

class _ThemeChangerView extends ConsumerWidget {

    @override
    Widget build(BuildContext context, WidgetRef ref) {

		final List<Color> colors = ref.watch( colorListProvider );
		final int selectedColor = ref.watch( selectedColorProvider );

        return ListView.builder(
			itemCount: colors.length,
			itemBuilder: (context, index){

				final color = colors[index];

				return RadioListTile(
					title: Text( 'Este color', style: TextStyle( color: color ), ),
					subtitle: Text('${ color.r }'),
					activeColor: color,
					value: index,
					groupValue: selectedColor,
					onChanged: (value){

						// Notificar el cambio

						ref.read( selectedColorProvider.notifier ).state = index;
					}
				);

			}
		);

    }
}