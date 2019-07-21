import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../models.dart';

class LoginPage extends StatelessWidget {
  final controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
          child: Container(
            width: 150,
            child: TextField(controller: controller),
          ),
      ),
          RaisedButton(
            child: Text("Login"),
            onPressed: () {
              Provider.of<UserModel>(context).name = controller.text;
              Navigator.pushNamed(context, "/home");
            },
          ),
        ],
      ),
    );
  }
}
