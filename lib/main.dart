import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'models.dart';
import 'pages/login_page.dart';
import 'pages/details_page.dart';
import 'pages/home_page.dart';

void main() => runApp(MultiProvider(
  providers: [
    ChangeNotifierProvider(builder: (context) => UserModel()),
    ChangeNotifierProvider(builder: (context) => ColorModel()),
  ],
  child: MyApp(),
));

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Provider Demo',
      home: SafeArea(child: LoginPage()),
      routes: {
        '/home': (context) => HomePage(),
        '/details': (context) => DetailsPage(),
      },
    );
  }
}
