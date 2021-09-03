import 'package:flutter/material.dart';
import 'package:sormedic/ui/components/login_component.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SingleChildScrollView(
          child: SafeArea(
            child: LoginComponent(),
          ),
        ),
      ),
    );
  }
}
