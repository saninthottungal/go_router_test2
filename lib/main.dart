import 'package:flutter/material.dart';
import 'package:go_route_test2/routes/routes.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

void main() {
  final router = GoRouter(routes: $appRoutes);
  runApp(
    ProviderScope(
      child: MyApp(
        router: router,
      ),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key, required this.router});

  final GoRouter router;

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: router,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        appBarTheme: const AppBarTheme(
          color: Colors.blue,
          centerTitle: true,
          titleTextStyle: TextStyle(color: Colors.white),
        ),
        useMaterial3: true,
      ),
    );
  }
}
