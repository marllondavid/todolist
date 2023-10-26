import 'package:flutter/material.dart';
import 'package:todolist/app/core/ui/theme_extension.dart';

class TodoListLogo extends StatelessWidget {
  const TodoListLogo({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          'assets/logo.png',
          height: 200,
        ),
        Text(
          'To DO List',
          style: context.textTheme.headlineMedium,
        ),
      ],
    );
  }
}
