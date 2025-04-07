import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tymo_app/Controller/UserController/usercontroller.dart';
import 'package:tymo_app/Views/Root/root.dart';
import 'package:tymo_app/Views/Widgets/Auth/splash_oader_animation.dart';

class Splash extends StatelessWidget {
  UserController curr = UserController();
  Splash({super.key});

  @override
  Widget build(BuildContext context) {
    curr = Provider.of<UserController>(context, listen: false);
    if (curr.curruser.uid == null) {
      return FutureBuilder(
        future: UserController().signinuserdata(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return Root();
          } else {
            return SplashOaderAnimation();
          }
        },
      );
    } else {
      return Root();
    }
  }
}
