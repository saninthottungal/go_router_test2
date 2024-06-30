import 'package:flutter/material.dart';
import 'package:go_route_test2/pages/home/home_page.dart';

void main() {
  runApp(
    const MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        appBarTheme: const AppBarTheme(
          color: Colors.red,
          centerTitle: true,
          titleTextStyle: TextStyle(color: Colors.white),
        ),
        useMaterial3: true,
      ),
      home: const HomePage(),
    );
  }
}
