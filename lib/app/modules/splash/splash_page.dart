import 'package:flutter/material.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Splash'),
      ),
      body: Center(
        child: ElevatedButton(
            onPressed: () => Navigator.of(context).pushNamed('/login'),
            child: const Text('LOGIN')),
      ),
    );
  }
}
