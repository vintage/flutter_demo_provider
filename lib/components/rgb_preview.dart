import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../models.dart';

class RGBPreview extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<ColorModel>(
      builder: (context, color, _) {
        return Center(
          child: Container(
            width: 200,
            height: 200,
            color: Color.fromRGBO(
              color.red.toInt(),
              color.green.toInt(),
              color.blue.toInt(),
              1,
            ),
          ),
        );
      },
    );
  }
}
