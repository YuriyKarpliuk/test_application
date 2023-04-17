import 'package:flutter/material.dart';
import 'package:test_application/color_utils.dart';
import 'package:test_application/styled_text.dart';

///Class for creating ColorContainer.
class ColorContainer extends StatefulWidget {
  ///Constructor to initialize current class fields.
  const ColorContainer({super.key});

  @override
  State<ColorContainer> createState() => _ColorContainerState();
}

class _ColorContainerState extends State<ColorContainer> {
  ///setting initial background color value
  Color backgroundColor = Colors.yellow;

  ///function to changeBackground color
  void _changeBackGroundColor() {
    setState(() {
      backgroundColor = ColorUtils.generateRandomColor();
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _changeBackGroundColor,
      child: Scaffold(
        backgroundColor: backgroundColor,
        body: const Center(
          child: StyledText('Hello there'),
        ),
      ),
    );
  }
}
