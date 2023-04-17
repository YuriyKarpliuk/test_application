import 'package:flutter/material.dart';
import 'package:test_application/color_container.dart';

///program main method that call runApp method to run program
void main() {
  runApp(const Main());
}

///Our program main class.
class Main extends StatelessWidget {
  ///Constructor to initialize current class fields.
  const Main({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Test App',
      home: ColorContainer(),
    );
  }
}
