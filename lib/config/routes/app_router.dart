
import 'package:covenantmoneyh/presentation/screens/screens.dart';
import 'package:go_router/go_router.dart';


final appRouter = GoRouter(
  initialLocation: "/",
  routes: [
    GoRoute(
      path: "/",
      builder: (context, state) => const HomeScreen(),
    ),

    GoRoute(
      path: "/covenant_ATM",
      builder: (context, state) =>  CovenantATMScreen(),
    ),
  ],
);