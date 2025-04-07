import 'package:flutter/material.dart';
import 'package:tymo_app/Controller/UserController/usercontroller.dart';

class RegisterServices {
  final TextEditingController emailcontroller = TextEditingController();
  final TextEditingController passwordcontroller = TextEditingController();
  final TextEditingController confirmpasswordcontroler =
      TextEditingController();

  UserController currentuser = UserController();
}
