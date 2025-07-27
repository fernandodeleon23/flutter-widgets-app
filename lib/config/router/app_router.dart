import 'package:go_router/go_router.dart';
import 'package:widgets_app/presentation/screens/screens.dart';

// GoRouter configuration
final appRouter = GoRouter(
    routes: [

        GoRoute(
			name: HomeScreen.name,
            path: '/',
            builder: (context, state) => HomeScreen(),
        ),

		GoRoute(
			name: ButtonsScreen.name,
            path: '/buttons',
            builder: (context, state) => ButtonsScreen(),
        ),

		GoRoute(
			name: CardsScreen.name,
            path: '/cards',
            builder: (context, state) => CardsScreen(),
        ),

		GoRoute(
			name: ProgressScreen.name,
            path: '/progress',
            builder: (context, state) => ProgressScreen(),
        ),

		GoRoute(
			name: SnackbarScreen.name,
            path: '/snackbars',
            builder: (context, state) => SnackbarScreen(),
        ),

		GoRoute(
			name: AnimatedScreen.name,
            path: '/animated',
            builder: (context, state) => AnimatedScreen(),
        ),

		GoRoute(
			name: UiControlsScreen.name,
            path: '/ui-controls',
            builder: (context, state) => UiControlsScreen(),
        ),

		GoRoute(
			name: AppTutorialScreen.name,
            path: '/tutorial',
            builder: (context, state) => AppTutorialScreen(),
        ),

		GoRoute(
			name: InfiniteScrollScreen.name,
            path: '/infinite-scroll',
            builder: (context, state) => InfiniteScrollScreen(),
        ),

		GoRoute(
			name: CounterScreen.name,
            path: '/counter_screen',
            builder: (context, state) => CounterScreen(),
        ),

		GoRoute(
			name: ThemeChangerScreen.name,
            path: '/theme_changer',
            builder: (context, state) => ThemeChangerScreen(),
        )
    ],
);