import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SnackbarScreen extends StatelessWidget {

    static const name = 'Snackbar_screen';

    const SnackbarScreen({super.key});

    void showCustomSnackbar(BuildContext context) {

		ScaffoldMessenger.of(context).clearSnackBars();

		final snackbar = SnackBar(
			content: const Text('Hola mundo'),
			duration: Duration( seconds: 2 ),
			action: SnackBarAction(
				label: 'Ok',
				onPressed: (){}
			),
		);

        ScaffoldMessenger.of(context).showSnackBar( snackbar );
    }

	void openDialog( BuildContext context ){

		showDialog(
			context: context,
			barrierDismissible: false, // Para que no pueda cerrar el alert haciendo tap fuera
			builder: (context) => AlertDialog(

				title: const Text('¿Estás seguro?'),
				content: const Text('Lorem ipsum door mesi deq no pat.'),
				actions: [

					TextButton(
						onPressed: () => context.pop(),
						child: const Text('Cancelar'),
					),

					FilledButton(
						onPressed: () => context.pop(),
						child: const Text('Aceptar'),
					)
				],
			),
		);
	}

    @override
    Widget build(BuildContext context) {

        return Scaffold(

            appBar: AppBar(
                title: const Text('Snackbars y diálogos'),
            ),

			body: Center(
				child: Column(

					mainAxisAlignment: MainAxisAlignment.center,

					children: [

						FilledButton.tonal(
							onPressed: (){
								showAboutDialog(
									context: context,
									children: [
										const Text('Lorem ipsum door mesi deq no pat.')
									]
								);
							},
							child: Text('Licencias usadas')
						),

						FilledButton.tonal(
							onPressed: () => openDialog(context),
							child: Text('Mostrar diálogo de pantalla')
						)
					],
				),
			),

            floatingActionButton: FloatingActionButton.extended(

                label: const Text('Mostrar snackbar'),
                icon: const Icon(Icons.remove_red_eye_outlined),
                onPressed: () => showCustomSnackbar( context ),
            )

        );
    }
}