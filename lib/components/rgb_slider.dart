import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../models.dart';

class RGBSlider extends StatelessWidget {
  Widget buildSlider(
      {String label, Color color, double value, Function onChanged}) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16),
      child: Column(
        children: [
          Text(label),
          Slider(
            value: value,
            min: 0,
            max: 255,
            onChanged: onChanged,
            activeColor: color,
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<ColorModel>(
      builder: (context, color, _) {
        return Column(
          children: [
            buildSlider(
              label: "Red",
              color: Colors.red,
              value: color.red,
              onChanged: (value) => color.red = value,
            ),
            buildSlider(
              label: "Green",
              color: Colors.green,
              value: color.green,
              onChanged: (value) => color.green = value,
            ),
            buildSlider(
              label: "Blue",
              color: Colors.blue,
              value: color.blue,
              onChanged: (value) => color.blue = value,
            ),
          ],
        );
      },
    );
  }
}
