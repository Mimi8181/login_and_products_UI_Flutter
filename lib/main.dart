import 'package:flutter/material.dart';
import 'login.dart';
import 'menu.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/login': (context) => const Login(),
        '/menu': (context) => Menu()
      },
      title: 'Routing',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color.fromARGB(222, 111, 333, 0)
        ),
        useMaterial3: true
      ),
      home: const Login(),
    );
  }
}





