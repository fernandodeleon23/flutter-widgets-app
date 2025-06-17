import 'package:flutter/material.dart';

class ButtonsScreen extends StatelessWidget {

    const ButtonsScreen({super.key});

    @override
    Widget build(BuildContext context) {

        return Scaffold(

			appBar: AppBar(
				title: Text('Botones'),
			),

			body: Center(				
				child: Text('Botones en Flutter'),
			),
			
		);
    }
}