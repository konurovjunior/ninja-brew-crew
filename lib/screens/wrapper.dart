import 'package:flutter/material.dart';
import 'package:ninja_brew_crew/screens/authenticate/authenticate.dart';
import 'package:ninja_brew_crew/screens/home/home.dart';
import 'package:provider/provider.dart';
import 'package:ninja_brew_crew/models/user.dart';

class Wrapper extends StatelessWidget {
  const Wrapper({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final user = Provider.of<User>(context);

    //return Home or Authentication widget
    if (user == null) {
      return Authenticate();
    } else {
      return Home();
    }
  }
}
