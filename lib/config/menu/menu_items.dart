
import 'package:flutter/material.dart';

class MenuItem{

	final String title;
	final String subtitle;
	final String link;
	final IconData icon;

	const MenuItem({
		required this.title,
		required this.subtitle,
		required this.link,
		required this.icon
	});
}

const appMenuItems = <MenuItem>[

	MenuItem(
		title: 'Botones',
		subtitle: 'Varios botones en Flutter',
		link: '/buttons',
		icon: Icons.smart_button_outlined		
	),

	MenuItem(
		title: 'Tarjetas',
		subtitle: 'Un contenedor estilizado',
		link: '/cards',
		icon: Icons.credit_card
	),

	MenuItem(
		title: 'Progress Indicators',
		subtitle: 'Generales y controlados',
		link: '/progress',
		icon: Icons.refresh_rounded
	),

	MenuItem(
		title: 'Snackbars',
		subtitle: 'Snackbars y diálogos',
		link: '/snackbars',
		icon: Icons.info_outline
	),

	MenuItem(
		title: 'Animated Container',
		subtitle: 'Stateful widget animado',
		link: '/animated',
		icon: Icons.animation
	),

	MenuItem(
		title: 'UI Controls',
		subtitle: 'Una serie de controllers de Flutter',
		link: '/ui-controls',
		icon: Icons.car_rental_outlined
	),

	MenuItem(
		title: 'App Tutorial',
		subtitle: 'Introducción a la aplicación',
		link: '/tutorial',
		icon: Icons.accessible_rounded
	),

	MenuItem(
		title: 'Infinite Scroll',
		subtitle: 'Aplicar scroll infinito u pull to refresh',
		link: '/infinite-scroll',
		icon: Icons.list_alt_rounded
	),

	MenuItem(
		title: 'Counter',
		subtitle: 'Introducción a Riverpod',
		link: '/counter_screen',
		icon: Icons.add
	),

	MenuItem(
		title: 'Theme Changer',
		subtitle: 'Cambiar el menu',
		link: '/theme_changer',
		icon: Icons.color_lens_sharp
	)
];