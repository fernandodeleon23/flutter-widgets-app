import 'package:flutter/material.dart';

class UiControlsScreen extends StatelessWidget {

    static const name = 'ui_controls_screen';

    const UiControlsScreen({super.key});

    @override
    Widget build(BuildContext context) {

        return Scaffold(

            appBar: AppBar(
                title: const Text('UI Controls'),
            ),
            body: const _UiControlsView(),
        );
    }
}

class _UiControlsView extends StatefulWidget {

    const _UiControlsView();

    @override
    State<_UiControlsView> createState() => _UiControlsViewState();
}

enum Transportation { car, plane, boat, submarine }

class _UiControlsViewState extends State<_UiControlsView> {

    bool isDeveloper = true;
    Transportation selectedTransportation = Transportation.car;
	bool wantsBreakfast = false;
	bool wantsLunch = false;
	bool wantsDiner = false;

    @override
    Widget build(BuildContext context) {
        return ListView(
            physics: const ClampingScrollPhysics(),
            children: [

                SwitchListTile(
                    title: Text('Developer mode'),
                    subtitle: Text('Controles adicionales'),
                    value: isDeveloper,
                    onChanged: (value) => setState(() {
                            isDeveloper = !isDeveloper;
                        })
                ),

                ExpansionTile(
                    title: const Text('Vehíulo de transporte'),
                    subtitle: Text('$selectedTransportation'),
                    children: [

                        RadioListTile(
                            title: const Text('By Car'),
                            subtitle: const Text('Viajar por carro'),
                            value: Transportation.car,
                            groupValue: selectedTransportation,
                            onChanged: (value) => setState(() {
                                selectedTransportation = Transportation.car;
                            }),
                        ),

                        RadioListTile(
                            title: const Text('By Boat'),
                            subtitle: const Text('Viajar en bote'),
                            value: Transportation.boat,
                            groupValue: selectedTransportation,
                            onChanged: (value) => setState(() {
                                selectedTransportation = Transportation.boat;
                            }),
                        ),

                        RadioListTile(
                            title: const Text('By Plane'),
                            subtitle: const Text('Viajar en avión'),
                            value: Transportation.plane,
                            groupValue: selectedTransportation,
                            onChanged: (value) => setState(() {
                                selectedTransportation = Transportation.plane;
                            }),
                        ),

                        RadioListTile(
                            title: const Text('By Submarine'),
                            subtitle: const Text('Viajar por submarino'),
                            value: Transportation.submarine,
                            groupValue: selectedTransportation,
                            onChanged: (value) => setState(() {
                                selectedTransportation = Transportation.submarine;
                            }),
                        )
                    ],
                ),

				CheckboxListTile(
					title: const Text('¿Quiere desayuno?'),
					value: wantsBreakfast,
					onChanged: (value) => setState(() {
						wantsBreakfast = !wantsBreakfast;
					})
				),

				CheckboxListTile(
					title: const Text('¿Quiere almuerzo?'),
					value: wantsLunch,
					onChanged: (value) => setState(() {
						wantsLunch = !wantsLunch;
					})
				),

				CheckboxListTile(
					title: const Text('¿Quiere cena?'),
					value: wantsDiner,
					onChanged: (value) => setState(() {
						wantsDiner = !wantsDiner;
					})
				)

            ],
        );
    }
}