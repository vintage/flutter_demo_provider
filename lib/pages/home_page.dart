import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../models.dart';
import '../components/rgb_slider.dart';
import '../components/rgb_preview.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(Provider.of<UserModel>(context).name)),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          RGBSlider(),
          RaisedButton(
            child: Text("Randomize"),
            onPressed: () {
              Provider.of<ColorModel>(context).randomize();
            },
          ),
          Expanded(
            child: GestureDetector(
              child: RGBPreview(),
              onTap: () {
                Navigator.pushNamed(context, "/details");
              },
            ),
          )
        ],
      ),
    );
  }
}
