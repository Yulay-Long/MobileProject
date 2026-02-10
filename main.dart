import 'package:flutter/material.dart';
import 'screens/login_screen.dart';
import 'screens/checkout_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final colorScheme = ColorScheme.fromSeed(
      seedColor: const Color(0xFF23194F),
    );

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Shop App',
      theme: ThemeData(
        useMaterial3: false,
        colorScheme: colorScheme,
        appBarTheme: AppBarTheme(
          backgroundColor: const Color(0xFFDDFEF8),
          foregroundColor: const Color(0xFF23194F),
        ),
      ),
      routes: {CheckoutScreen.routeName: (_) => const CheckoutScreen()},
      home: const LoginScreen(),
    );
  }
}
