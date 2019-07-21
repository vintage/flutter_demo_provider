import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'color_slider.dart';
import '../models.dart';

class RGBSlider extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<ColorModel>(
      builder: (context, color, _) {
        return Column(
          children: [
            ColorSlider(label: "Red", color: Colors.red, value: color.red, onChanged: (value) => color.red = value),
            ColorSlider(label: "Green", color: Colors.green, value: color.green, onChanged: (value) => color.green = value),
            ColorSlider(label: "Blue", color: Colors.blue, value: color.blue, onChanged: (value) => color.blue = value),
          ],
        );
      },
    );
  }
}
