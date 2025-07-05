import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ButtonsScreen extends StatelessWidget {

    static const String name = 'buttons_screen';

    const ButtonsScreen({super.key});

    @override
    Widget build(BuildContext context) {

        return Scaffold(

            appBar: AppBar(
                title: Text('Botones'),
            ),

            body: _ButtonsView(),

            floatingActionButton: FloatingActionButton(
                onPressed: () {
                    context.pop();
                },
                child: Icon(Icons.arrow_back),
            ),

        );
    }
}

class _ButtonsView extends StatelessWidget {

    @override
    Widget build(BuildContext context) {

        final colors = Theme.of(context).colorScheme;

        return SizedBox(

            width: double.infinity,
            child: Padding(

                padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),

                child: Wrap(

                    alignment: WrapAlignment.center,
                    spacing: 10,
                    children: [

                        ElevatedButton(
                            onPressed: () {},
                            child: const Text('Elevated button')
                        ),

                        const ElevatedButton(
                            onPressed: null,
                            child: Text('Elevated disabled')
                        ),

                        ElevatedButton.icon(
                            onPressed: () {},
                            icon: Icon(Icons.access_alarm_rounded),
                            label: Text('Elevated icon'),
                        ),

                        FilledButton(
                            onPressed: () {},
                            child: const Text('Filled')
                        ),

                        FilledButton.icon(
                            onPressed: () {},
                            icon: Icon(Icons.accessibility_new),
                            label: Text('Filled icon'),
                        ),

                        OutlinedButton(
                            onPressed: () {},
                            child: const Text('Outlined')
                        ),

                        OutlinedButton.icon(
                            onPressed: () {},
                            icon: Icon(Icons.radio),
                            label: Text('Radio'),
                        ),

                        TextButton(
                            onPressed: () {},
                            child: const Text('Text')
                        ),

                        TextButton.icon(
                            onPressed: () {},
                            icon: Icon(Icons.camera),
                            label: const Text('Text'),
                        ),

                        // Todo
                        // Custom button
                        const CustomButton(),

                        IconButton(
                            onPressed: () {},
                            icon: Icon(Icons.save)
                        ),

                        IconButton(
                            onPressed: () {},
                            icon: Icon(Icons.cloud),
                            style: ButtonStyle(
                                backgroundColor: WidgetStatePropertyAll(colors.primary),
                                iconColor: WidgetStatePropertyAll(Colors.white)
                            ),
                        )
                    ],
                ),
            ),
        );
    }
}

class CustomButton extends StatelessWidget {

    const CustomButton({super.key});

    @override
    Widget build(BuildContext context) {

        final colors = Theme.of(context).colorScheme;

        return ClipRRect(
			
			borderRadius: BorderRadius.circular(20),

            child: Material(

                color: colors.primary,

                child: InkWell( // Efecto splash

                    onTap: () {},
                    child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                        child: Text(
                            'Hola mundo',
                            style: TextStyle(
                                color: Colors.white
                            ),
                        ),
                    ),
                ),

            ),
        );
    }
}