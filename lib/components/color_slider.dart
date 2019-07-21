import 'package:flutter/material.dart';

class ColorSlider extends StatelessWidget {
  ColorSlider({
    Key key,
    this.label,
    this.value,
    this.onChanged,
    this.color,
  }) : super(key: key);

  final String label;
  final double value;
  final Function onChanged;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16),
      child: Column(
        children: [
          Text(label),
          Slider(value: value, min: 0, max: 255, onChanged: onChanged, activeColor: color),
        ],
      ),
    );
  }
}
