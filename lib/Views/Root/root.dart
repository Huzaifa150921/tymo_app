import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tymo_app/Controller/UserController/usercontroller.dart';
import 'package:tymo_app/Views/Auth/Login.dart';
import 'package:tymo_app/Views/Homepage/homepage.dart';
import 'package:tymo_app/Views/Widgets/Auth/splash.dart';
import 'package:tymo_app/Views/invitation/invite_friend.dart';
import 'package:tymo_app/Views/profile/profile_setup.dart';

enum AuthStatus {
  firstTime,
  authanticating,
  notLogedin,
  logedinHome,
  noProfile,
  noFriend
}

class Root extends StatelessWidget {
  const Root({super.key});
  @override
  Widget build(BuildContext context) {
    AuthStatus authstatus = AuthStatus.authanticating;
    UserController userController =
        Provider.of<UserController>(context, listen: true);

    return FutureBuilder(
        future: null,
        builder: (context, snapshot) {
          if (userController.curruser.uid == null) {
            authstatus = AuthStatus.notLogedin;
          }
          if (userController.curruser.uid != null) {
            if (userController.curruser.displayname == null) {
              authstatus = AuthStatus.noProfile;
            }
            if (userController.curruser.displayname != null &&
                userController.curruser.friendid == null) {
              authstatus = AuthStatus.noFriend;
            }
            if (userController.curruser.displayname != null &&
                userController.curruser.friendid != null) {
              authstatus = AuthStatus.logedinHome;
            }
          }
          switch (authstatus) {
            case AuthStatus.authanticating:
              return Splash();
            case AuthStatus.noProfile:
              return ProfileSetup();
            case AuthStatus.notLogedin:
              return Login();
            case AuthStatus.noFriend:
              return InviteFriend();
            case AuthStatus.logedinHome:
              return Homepage();
            case AuthStatus.firstTime:
              return Container();

            default:
              return Login();
          }
        });
  }
}
