import 'dart:math';
import 'package:flutter/material.dart';

///constant that stores instance of Random class
final randomizer = Random();

///constant that stores maximum color range value
const colorMaxRangeValue = 256;

///Class that stores color utils.
class ColorUtils {
  ///static method to generate random color
  static Color generateRandomColor() {
    return Color.fromRGBO(
      randomizer.nextInt(colorMaxRangeValue),
      randomizer.nextInt(colorMaxRangeValue),
      randomizer.nextInt(colorMaxRangeValue),
      1.0,
    );
  }
}
