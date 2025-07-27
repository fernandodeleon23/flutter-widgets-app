
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:widgets_app/presentation/providers/counter_provider.dart';
import 'package:widgets_app/presentation/providers/theme_provider.dart';

class CounterScreen extends ConsumerWidget {

	static const name = 'counter_screen';

    const CounterScreen({super.key});

    @override
    Widget build(BuildContext context, WidgetRef ref) {

		final int clickCounter = ref.watch( counterProvider );
		final bool isDarkMode = ref.watch( isDarkModeProvider );

        return Scaffold(

			appBar: AppBar(
				title: const Text('Counter Screen'),
				centerTitle: false,
				actions: [

					IconButton(
						onPressed: (){

							ref.read( isDarkModeProvider.notifier ).update( (state)=> !state );
						},
						icon: Icon( isDarkMode ? Icons.light_mode_outlined : Icons.dark_mode_outlined )
					)
				],
			),

			body: Center(
				child: Text(
					'Valor: $clickCounter',
					style: TextStyle(
						fontSize: 25
					),
				),
			),

			floatingActionButton: FloatingActionButton(
				onPressed: (){

					ref.read( counterProvider.notifier ).state++;

					//ref.read( counterProvider.notifier ).update( (state)=> state + 2 );

				},
				child: const Icon( Icons.add ),
			),

		);
    }
}