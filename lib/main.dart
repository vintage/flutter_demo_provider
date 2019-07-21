import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'models.dart';
import 'pages/details_page.dart';
import 'pages/home_page.dart';

void main() => runApp(ChangeNotifierProvider(
  builder: (context) => ColorModel(),
  child: MyApp(),
));

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Provider Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: SafeArea(child: HomePage()),
      routes: {
        '/details': (context) => DetailsPage(),
      },
    );
  }
}
