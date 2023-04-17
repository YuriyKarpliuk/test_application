import 'package:flutter/material.dart';

///Class for creating StatelessWidget of Texxt.
class StyledText extends StatelessWidget {
  final String _text;

  ///Constructor to initialize current class fields.
  const StyledText(this._text, {super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      _text,
      style: const TextStyle(fontSize: 20, color: Colors.black87),
    );
  }
}
