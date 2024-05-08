import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_simple_example/provider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final userProvider = Provider.of<UserProvider>(context);
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Foydalanuvchi nomi = ${userProvider.user.name}'),
            Text('Foydalanuvchi yoshi = ${userProvider.user.age}'),
            ElevatedButton(
              onPressed: () {
                userProvider.updateUser('Zokir', 22);
              },
              child: const Text('Ma\'lumotlarni Yangilash'),
            ),
          ],
        ),
      ),
    );
  }
}
