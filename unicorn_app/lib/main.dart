import 'package:flutter/material.dart';
import 'package:unicorn_app/config/app_router.dart';
import 'package:unicorn_app/config/theme.dart';
import 'package:unicorn_app/screens/screens.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Krist',
      theme: theme(),
      onGenerateRoute: AppRouter.onGenerateRoute,
      initialRoute: HomePage.routeName,
      home: const HomePage(),
    );
  }
}
