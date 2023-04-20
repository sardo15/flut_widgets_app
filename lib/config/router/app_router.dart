import 'package:go_router/go_router.dart';
import 'package:widgets_app/config/presentations/screens/buttons/buttons_screen.dart';
import 'package:widgets_app/config/presentations/screens/cards/cards_screen.dart';
import 'package:widgets_app/config/presentations/screens/home/home_screen.dart';


//GoRouter Configuration
final appRouter = GoRouter(
  routes: [
    GoRoute(path: '/', name: HomeScreen.name, builder: (context,state) => const HomeScreen(),),
    
    GoRoute(path: '/buttons', name: ButtonsScreen.name, builder: (context, state) => const ButtonsScreen(),),
    
    GoRoute(path: '/cards', name: CardsScreen.name, builder: (context, state) => const CardsScreen(),),

  ]
);