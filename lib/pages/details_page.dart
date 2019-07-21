import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../models.dart';
import '../components/rgb_preview.dart';

class DetailsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(Provider.of<UserModel>(context).name)),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Consumer<ColorModel>(
            builder: (context, color, _) {
              return Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("R: ${color.red.round()} | "),
                  Text("G: ${color.green.round()} | "),
                  Text("B: ${color.blue.round()}"),
                ],
              );
            },
          ),
          GestureDetector(
            child: RGBPreview(),
            onTap: () {
              Navigator.pop(context);
            },
          )
        ],
      ),
    );
  }
}
