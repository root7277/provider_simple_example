import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_simple_example/provider.dart';
import 'package:provider_simple_example/screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => UserProvider(),
      child: const MaterialApp(
        title: 'Provider Bilan Ishlash',
        home: HomeScreen(),
      ),
    );
  }
}
