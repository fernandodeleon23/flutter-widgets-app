import 'dart:math';
import 'package:flutter/material.dart';

class AnimatedScreen extends StatefulWidget {

    static const name = 'animated_screen';

    const AnimatedScreen({super.key});

    @override
    State<AnimatedScreen> createState() => _AnimatedScreenState();
}

class _AnimatedScreenState extends State<AnimatedScreen> {

	double width  = 150;
	double height = 500;
	Color color = Colors.blue;
	double borderRadius = 10.0;

	void changeShape(){

		final random = Random();

		width = random.nextInt( 300 ) + 120;
		height = random.nextInt( 500 ) + 120;
		borderRadius = random.nextInt( 50 ) + 20;

		color = Color.fromRGBO(
			random.nextInt( 255 ),
			random.nextInt( 255 ),
			random.nextInt( 255 ),
			1
		);

		setState((){});

	}

    @override
    Widget build(BuildContext context) {

        return Scaffold(

            appBar: AppBar(
                title: const Text('Animated Container'),
            ),

            body: Center(
                child: AnimatedContainer(
                    duration: const Duration( milliseconds: 400 ),
                    curve: Curves.easeInBack,
                    decoration: BoxDecoration(
                        color: color,
                        borderRadius: BorderRadius.circular( borderRadius < 0 ? 0 : borderRadius )
                    ),
                    width: width <= 0 ? 0 : width,
                    height: height <= 0 ? 0 : height,
                ),
            ),

            floatingActionButton: FloatingActionButton(
                onPressed: () => changeShape(),
                child: const Icon(Icons.play_arrow_rounded),
            ),

        );
    }
}