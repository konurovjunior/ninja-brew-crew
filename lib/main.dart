import 'package:flutter/material.dart';
import 'package:ninja_brew_crew/screens/wrapper.dart';
import 'package:ninja_brew_crew/services/auth.dart';
import 'package:provider/provider.dart';
import 'package:ninja_brew_crew/models/user.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return StreamProvider<User>.value(
      initialData: null,
      value: AuthService().user,
      child: MaterialApp(
        home: Wrapper(),
      ),
    );
  }
}