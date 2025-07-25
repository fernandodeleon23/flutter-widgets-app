import 'package:flutter/material.dart';

const cards = <Map<String, dynamic>>[
{
    'elevation': 0.0,
    'label':'Elevation 0'
},
{
    'elevation': 1.0,
    'label':'Elevation 1'
},
{
    'elevation': 2.0,
    'label':'Elevation 2'
},
{
    'elevation': 3.0,
    'label':'Elevation 3'
},
{
    'elevation': 4.0,
    'label':'Elevation 4'
},
{
    'elevation': 5.0,
    'label':'Elevation 5'
}
];

class CardsScreen extends StatelessWidget {

    static const String name = 'cards_screen';

    const CardsScreen({super.key});

    @override
    Widget build(BuildContext context) {

        return Scaffold(

            appBar: AppBar(
                title: Text('Tarjetas'),
            ),

            body: Center(				
                child: _CardsView(),
            ),

        );
    }
}

class _CardsView extends StatelessWidget {

    @override
    Widget build(BuildContext context) {

        return SingleChildScrollView( // Para poder hacer scroll

            child: Column(

                children: [

                    ...cards.map((card) => _CardType1(label: card['label'], elevation: card['elevation'])),

                    ...cards.map((card) => _CardType2(label: card['label'], elevation: card['elevation'])),

                    ...cards.map((card) => _CardType3(label: card['label'], elevation: card['elevation'])),

                    ...cards.map((card) => _CardType4(label: card['label'], elevation: card['elevation'])),

                    SizedBox(
                        height: 100,
                    )
                ],
            ),
        );
    }
}

class _CardType1 extends StatelessWidget {

    final String label;
    final double elevation;

    const _CardType1({
        required this.label,
        required this.elevation
    });

    @override
    Widget build(BuildContext context) {

        final colors = Theme.of(context).colorScheme;

        return Card(

            shape: RoundedRectangleBorder( // BorderRadius

                borderRadius: const BorderRadius.all(
                    Radius.circular(12)
                ),
                side: BorderSide(
                    color: colors.outline,
                )
            ),

            elevation: elevation,
            child: Padding(
                padding: EdgeInsets.fromLTRB(10, 5, 10, 10),
                child: Column(
                    children: [

                        Align(
                            alignment: Alignment.topRight,
                            child: IconButton(
                                onPressed: () {},
                                icon: Icon(Icons.more_vert_rounded)
                            )
                        ),

                        Align(
                            alignment: Alignment.bottomLeft,
                            child: Text(label),
                        )
                    ],
                ),
            ),
        );
    }
}

class _CardType2 extends StatelessWidget {

    final String label;
    final double elevation;

    const _CardType2({
        required this.label,
        required this.elevation
    });

    @override
    Widget build(BuildContext context) {

        final colors = Theme.of(context).colorScheme;

        return Card(

            shape: RoundedRectangleBorder( // BorderRadius

    /*borderRadius: const BorderRadius.all(
     Radius.circular(12)
    ),*/
                side: BorderSide(
                    color: colors.outline,
                )
            ),

            elevation: elevation,
            child: Padding(
                padding: EdgeInsets.fromLTRB(10, 5, 10, 10),
                child: Column(
                    children: [

                        Align(
                            alignment: Alignment.topRight,
                            child: IconButton(
                                onPressed: () {},
                                icon: Icon(Icons.more_vert_rounded)
                            )
                        ),

                        Align(
                            alignment: Alignment.bottomLeft,
                            child: Text('$label - outline'),
                        )
                    ],
                ),
            ),
        );
    }
}

class _CardType3 extends StatelessWidget {

    final String label;
    final double elevation;

    const _CardType3({
        required this.label,
        required this.elevation
    });

    @override
    Widget build(BuildContext context) {

        final colors = Theme.of(context).colorScheme;

        return Card(

            shape: RoundedRectangleBorder( // BorderRadius

                borderRadius: const BorderRadius.all(
                    Radius.circular(12)
                ),
                side: BorderSide(
                    color: colors.outline,
                )
            ),

            color: colors.surfaceContainerHigh,

            elevation: elevation,
            child: Padding(
                padding: EdgeInsets.fromLTRB(10, 5, 10, 10),
                child: Column(
                    children: [

                        Align(
                            alignment: Alignment.topRight,
                            child: IconButton(
                                onPressed: () {},
                                icon: Icon(Icons.more_vert_rounded)
                            )
                        ),

                        Align(
                            alignment: Alignment.bottomLeft,
                            child: Text('$label - outline'),
                        )
                    ],
                ),
            ),
        );
    }
}

class _CardType4 extends StatelessWidget {

    final String label;
    final double elevation;

    const _CardType4({
        required this.label,
        required this.elevation
    });

    @override
    Widget build(BuildContext context) {

        final colors = Theme.of(context).colorScheme;

        return Card(

            clipBehavior: Clip.hardEdge, // Evitar que los hijos se salgan del padre (overflow-hidden)

            shape: RoundedRectangleBorder( // BorderRadius

                borderRadius: const BorderRadius.all(
                    Radius.circular(12)
                ),
                side: BorderSide(
                    color: colors.outline,
                )
            ),

            color: colors.surfaceContainerHigh,

            elevation: elevation,

            child: Stack( // Para poner items uno encima de otro
                children: [

                    Image.network(
                        'https://picsum.photos/id/${ elevation.toInt() }/600/250',
                        height: 350,
                        fit: BoxFit.cover,
                    ),

                    Align(
                        alignment: Alignment.topRight,
                        child: Container(
                            decoration: BoxDecoration(
								color: Colors.white,
								borderRadius: BorderRadius.only(
									bottomLeft: Radius.circular(8)
								)
							),
                            child: IconButton(
                                onPressed: () {},
                                icon: Icon(Icons.more_vert_rounded)
                            ),
                        )
                    ),
                ],
            ),
        );
    }
}